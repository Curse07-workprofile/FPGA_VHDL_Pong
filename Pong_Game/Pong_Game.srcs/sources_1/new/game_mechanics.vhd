library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.common_pkg.ALL;
use work.game_module_pkg.ALL;

entity game_mechanics is
    Port (
        -- External I/O
        i_CLK           : in  STD_LOGIC;
        i_RST           : in  STD_LOGIC;
        -- Internal Ports and Modular Interactions 
        i_key_input     : in  STD_LOGIC_VECTOR(7 downto 0);
        i_new_key       : in  STD_LOGIC;
        i_game_state    : in  UNSIGNED(1 downto 0);
        i_ball_speed    : in  UNSIGNED(3 downto 0);
        i_paddle_size   : in  UNSIGNED(2 downto 0);
        o_ball_pos_x    : out UNSIGNED(7 downto 0);
        o_ball_pos_y    : out UNSIGNED(7 downto 0);
        o_p1_paddle     : out UNSIGNED(7 downto 0);
        o_p2_paddle     : out UNSIGNED(7 downto 0);
        o_p1_score      : out UNSIGNED(1 downto 0);
        o_p2_score      : out UNSIGNED(1 downto 0)
    );
end game_mechanics;

architecture Behavioral of game_mechanics is

    -- Internal play sub-states
    type t_play_state is (PS_IDLE, PS_PLAYING, PS_POINT_SCORED);                            -- Labels
    signal r_play_state     : t_play_state  := PS_IDLE;                                     -- Register
    
    -- ASCII player keys
    constant c_P1_up        : std_logic_vector(7 downto 0) := x"77";
    constant c_P1_down      : std_logic_vector(7 downto 0) := x"73";
    constant c_P2_up        : std_logic_vector(7 downto 0) := x"6F";
    constant c_P2_down      : std_logic_vector(7 downto 0) := x"6B";
    

    -- Ball timing
    signal r_ball_rate      : natural range 1 to c_Max_ball_rate        := 1;               -- Needed for adjustable ball speed (Compare value for ball position increment)
    signal r_ball_count     : natural range 0 to c_Max_ball_rate        := 0;
    signal r_y_step_count   : natural range 0 to c_Max_y_divisor - 1    := 0;               -- Y sub-counter

    -- Ball dynamics
    signal r_ball_pos_x     : natural range 0 to c_screen_width     := c_starting_pos_x;    -- Position regisiters
    signal r_ball_pos_y     : natural range 0 to c_screen_height    := c_starting_pos_y;
                                                                                            -- Could change to an Enumerated type for clarity
    signal r_ball_dir_x     : std_logic := '0';                                             -- '0' = right, '1' = left
    signal r_ball_dir_y     : std_logic := '0';                                             -- '0' = down,  '1' = up

    -- Paddle position
    signal r_p1_paddle_pos  : natural range 0 to c_screen_height    := c_starting_pos_y;    -- Position registers
    signal r_p2_paddle_pos  : natural range 0 to c_screen_height    := c_starting_pos_y;

    -- Score registers
    signal r_p1_score       : natural range 0 to c_Win_score    := 0;                       -- Player score memory to allow internal adding
    signal r_p2_score       : natural range 0 to c_Win_score    := 0;
    
    signal r_point_p2       : std_logic := '0';                                             -- Which player scored flag
    
    signal w_paddle_size    : natural range 0 to c_Max_paddle_size;
    
    
    -- Serve rotation
    signal r_serve_pattern  : natural range 0 to (c_Num_serve_patterns - 1) := 0;
    
    signal r_Game_state     : t_Game_states     := IDLE;

begin

    -- Modular Output/Input Port drivers
 
    o_ball_pos_x      <= to_unsigned(r_ball_pos_x, 8);
    o_ball_pos_y      <= to_unsigned(r_ball_pos_y, 8);
    o_p1_paddle       <= to_unsigned(r_p1_paddle_pos, 8);
    o_p2_paddle       <= to_unsigned(r_p2_paddle_pos, 8);
    o_p1_score        <= to_unsigned(r_p1_score, 2);
    o_p2_score        <= to_unsigned(r_p2_score, 2);
    w_paddle_size     <= to_integer(i_paddle_size);
  

    -- Game mechanics process
    p_Game_mechs : process (i_CLK) is

        -- Serve ball procedure that has 4 possible patterns
        -- Could mess around with the Y velocity: 
        -- ie; give the paddles movement friction or set it like the speed and paddle size
        procedure serve_ball (p2_scored : in std_logic) is
        begin
            r_ball_count            <= 0;
            r_y_step_count          <= 0;
            r_ball_pos_x            <= c_starting_pos_x;
            case r_serve_pattern is
                when 0 =>
                    r_ball_pos_y    <= c_starting_pos_y;
                    r_ball_dir_x    <= not p2_scored;                   -- toward loser
                    r_ball_dir_y    <= '0';                             -- downward
                when 1 =>
                    r_ball_pos_y    <= c_Serve_y_high;
                    r_ball_dir_x    <= not p2_scored;                   -- toward loser
                    r_ball_dir_y    <= '1';                             -- upward
                when 2 =>
                    r_ball_pos_y    <= c_Serve_y_low;
                    r_ball_dir_x    <= p2_scored;                       -- toward winner
                    r_ball_dir_y    <= '1';                             -- upward
                when others =>
                    r_ball_pos_y    <= c_starting_pos_y;
                    r_ball_dir_x    <= p2_scored;                       -- toward winner
                    r_ball_dir_y    <= '0';                             -- downward
            end case;
            if (r_serve_pattern >= (c_Num_serve_patterns - 1)) then
                r_serve_pattern     <= 0;
            else
                r_serve_pattern     <= (r_serve_pattern + 1);
            end if;
        end procedure;

        -- Reset game procedure to eliminate code repetition
        procedure reset_game is
        begin
            r_p1_score       <= 0;
            r_p2_score       <= 0;
            r_serve_pattern  <= 0;
            r_p1_paddle_pos  <= c_starting_pos_y;
            r_p2_paddle_pos  <= c_starting_pos_y;
            r_ball_count     <= 0;
            r_y_step_count   <= 0;
            r_ball_pos_x     <= c_starting_pos_x;
            r_ball_pos_y     <= c_starting_pos_y;
            r_ball_dir_x     <= '0';
            r_ball_dir_y     <= '0';
        end procedure;

    begin

        if (rising_edge(i_CLK)) then
            
            -- Synchronous Reset (prefered for this FPGA to avoid cutting into time expensive sections of the FPGA)
            if (i_RST = '0') then
                reset_game;
                r_Game_state    <= IDLE;
                r_play_state    <= PS_IDLE;
                r_point_p2      <= '0';
                r_ball_rate     <= 1;
            end if;
            
                
            case i_game_state is
                when "00"       => r_Game_state <= IDLE;
                when "01"       => r_Game_state <= PLAYING;
                when "10"       => r_Game_state <= GAME_OVER;
                when others     => r_Game_state <= IDLE;
            end case;
            
            -- Internal Game Mechanics FSM 
            case r_play_state is

                when PS_IDLE =>                                                         -- Waits for top to assert playing state 
                    if (r_Game_state = PLAYING) then
                        reset_game;
                        r_ball_rate     <= (c_Max_ball_rate / (to_integer(i_ball_speed)));           -- Could invert this to a multipication
                        r_play_state    <= PS_PLAYING;
                    end if;

                when PS_PLAYING =>

                    if (r_Game_state = GAME_OVER) then                                  -- Return to play state idle if Game state is game over
                        r_play_state    <= PS_IDLE;                                     
                    else
                        -- Paddle movement
                        if (i_new_key = '1') then
                            case i_key_input is                                         -- Paddle input: P1: W = up, S = down, P2: O = up, K = down
                                when c_P1_up =>           
                                    if (r_p1_paddle_pos > w_paddle_size) then
                                        r_p1_paddle_pos     <= (r_p1_paddle_pos - 1);   -- Decrement is up
                                    end if;
                                when c_P1_down =>           
                                    if (r_p1_paddle_pos < (c_screen_height - w_paddle_size)) then
                                        r_p1_paddle_pos     <= (r_p1_paddle_pos + 1);   -- Increment is down
                                    end if;
                                when c_P2_up =>           
                                    if (r_p2_paddle_pos > w_paddle_size) then
                                        r_p2_paddle_pos     <= (r_p2_paddle_pos - 1);
                                    end if;
                                when c_P2_down =>           
                                    if (r_p2_paddle_pos < (c_screen_height - w_paddle_size)) then
                                        r_p2_paddle_pos     <= (r_p2_paddle_pos + 1);                   
                                    end if;
                                when others => null;
                            end case;
                        end if;

                        -- Ball tick
                        if (r_ball_count >= (r_ball_rate - 1)) then
                            r_ball_count                <= 0;
                            if (r_ball_dir_x = '0') then                                -- X moves every tick
                                if (r_ball_pos_x < c_screen_width)  then
                                    r_ball_pos_x        <= (r_ball_pos_x + 1);
                                end if;
                            else
                                if (r_ball_pos_x > 0) then
                                    r_ball_pos_x        <= (r_ball_pos_x - 1);
                                end if;
                            end if;
                            if (r_y_step_count >= (c_Ball_y_divisor - 1)) then          -- Y moves only once per c_Ball_y_divisor X tick
                                r_y_step_count <= 0;
                                if (r_ball_dir_y = '0') then
                                    if (r_ball_pos_y < c_screen_height) then
                                        r_ball_pos_y    <= (r_ball_pos_y + 1);
                                    end if;
                                else
                                    if (r_ball_pos_y > 0) then
                                        r_ball_pos_y    <= (r_ball_pos_y - 1);
                                    end if;
                                end if;
                            else
                                r_y_step_count          <= (r_y_step_count + 1);
                            end if;
                        else
                            r_ball_count                <= (r_ball_count + 1);
                        end if;

                        -- Collision detection
                        if (r_ball_count = (r_ball_rate - 2)) then                      -- Offset 
                            if ((r_ball_pos_y <= 0) or 
                                (r_ball_pos_y >= (c_screen_height - 1))) then           -- Top / bottom wall bounce
                                r_ball_dir_y        <= not(r_ball_dir_y);               -- Invert vertical dir
                            end if;
                            if (r_ball_pos_x <= 2) then                                 -- P1 paddle at column 1 or score
                                                                                        -- At 2 as to not destroy paddle ascii render 
                                if ((r_ball_pos_y <= (r_p1_paddle_pos + w_paddle_size)) and
                                   (r_ball_pos_y >= (r_p1_paddle_pos - w_paddle_size))) then
                                    r_ball_dir_x    <= '0';                             -- Bounce right if paddle is there
                                else
                                    r_point_p2      <= '1';                             -- P2 scores otherwise
                                    r_play_state    <= PS_POINT_SCORED;
                                end if;
                            elsif (r_ball_pos_x >= (c_screen_width - 1)) then           -- P2 paddle at column c_screen_width or score
                                                                                        -- At 1 minus screen width as to not destroy paddle render
                                if ((r_ball_pos_y <= (r_p2_paddle_pos + w_paddle_size)) and
                                   (r_ball_pos_y >= (r_p2_paddle_pos - w_paddle_size))) then
                                    r_ball_dir_x    <= '1';                             -- Bounce left if paddle is there
                                else
                                    r_point_p2      <= '0';                             -- P1 scores otherwise
                                    r_play_state    <= PS_POINT_SCORED;
                                end if;
                            end if;
                        end if;
                    end if;
                
                when PS_POINT_SCORED    =>                                              -- Adds to point tally and sets the ball serve behaviour 
                    if (r_point_p2 = '1') then
                        r_p2_score  <= (r_p2_score + 1);
                    else
                        r_p1_score  <= (r_p1_score + 1);
                    end if;
                    serve_ball(r_point_p2);
                    r_play_state    <= PS_PLAYING;

                when others =>
                    r_play_state    <= PS_IDLE;
            end case;
        end if;
    end process p_Game_mechs;
end Behavioral;