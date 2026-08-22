library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.game_module_pkg.all;

entity game_module is
    Port (
        -- External I/O
        i_CLK               : in  STD_LOGIC;
        i_RST               : in  STD_LOGIC;
        o_Anodes            : out STD_LOGIC_VECTOR(7 downto 0);
        o_Cathodes          : out STD_LOGIC_VECTOR(7 downto 0);
        o_LED17_bgr         : out STD_LOGIC_VECTOR(0 to 2);
        o_LED16_bgr         : out STD_LOGIC_VECTOR(0 to 2);
        -- Internal Ports and Modular Interactions 
        i_key_input         : in  STD_LOGIC_VECTOR(7 downto 0);
        i_new_key           : in  STD_LOGIC;
        i_Mod_display_state : in  UNSIGNED(1 downto 0);
        i_ball_speed        : in  UNSIGNED(3 downto 0);
        i_paddle_size       : in  UNSIGNED(2 downto 0);
        o_uart_count        : out UNSIGNED(3 downto 0);
        o_uart_send         : out STD_LOGIC;
        i_uart_ready        : in  STD_LOGIC;
        o_uart_buffer       : out STD_LOGIC_VECTOR(79 downto 0);
        o_idle_state        : out STD_LOGIC
    );
end game_module;

architecture Behavioral of game_module is
    
    -- Game mechanics outputs
    signal w_Ball_pos_x     : UNSIGNED(7 downto 0);
    signal w_Ball_pos_y     : UNSIGNED(7 downto 0);
    signal w_P1_paddle      : UNSIGNED(7 downto 0);
    signal w_P2_paddle      : UNSIGNED(7 downto 0);
    signal w_P1_score       : UNSIGNED(1 downto 0);
    signal w_P2_score       : UNSIGNED(1 downto 0);
    
    -- Flags
    signal r_winner         : std_logic := '0';                 -- Winner flag
    signal r_game_value     : unsigned(1 downto 0) := "00";     -- Game FSM flag
    -- Game FSM register
    signal r_Game_state     : t_Game_States := IDLE;
    
begin    
    -- Instanciations of sub-modules
    game_mechanics_inst : entity work.game_mechanics
    port map (
        -- External I/O
        i_CLK       => i_CLK,
        i_RST       => i_RST,
        -- Internal Ports and Modular Interactions 
        i_key_input   => i_key_input,
        i_new_key     => i_new_key,
        i_game_state  => r_game_value,
        i_ball_speed  => i_ball_speed,
        i_paddle_size => i_paddle_size,
        o_ball_pos_x  => w_Ball_pos_x,
        o_ball_pos_y  => w_Ball_pos_y,
        o_p1_paddle   => w_P1_paddle,
        o_p2_paddle   => w_P2_paddle,
        o_p1_score    => w_P1_score,
        o_p2_score    => w_P2_score
    );
    
    game_render_inst : entity work.message_prep
    port map (
        -- External I/O
        i_CLK           => i_CLK,
        i_RST           => i_RST,
        -- Internal Ports and Modular Interactions
        i_game_state    => r_game_value,
        i_winner        => r_winner,
        i_paddle1_pos   => w_P1_paddle,
        i_paddle2_pos   => w_P2_paddle,
        i_ball_ypos     => w_Ball_pos_y,
        i_ball_xpos     => w_Ball_pos_x,
        i_paddle_size   => i_paddle_size,
        o_uart_count    => o_uart_count,
        o_uart_send     => o_uart_send,
        i_uart_ready    => i_uart_ready,
        o_uart_buffer   => o_uart_buffer
    );
    
    local_game_display_inst : entity work.display_output
    port map (
        i_CLK               => i_CLK,
        i_RST               => i_RST,
        o_Anodes            => o_Anodes,
        o_Cathodes          => o_Cathodes,
        o_LED17_bgr         => o_LED17_bgr,
        o_LED16_bgr         => o_LED16_bgr,
        i_Player1_score     => w_P1_score,
        i_Player2_score     => w_P2_score,
        i_Ball_speed        => i_ball_speed,
        i_Paddle_size       => i_paddle_size,
        i_Game_state        => r_game_value,
        i_Mod_display_state => i_Mod_display_state
    );
    
    -- Game state FSM to Control flow of gaee between game sub-modules
    p_Game_FSM : process (i_CLK) is
    begin
        if (rising_edge(i_CLK)) then
            
            if (i_RST = '0') then
                r_Game_state    <= IDLE;
                o_idle_state    <= '1';
                r_game_value    <= "00";
                r_winner        <= '1';
            end if;
            
            case r_Game_state is

                -- Waiting 
                when IDLE =>
                    if ((i_new_key = '1') and (i_Mod_display_state = "00")) then 
                        r_Game_state    <= PLAYING;
                        r_game_value    <= "01";
                        o_idle_state    <= '0';
                    end if;

                -- Playing
                when PLAYING =>
                    if (((to_integer(w_P1_score)) >= c_Win_score) or 
                        ((to_integer(w_P2_score)) >= c_Win_score)) then
                        r_Game_state    <= GAME_OVER;
                        r_game_value    <= "10";
                        if ((to_integer(w_P1_score)) >= c_Win_score) then
                            r_winner    <= '0';
                        else
                            r_winner    <= '1';
                        end if;
                    end if;

                -- Game over
                when GAME_OVER =>
                    if (i_new_key = '1') then
                        r_Game_state    <= IDLE;
                        r_game_value    <= "00";
                        o_idle_state    <= '1';
                    end if;

                when others =>
                    r_Game_state <= IDLE;
            end case;
        end if;
    end process p_Game_FSM;
end Behavioral;