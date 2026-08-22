library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.common_pkg.ALL;

entity modification_module is
    Port ( 
        i_CLK               : in  STD_LOGIC;
        i_RST               : in  STD_LOGIC;
        i_Center_btn        : in  STD_LOGIC;
        i_Up_btn            : in  STD_LOGIC;
        i_Down_btn          : in  STD_LOGIC;
        i_Left_btn          : in  STD_LOGIC;
        i_Right_btn         : in  STD_LOGIC;
        i_idle_state        : in STD_LOGIC;
        o_Mod_display_state : out  UNSIGNED(1 downto 0);
        o_Ball_speed        : out  UNSIGNED(3 downto 0);
        o_Paddle_size       : out  UNSIGNED(2 downto 0)
    );
end modification_module;

architecture Behavioral of modification_module is
    -- Modification Parameters:
    signal r_Ball_speed         : NATURAL range 1 to c_Max_ball_speed   := c_Default_ball_speed;
    signal r_Paddle_size        : NATURAL range 1 to c_Max_paddle_size  := c_Default_paddle_size;

    -- Modification FSM
    type t_Modification_states  is (WAITING, BALL_SPEED, PADDLE_SIZE);
    signal r_Mod_state          : t_Modification_states                 := WAITING;

    -- Button Inputs for Modification
    signal r_Btn_mod_req    : STD_LOGIC := '0';     -- centre: enter/exit mod menu
    signal r_Btn_cycle      : STD_LOGIC := '0';     -- left/right: cycle mod state
    signal r_Btn_inc        : STD_LOGIC := '0';     -- up:   increment current param
    signal r_Btn_dec        : STD_LOGIC := '0';     -- down: decrement current param

begin
       
    o_Ball_speed    <= to_unsigned(r_Ball_speed, 4);
    o_Paddle_size   <= to_unsigned(r_Paddle_size, 3);
       
    button_inputs_inst : entity work.button_inputs
    port map (
        i_CLK               => i_CLK,
        i_RST               => i_RST,
        i_Center_btn        => i_Center_btn,
        i_Up_btn            => i_Up_btn,
        i_Down_btn          => i_Down_btn,
        i_Left_btn          => i_Left_btn,
        i_Right_btn         => i_Right_btn,
        o_Mod_state_request => r_Btn_mod_req,
        o_Mod_state_change  => r_Btn_cycle,
        o_Increment         => r_Btn_inc,
        o_Decrement         => r_Btn_dec
    );
    
    -- MOD state FSM 
    p_Edit_varibles_FSM : process (i_CLK) is
    begin
        
        if (rising_edge(i_CLK)) then
            
            -- Synchronous Reset
            if (i_RST = '0') then
                o_Mod_display_state     <= "00";
                r_Mod_state             <= WAITING;
                r_Ball_speed            <= c_Default_ball_speed;
                r_Paddle_size           <= c_Default_paddle_size;
            end if;
        
            if (i_idle_state = '1') then
                
                case (r_Mod_state) is
                    
                    when WAITING        =>
                        if (r_Btn_mod_req = '1') then 
                            r_Mod_state             <= BALL_SPEED;
                            o_Mod_display_state     <= "01";
                        end if;
                    
                    -- Modify ball speed
                    when BALL_SPEED     =>
                        if ((r_Btn_inc = '1') and 
                            (r_Ball_speed < c_Max_ball_speed)) then
                            r_Ball_speed    <= (r_Ball_speed + 1);
                        elsif ((r_Btn_dec = '1') and 
                            (r_Ball_speed > 1)) then
                            r_Ball_speed    <= (r_Ball_speed - 1);
                        end if;
                        if (r_Btn_cycle   = '1') then 
                            r_Mod_state             <= PADDLE_SIZE;
                            o_Mod_display_state     <= "10";
                        elsif (r_Btn_mod_req = '1') then 
                            r_Mod_state             <= WAITING;
                            o_Mod_display_state     <= "00";
                        end if;
                    
                    -- Modify paddle size
                    when PADDLE_SIZE    =>                
                        if ((r_Btn_inc = '1') and 
                            (r_Paddle_size < c_Max_paddle_size)) then
                            r_Paddle_size   <= (r_Paddle_size + 1);
                        elsif ((r_Btn_dec = '1') and 
                            (r_Paddle_size > 1)) then
                            r_Paddle_size   <= (r_Paddle_size - 1);
                        end if;
                        if (r_Btn_cycle = '1') then 
                            r_Mod_state             <= BALL_SPEED;
                            o_Mod_display_state     <= "01";
                        elsif (r_Btn_mod_req = '1') then 
                            r_Mod_state             <= WAITING;
                            o_Mod_display_state     <= "00";
                        end if;
                    
                    when others         =>
                        r_Mod_state                 <= WAITING;
                    
                end case;
            end if;
        end if;
    end process p_Edit_varibles_FSM;
end Behavioral;