library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.game_module_pkg.all;

entity display_output is
    Port (
        -- External I/O
        i_CLK               : in  STD_LOGIC;
        i_RST               : in  STD_LOGIC;
        o_Anodes            : out STD_LOGIC_VECTOR(7 downto 0);
        o_Cathodes          : out STD_LOGIC_VECTOR(7 downto 0);
        o_LED17_bgr         : out STD_LOGIC_VECTOR(0 to 2);
        o_LED16_bgr         : out STD_LOGIC_VECTOR(0 to 2);
        -- Internal
        i_Player1_score     : in UNSIGNED(1 downto 0);
        i_Player2_score     : in UNSIGNED(1 downto 0);
        i_Ball_speed        : in UNSIGNED(3 downto 0);
        i_Paddle_size       : in UNSIGNED(2 downto 0);
        i_Game_state        : in UNSIGNED(1 downto 0);
        i_Mod_display_state : in UNSIGNED(1 downto 0)
    );
end display_output;

architecture Behavioral of display_output is
    
    function score_to_cathode(score : natural) return std_logic_vector is
    begin
        case score is
            when 0      => return "11000000"; -- 0
            when 1      => return "11111001"; -- 1
            when 2      => return "10100100"; -- 2
            when 3      => return "10110000"; -- 3
            when others => null;              -- nothing
        end case;
    end function;
    
    function speed_to_cathode(score : natural) return std_logic_vector is
    begin
        case score is
            when 1      => return "11111001"; -- 1
            when 2      => return "10100100"; -- 2
            when 3      => return "10110000"; -- 3
            when 4      => return "10011001"; -- 4
            when 5      => return "10010010"; -- 5
            when 6      => return "10000010"; -- 6
            when 7      => return "11111000"; -- 7
            when 8      => return "10000000"; -- 8
            when 9      => return "10010000"; -- 9
            when others => null;              -- nothing
        end case;
    end function;
    
    function size_to_cathode(score : natural) return std_logic_vector is
    begin
        case score is
            when 1      => return "11111001"; -- 1
            when 2      => return "10100100"; -- 2
            when 3      => return "10110000"; -- 3
            when 4      => return "10011001"; -- 4
            when 5      => return "10010010"; -- 5
            when 6      => return "10000010"; -- 6
            when others => null;              -- nothing
        end case;
    end function;
    
    
    function get_gameover_char(
        index    : natural;
        p1_score : unsigned(1 downto 0);
        p2_score : unsigned(1 downto 0)
    ) return std_logic_vector is
        constant C_BLANK        : std_logic_vector(7 downto 0)  := "11111111";
        variable v_winner_num   : natural range 1 to 2          := 1;
        variable v_winner_score : unsigned(1 downto 0)          := "00";
        variable v_loser_score  : unsigned(1 downto 0)          := "00";
    begin
        if (p1_score >= p2_score) then
            v_winner_num   := 1;
            v_winner_score := p1_score;
            v_loser_score  := p2_score;
        else
            v_winner_num   := 2;
            v_winner_score := p2_score;
            v_loser_score  := p1_score;
        end if;

        case index is                                               -- Make into constant and index through
            when 0  => return "10001100";                           -- P
            when 1  => return "11000111";                           -- L
            when 2  => return "10001000";                           -- A
            when 3  => return "10010001";                           -- Y
            when 4  => return "10000110";                           -- E
            when 5  => return "10101111";                           -- R
            when 6  =>
                if (v_winner_num = 1) then  
                    return "11111001";                              -- 1
                else                        
                    return "10100100";                              -- 2
                end if;
            when 7      => return C_BLANK;                          -- space
            when 8      => return "11010101";                       -- W
            when 9      => return "11111001";                       -- I
            when 10     => return "11101010";                       -- N
            when 11     => return "10010010";                       -- S
            when 12     => return C_BLANK;                          -- space
            when 13     => return score_to_cathode(to_integer(v_winner_score)); -- winner digit
            when 14     => return "10111111";                       -- -
            when 15     => return score_to_cathode(to_integer(v_loser_score));  -- loser digit
            when others => return C_BLANK;                          -- trailing spaces
        end case;
    end function;

    constant c_Blink_compare    : natural                               := 50_000_000;  -- 1 s => 1 Hz blink
    constant c_Scroll_compare   : natural                               := 75_000_000;  -- 0.75 s per scroll step
    constant c_Counter_compare  : natural                               := 100_000;     -- 7-seg digit: 1 ms at 100 MHz

    type t_display_states is (WAITING, PLAYING, GAME_OVER, MODIFYING_BALL, MODIFYING_PADDLE);
    signal r_display_state      : t_display_states                      := WAITING;
    signal r_Increment_value    : natural range 0 to c_Counter_compare  := 0;           -- 100MHz CLK and c_compare val of 100000
    signal r_Message_index      : natural range 0 to 8                  := 7;           -- 7 - Seg display 

    signal r_Blink_counter      : natural range 0 to c_Blink_compare    := 0;
    signal r_Blink              : std_logic                             := '0';
    signal r_Scroll_timer       : natural range 0 to c_Scroll_compare   := 0;
    signal r_Scroll_offset      : natural range 0 to 24                 := 0;

begin

    p_Display_FSM : process (i_CLK) is
    
        procedure write_anodes (
                r_Message_index : in natural range 0 to 8) is
            begin
                case r_Message_index is
                    when 6      => o_Anodes <= "11111110";
                    when 5      => o_Anodes <= "11111101";
                    when 4      => o_Anodes <= "11111011";
                    when 3      => o_Anodes <= "11110111";
                    when 2      => o_Anodes <= "11101111";
                    when 1      => o_Anodes <= "11011111";
                    when 0      => o_Anodes <= "10111111";
                    when 7      => o_Anodes <= "01111111";
                    when others => o_Anodes <= "11111111";
                end case;
        end procedure;
    
    begin

        if (rising_edge(i_CLK)) then
            
            -- Synchronous Reset
            if (i_RST = '0') then
                r_display_state     <= WAITING;
                r_Increment_value   <= 0;
                r_Message_index     <= 0;
                r_Blink_counter     <= 0;
                r_Blink             <= '0';
                r_Scroll_timer      <= 0;
                r_Scroll_offset     <= 0;
                o_Anodes            <= (others => '1');  -- all off (active low)
                o_Cathodes          <= (others => '1');  -- all segments off
                o_LED17_bgr         <= "000";
                o_LED16_bgr         <= "000";
            
            end if;
            
            
            if (i_Game_state = "00") then               
                case i_Mod_display_state is
                    when "00" =>
                        r_display_state <= WAITING;
                    when "01" =>
                        r_display_state <= MODIFYING_BALL;
                    when "10" =>
                        r_display_state <= MODIFYING_PADDLE;
                    when others =>
                        r_display_state <= WAITING;     
                end case;
            else
                case i_Game_state is
                    when "01"   =>
                        r_display_state <= PLAYING;
                    when "10"   =>
                        r_display_state <= GAME_OVER;    
                    when others =>
                        r_display_state <= WAITING;
                end case;
            end if;
                
            if (r_Increment_value >= c_Counter_compare) then
                r_Increment_value   <= 0;
                
                if (r_Message_index >= 7) then
                    r_Message_index <= 0;
                else
                    r_Message_index <= r_Message_index + 1;
                end if;
                
                write_anodes(r_Message_index);
            else
                r_Increment_value   <= (r_Increment_value + 1);
            end if;
            
            if (r_Blink_counter >= c_Blink_compare) then
                r_Blink_counter     <= 0;
                r_Blink             <= not r_Blink;
            else
                r_Blink_counter     <= (r_Blink_counter + 1);
            end if;
            
            if (r_display_state = game_over) then
                if (r_Scroll_timer >= c_Scroll_compare) then
                    
                    r_Scroll_timer      <= 0;
                    if (r_Scroll_offset >= 24) then
                        r_Scroll_offset <= 0;        
                    else
                        r_Scroll_offset <= (r_Scroll_offset + 1);
                    end if;
                else
                    r_Scroll_timer      <= (r_Scroll_timer + 1);
                end if;
            else
                r_Scroll_timer          <= 0;                
                r_Scroll_offset         <= 0;
            end if;
           
            case r_display_state is
                
                -- Displays a static Waiting message
                when WAITING            =>
                    case r_Message_index is                       -- Optimization: Replace with array and index through  
                        when 0      =>  o_Cathodes <= "11010101"; -- W
                        when 1      =>  o_Cathodes <= "10001000"; -- A
                        when 2      =>  o_Cathodes <= "11111001"; -- I
                        when 3      =>  o_Cathodes <= "10000111"; -- T
                        when 4      =>  o_Cathodes <= "11111001"; -- I
                        when 5      =>  o_Cathodes <= "11101010"; -- N
                        when 6      =>  o_Cathodes <= "10010000"; -- G
                        when others =>  o_Cathodes <= "11111111"; -- all off
                    end case;
                    o_LED16_bgr     <= "010";
                    o_LED17_bgr     <= "010";
            
             
                -- displays current score                    
                when PLAYING            =>
                    case r_Message_index is
                        when 0      => o_Cathodes <= score_to_cathode(to_integer(i_Player1_score));
                        when 1      => o_Cathodes <= "10111111"; -- -
                        when 2      => o_Cathodes <= score_to_cathode(to_integer(i_Player2_score));
                        when others => o_Cathodes <= "11111111";
                    end case;
                    o_LED16_bgr     <= "110";
                    o_LED17_bgr     <= "110";
                    
                -- displays a scrollable message that states who won and the score
                when game_over =>
                    o_Cathodes <= get_gameover_char(
                        (r_Scroll_offset + r_Message_index),
                        i_Player1_score,
                        i_Player2_score
                    );
                    o_LED17_bgr     <= "101";
                    o_LED17_bgr     <= "101";
                
                -- Says SPEED then the integer value blinking at a rate that allows user to see and understand that it is to be chaged
                when MODIFYING_BALL     =>
                    
                    case r_Message_index is                      -- Optimization: Replace with array and index through   
                        when 0      => o_Cathodes <= "10010010"; -- S
                        when 1      => o_Cathodes <= "10001100"; -- P
                        when 2      => o_Cathodes <= "10000110"; -- E
                        when 3      => o_Cathodes <= "10000110"; -- E
                        when 4      => o_Cathodes <= "10100001"; -- D  
                        when 5      => o_Cathodes <= "11111111"; -- space
                        when 6      => o_Cathodes <= "11111111"; -- space
                        when 7      =>
                            if (r_Blink = '1') then
                                o_Cathodes        <= "11111111";                     
                            else
                                o_Cathodes        <= speed_to_cathode(to_integer(i_Ball_speed)); 
                            end if;
                        when others => o_Cathodes <= "11111111";
                    end case;
                    o_LED17_bgr     <= "001";
                    o_LED16_bgr     <= "001";
                
                -- Says P SIZE then the integer value blinking at a rate that allows user to see and understand that it is to be changed
                when MODIFYING_PADDLE   =>
                
                    case r_Message_index is                      -- Optimization: Replace with array and index through 
                        when 0      => o_Cathodes <= "10001100"; -- P
                        when 1      => o_Cathodes <= "10010010"; -- S
                        when 2      => o_Cathodes <= "11111001"; -- I
                        when 3      => o_Cathodes <= "10100100"; -- Z  
                        when 4      => o_Cathodes <= "10000110"; -- E
                        when 5      => o_Cathodes <= "11111111"; -- space
                        when 6      => o_Cathodes <= "11111111"; -- space
                        when 7      =>
                            if (r_Blink = '1') then
                                o_Cathodes        <= "11111111";                       
                            else
                                o_Cathodes        <= size_to_cathode(to_integer(i_Paddle_size));  
                            end if;
                        when others => o_Cathodes <= "11111111";
                    end case;
                    o_LED17_bgr     <= "100";
                    o_LED16_bgr     <= "100";

                when others             =>
                    r_display_state <= WAITING;

            end case;
        end if;
    end process p_Display_FSM;
end Behavioral;