library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity button_inputs is
    Port (
        i_CLK               : in  STD_LOGIC;
        i_RST               : in  STD_LOGIC;
        i_Center_btn        : in  STD_LOGIC;
        i_Up_btn            : in  STD_LOGIC;
        i_Down_btn          : in  STD_LOGIC;
        i_Left_btn          : in  STD_LOGIC;
        i_Right_btn         : in  STD_LOGIC;
        o_Mod_state_request : out STD_LOGIC;    -- pulse: enter/exit mod menu
        o_Mod_state_change  : out STD_LOGIC;    -- pulse: cycle between mod states
        o_Increment         : out STD_LOGIC;    -- pulse: increase current param
        o_Decrement         : out STD_LOGIC     -- pulse: decrease current param
    );
end button_inputs;

architecture Behavioral of button_inputs is

    -- One spam-bit per function, to prevent 100000000000000000000000000000 button inputs immediatly spamming the system
    -- Flags to prevent button UB
    signal r_spam_center : std_logic := '0';
    signal r_spam_lr     : std_logic := '0';
    signal r_spam_up     : std_logic := '0';
    signal r_spam_down   : std_logic := '0';

begin

    -- Centre will enter mod menu from waiting; confirm/exit from any mod state.
    p_Center_btn : process (i_CLK) is
    begin
        
        if rising_edge(i_CLK) then
            if (i_RST = '0') then
                r_spam_center           <= '0';
                o_Mod_state_request     <= '0';
            end if;
            
            o_Mod_state_request     <= '0';
            if ((i_Center_btn = '1') and (r_spam_center = '0')) then
                o_Mod_state_request <= '1';
                r_spam_center       <= '1';
            elsif (i_Center_btn = '0') then
                r_spam_center       <= '0';
            end if;
        end if;
    end process p_Center_btn;
    
    -- Left / Right toggle between mod ball-speed and mod paddle-size
    p_Cycle_btn : process (i_CLK) is
    begin
        if rising_edge(i_CLK) then
            if (i_RST = '0') then
                r_spam_lr               <= '0';
                o_Mod_state_change      <= '0';
            end if;
            o_Mod_state_change      <= '0';
            if (((i_Left_btn = '1') or (i_Right_btn = '1')) and (r_spam_lr = '0')) then
                o_Mod_state_change  <= '1';
                r_spam_lr           <= '1';
            elsif ((i_Left_btn = '0') and (i_Right_btn = '0')) then
                r_spam_lr           <= '0';
            end if;
        end if;
    end process p_Cycle_btn;

    -- Up button increments the modifable parameters
    p_Up_btn : process (i_CLK) is
    begin
        
        if (rising_edge(i_CLK)) then
            if (i_RST = '0') then
                r_spam_up           <= '0';
                o_Increment         <= '0';
            end if;
            
            o_Increment         <= '0';
            if ((i_Up_btn = '1') and (r_spam_up = '0')) then
                o_Increment <= '1';
                r_spam_up       <= '1';
            elsif (i_Up_btn = '0') then
                r_spam_up       <= '0';
            end if;
        end if;
    end process p_Up_btn;

    -- Down button decrements the modifable parameters
    p_Down_btn : process (i_CLK) is
    begin
        if (rising_edge(i_CLK)) then
            if (i_RST = '0') then
                r_spam_down         <= '0';
                o_Decrement         <= '0';
            end if;
            o_Decrement         <= '0';
            if ((i_Down_btn = '1') and (r_spam_down = '0')) then
                o_Decrement     <= '1';
                r_spam_down     <= '1';
            elsif (i_Down_btn = '0') then
                r_spam_down     <= '0';
            end if;
        end if;
    end process p_Down_btn;
end Behavioral;