library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.common_pkg.ALL;
use work.game_module_pkg.ALL;

entity message_prep is
    Port (
        -- External I/O
        i_CLK           : in  STD_LOGIC;
        i_RST           : in  STD_LOGIC;
        -- Internal
        i_game_state    : in  UNSIGNED(1 downto 0);
        i_winner        : in  STD_LOGIC;
        i_paddle1_pos   : in  UNSIGNED(7 downto 0);
        i_paddle2_pos   : in  UNSIGNED(7 downto 0);
        i_ball_ypos     : in  UNSIGNED(7 downto 0);
        i_ball_xpos     : in  UNSIGNED(7 downto 0);
        i_paddle_size   : in  UNSIGNED(2 downto 0);
        o_uart_count    : out UNSIGNED(3 downto 0);
        o_uart_send     : out STD_LOGIC;
        i_uart_ready    : in  STD_LOGIC;
        o_uart_buffer   : out STD_LOGIC_VECTOR(79 downto 0)
    );
end message_prep;

architecture Behavioral of message_prep is

    -- Helper functions 
    -- NATURAL to ASCII conversion (Could Optimize with Double Dabble Algorithm)
    function f_hundreds (v : natural) return std_logic_vector is    -- columns hundreds ascii convertions
        variable d : natural;
    begin
        d := (v / 100) mod 10;
        return std_logic_vector(to_unsigned(d + 48, 8));
    end function;

    function f_tens (v : natural) return std_logic_vector is        -- columns and rows tens ascii convertions
        variable d : natural;
    begin
        d := (v / 10) mod 10;
        return std_logic_vector(to_unsigned(d + 48, 8));
    end function;

    function f_units (v : natural) return std_logic_vector is       -- columns and rows ones ascii convertions
        variable d : natural;
    begin
        d := v mod 10;
        return std_logic_vector(to_unsigned(d + 48, 8));
    end function;
    
    -- ANSI codes for navigation
    constant c_jump_to              : std_logic_vector(15 downto 0) := x"1B5B";
    constant c_H                    : std_logic_vector(7 downto 0)  := x"48";
    constant c_semicolon            : std_logic_vector(7 downto 0)  := x"3B";
    -- Renderable characters in ASCII
    constant c_paddle               : std_logic_vector(7 downto 0)  := x"7C"; -- '|'
    constant c_ball                 : std_logic_vector(7 downto 0)  := x"4F"; -- 'O'
    constant c_space                : std_logic_vector(7 downto 0)  := x"20"; -- ' '
    
    -- Builds ANSI command to be sent through UART to render game
    function f_ansi_place (col : natural; row : natural; ch : std_logic_vector(7 downto 0))
            return std_logic_vector is
    begin
        return c_jump_to            -- "ESC["
             & f_tens(row)
             & f_units(row)
             & c_semicolon          -- ';'
             & f_hundreds(col)
             & f_tens(col)
             & f_units(col)
             & c_H                  -- 'H'
             & ch;
    end function;                   -- ESC [ <row_tens> <row_units> ; <col_hundreds> <col_tens> <col_units> H <ch>

    -- FSM Labels and Registers:
    type t_screen_state is (WAITING, PLAYING, GAME_OVER);                           -- Sceen Render FSM state labels
    type t_wait_state   is (WS_CLEAR, WS_MESSAGE, WS_DONE);                         -- While IDLE render title screen
    type t_ball_state   is (B_IDLE, B_ERASE, B_DRAW);                               -- While Playing render paddles and ball (could be reduced to one type)
    type t_pad_state    is (P_IDLE, P_ERASE, P_DRAW);
    type t_over_state   is (CLEAR_WINNER, SHOW_WINNER, END_WINNER, DONE_WINNER);    -- While GAME OVER render win message
    signal r_screen_render_state    : t_screen_state    := WAITING;
    signal r_ball_state             : t_ball_state      := B_IDLE;
    signal r_pad1_state             : t_pad_state       := P_IDLE;
    signal r_pad2_state             : t_pad_state       := P_IDLE;
    signal r_wait_state             : t_wait_state      := WS_CLEAR;
    signal r_over_state             : t_over_state      := CLEAR_WINNER;
    
    signal r_Top_state              : t_Game_states     := IDLE;                    -- Top FSM signal register (within all game module instances to synchronise) 

    -- UART output registers
    signal r_send_pending   : std_logic                             := '0';

    -- Ball tracking
    signal r_ball_pre_x     : natural range 0 to c_screen_width     := 0;
    signal r_ball_pre_y     : natural range 0 to c_screen_height    := 0;

    -- Paddle tracking
    signal r_old1_pos       : natural range 0 to c_screen_height    := 0;
    signal r_old2_pos       : natural range 0 to c_screen_height    := 0;

    -- Step counters sized to the worst-case paddle for operation
    signal r_pad1_step      : natural range 0 to (2 * c_Max_paddle_size)    := 0;
    signal r_pad2_step      : natural range 0 to (2 * c_Max_paddle_size)    := 0;

    signal r_pad1_new_pos   : natural range 0 to c_screen_height            := c_starting_pos_y;
    signal r_pad2_new_pos   : natural range 0 to c_screen_height            := c_starting_pos_y;
    
    signal r_message_index  : natural range 0 to 25 := 0;

    -- Paddle span
    signal r_Pad_chars      : natural range 1 to (2 * c_Max_paddle_size + 1);
    
    signal w_paddle_size    : natural range 1 to c_Max_paddle_size;


begin
    
    o_uart_send     <= r_send_pending;
    w_paddle_size   <= to_integer(i_paddle_size);
    
    -- Screen FSM
    p_Draw_screen_FSM : process (i_CLK) is
        -- UART Transmition Procedure
        procedure send_packet (
                buf   : in std_logic_vector(79 downto 0);
                count : in natural range 0 to 10) is
        begin
            o_uart_buffer   <= buf;
            o_uart_count    <= to_unsigned(count, 4);
            r_send_pending  <= '1';
        end procedure;

    begin
        -- r_Top_state
        if rising_edge(i_CLK) then
            
            -- Synchronous reset
            if (i_RST = '0') then
                r_send_pending          <= '0';
                r_screen_render_state   <= WAITING;
                r_ball_state            <= B_IDLE;
                r_pad1_state            <= P_IDLE;
                r_pad2_state            <= P_IDLE;
                r_wait_state            <= WS_CLEAR;
                r_over_state            <= CLEAR_WINNER;
                r_ball_pre_x            <= 0;
                r_ball_pre_y            <= 0;
                r_old1_pos              <= 0;
                r_old2_pos              <= 0;
                r_pad1_step             <= 0;
                r_pad2_step             <= 0;
                r_pad1_new_pos          <= 0;
                r_pad2_new_pos          <= 0;
                r_Message_index         <= 0;
                r_Top_state             <= IDLE;
                o_uart_buffer           <= (others => '0');
                o_uart_count            <= "0000";
                r_Pad_chars             <= 1;
            end if;
            
            
            -- Release send strobe once the transmitter has picked up the packet
            if ((r_send_pending = '1') and (i_uart_ready = '0')) then
                r_send_pending      <= '0';
            end if;
            
            case i_game_state is  -- Could move this to concurrent assignment, but would have to change display_outputs
                when "00"       => r_Top_state <= IDLE;
                when "01"       => r_Top_state <= PLAYING;
                when "10"       => r_Top_state <= GAME_OVER;
                when others     => r_Top_state <= IDLE;
            end case;
            
            
            -- UART render terminal FSM
            case r_screen_render_state is

                -- Displays title screen while waiting, then transitions to playing with any key input
                when WAITING    =>
                    if (r_Top_state = PLAYING) then
                        r_Pad_chars     <= ((2 * (to_integer(i_paddle_size))) + 1);
                        r_Ball_state    <= B_IDLE;
                        r_Pad1_state    <= P_IDLE;
                        r_Pad2_state    <= P_IDLE;
                        r_Ball_pre_x    <= to_integer(i_Ball_xpos);
                        r_Ball_pre_y    <= to_integer(i_Ball_ypos);
                        r_Old1_pos      <= 0;
                        r_Old2_pos      <= 0;
                        r_Wait_state    <= WS_CLEAR;
                        if ((r_send_pending = '0') and (i_uart_ready = '1')) then
                            send_packet(c_hide_cursor & c_clear_screen, 10);        
                            r_screen_render_state   <= PLAYING;
                        end if;

                    elsif ((r_send_pending = '0') and (i_uart_ready = '1')) then
                        case r_wait_state is
                            when WS_CLEAR   =>
                                send_packet(c_title_screen_message(0), 10);
                                r_Message_index         <= 1;
                                r_wait_state            <= WS_MESSAGE;
                                    
                            when WS_MESSAGE =>
                                send_packet(c_title_screen_message(r_Message_index), 10);
                                r_Message_index         <= (r_Message_index + 1);
                                if (r_Message_index = 26) then
                                    r_Message_index     <= 0;
                                    r_wait_state        <= WS_DONE;                                
                                end if;
                            
                            when WS_DONE    => null;
                            
                            when others     => 
                                r_wait_state            <= WS_CLEAR;
                        end case;
                    end if;

                -- Renders ball and both paddles as they change pos,
                -- Using redraw method instead of clear then full render frames to prevent flicker, 
                -- Priority: ball > paddle 1 > paddle 2.
                when playing    =>
                    -- GAME OVER CHECK
                    if (r_Top_state = GAME_OVER) then
                        r_over_state            <= CLEAR_WINNER; 
                        r_screen_render_state   <= GAME_OVER;

                    elsif ((r_Send_pending = '0') and (i_uart_ready = '1')) then

                        -- Ball render
                        case r_Ball_state is
                            when B_IDLE     =>
                                -- Check if moved from previous instance
                                if (((to_integer(i_ball_xpos)) /= r_Ball_pre_x) or 
                                    ((to_integer(i_ball_ypos)) /= r_Ball_pre_y)) then
                                    r_Ball_state    <= B_ERASE;
                                end if;

                            when B_ERASE    =>                                              -- Deletes previous ball O from it's location replaced with ' '
                                send_packet(
                                    f_ansi_place(r_Ball_pre_x, r_Ball_pre_y, c_Space)
                                    , 10);
                                r_Ball_state        <= B_DRAW;
                            when B_DRAW     =>
                                send_packet(
                                    f_ansi_place((to_integer(i_ball_xpos)), (to_integer(i_ball_ypos)), c_Ball), 10);
                                r_Ball_pre_x        <= (to_integer(i_ball_xpos));                         -- Updates memory for next instance check
                                r_Ball_pre_y        <= (to_integer(i_ball_ypos));
                                r_Ball_state        <= B_IDLE;
                        end case;

                        -- Paddle 1 (left column) - only when ball is idle so mid-transmition changes can't be made
                        if (r_ball_state = B_IDLE) then
                            case r_pad1_state is
                                when P_IDLE     =>
                                    if ((to_integer(i_paddle1_pos)) /= r_old1_pos) then
                                        r_pad1_new_pos  <= to_integer(i_paddle1_pos);
                                        r_pad1_step     <= 0;
                                        r_pad1_state    <= P_ERASE;
                                    end if;
                                when P_ERASE    =>
                                    send_packet(
                                        f_ansi_place(1,
                                            ((r_old1_pos - w_paddle_size) + r_pad1_step),   
                                            c_space), 10);
                                    if (r_pad1_step = (r_Pad_chars - 1)) then
                                        r_pad1_step     <= 0;
                                        r_pad1_state    <= P_DRAW;
                                    else
                                        r_pad1_step     <= (r_pad1_step + 1);
                                    end if;
                                when P_DRAW     =>
                                    send_packet(
                                        f_ansi_place(1,
                                            ((r_Pad1_new_pos - w_paddle_size) + r_Pad1_step),
                                            c_paddle), 10);
                                    if (r_Pad1_step = (r_Pad_chars - 1)) then
                                        r_Old1_pos      <= r_Pad1_new_pos;
                                        r_Pad1_step     <= 0;
                                        r_Pad1_state    <= P_IDLE;
                                    else
                                        r_Pad1_step     <= (r_Pad1_step + 1);
                                    end if;
                                when others     =>
                                    r_Pad1_state        <= P_IDLE;
                            end case;
                        end if;

                        -- ── Paddle 2 (right column) - only when ball+P1 idle ─
                        if ((r_Ball_state = B_IDLE) and (r_Pad1_state = P_IDLE)) then
                            case r_Pad2_state is
                                when P_IDLE     =>
                                    if ((to_integer(i_paddle2_pos)) /= r_Old2_pos) then
                                        r_Pad2_new_pos  <= (to_integer(i_paddle2_pos));
                                        r_Pad2_step     <= 0;
                                        r_Pad2_state    <= P_ERASE;
                                    end if;
                                when P_ERASE    =>
                                    send_packet(
                                        f_ansi_place(c_screen_width,
                                            ((r_old2_pos - w_paddle_size) + r_Pad2_step),
                                            c_space), 10);
                                    if (r_Pad2_step = (r_Pad_chars - 1)) then
                                        r_Pad2_step     <= 0;
                                        r_Pad2_state    <= P_DRAW;
                                    else
                                        r_Pad2_step     <= (r_Pad2_step + 1);
                                    end if;
                                when P_DRAW     =>
                                    send_packet(
                                        f_ansi_place(c_screen_width,
                                            ((r_pad2_new_pos - w_paddle_size) + r_pad2_step),
                                            c_paddle), 10);
                                    if (r_pad2_step = (r_Pad_chars - 1)) then
                                        r_old2_pos      <= r_pad2_new_pos;
                                        r_pad2_step     <= 0;
                                        r_pad2_state    <= P_IDLE;
                                    else
                                        r_pad2_step     <= (r_pad2_step + 1);
                                    end if;
                                when others     =>
                                    r_pad2_state        <= P_IDLE;
                            end case;
                        end if;
                    end if;

                -- Game over
            
                when GAME_OVER  => 
                    if ((r_send_pending = '0') and (i_uart_ready = '1')) then
                        case r_over_state is
                            
                            when CLEAR_WINNER   =>
                                send_packet(c_game_over_message(0), 10);
                                r_over_state                <= SHOW_WINNER;
                            
                            when SHOW_WINNER    =>
                                if (i_winner = '0') then                        -- Sends "PLAYER 1 WINS!"
                                    send_packet(c_game_over_message(1), 10);
                                else                                            -- Sends "PLAYER 2 WINS!"
                                    send_packet(c_game_over_message(2), 10);
                                end if;
                                r_over_state                <= END_WINNER;
                            
                            when END_WINNER     =>
                                send_packet(c_game_over_message(3), 10);
                                r_over_state                <= DONE_WINNER;
                            
                            when DONE_WINNER    =>
                                if (r_Top_state = IDLE) then                    -- Experimental improvement
                                    r_screen_render_state   <= WAITING;         -- Returns to waiting state when a key is pressed
                                end if;
                            
                            when others         =>
                                r_over_state                <= CLEAR_WINNER;
                        end case;
                    end if;
                    
                when others     =>
                    r_screen_render_state                   <= WAITING;
            end case;
        end if;
    end process p_Draw_screen_FSM;
end Behavioral;