library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pong_top is
    Port (
        CLK100MHZ    : in  STD_LOGIC;
        CPU_RESETN   : in  STD_LOGIC;
        UART_RXD_OUT : out STD_LOGIC;
        UART_TXD_IN  : in  STD_LOGIC;
        BTN          : in  STD_LOGIC_VECTOR(4 downto 0);  -- C U L R D
        AN           : out STD_LOGIC_VECTOR(7 downto 0);
        C            : out STD_LOGIC_VECTOR(7 downto 0);
        LED17_BGR    : out STD_LOGIC_VECTOR(0 to 2);
        LED16_BGR    : out STD_LOGIC_VECTOR(0 to 2)
    );
end pong_top;

architecture Behavioral of pong_top is

    -- Components
    -- UART Component
    component uart_module is
        Port (
            -- External I/O
            i_CLK                   : in  STD_LOGIC;
            i_RST                   : in  STD_LOGIC;
            -- RXD
            i_UART_RXD              : in  STD_LOGIC;
            -- TXD
            o_UART_TXD              : out STD_LOGIC;
            -- Internal Ports and Modular Interactions
            -- RXD
            o_Received_byte         : out STD_LOGIC_VECTOR(7 downto 0);
            o_New_byte              : out STD_LOGIC;
            -- TXD
            i_Sent_message          : in  STD_LOGIC_VECTOR(79 downto 0);
            i_Character_amount      : in  UNSIGNED(3 downto 0);
            i_Send_current_buffer   : in  STD_LOGIC;
            o_Ready_to_send         : out STD_LOGIC
        );
    end component;
    
    -- Game component
    component game_module is
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
    end component;
    
    -- Modification component
    component modification_module is
        Port (
            -- External I/O
            i_CLK               : in  STD_LOGIC;
            i_RST               : in  STD_LOGIC;
            i_Center_btn        : in  STD_LOGIC;
            i_Up_btn            : in  STD_LOGIC;
            i_Down_btn          : in  STD_LOGIC;
            i_Left_btn          : in  STD_LOGIC;
            i_Right_btn         : in  STD_LOGIC;
            -- Internal Ports and Modular Interactions 
            i_idle_state        : in  STD_LOGIC;
            o_Mod_display_state : out UNSIGNED(1 downto 0);
            o_Ball_speed        : out UNSIGNED(3 downto 0);
            o_Paddle_size       : out UNSIGNED(2 downto 0)
        );
    end component;

    -- UART Module:
    -- UART RX
    signal w_Received_byte      : STD_LOGIC_VECTOR(7 downto 0);
    signal w_New_key            : STD_LOGIC;   
    -- UART TX
    signal w_TX_buffer          : STD_LOGIC_VECTOR(79 downto 0);
    signal w_TX_count           : UNSIGNED(3 downto 0);
    signal w_TX_send            : STD_LOGIC;
    signal w_TX_ready           : STD_LOGIC;
    -- Modification Module:
    signal w_Ball_speed         : UNSIGNED(3 downto 0);
    signal w_Paddle_size        : UNSIGNED(2 downto 0);
    signal w_Mod_display_state  : UNSIGNED(1 downto 0);
    -- Game Module
    signal w_idle_state         : STD_LOGIC;

begin
    
    -- Component mapping
    
    u_uart_module : uart_module
        port map (
            i_CLK                   => CLK100MHZ,
            i_RST                   => CPU_RESETN,
            i_UART_RXD              => UART_TXD_IN,
            o_UART_TXD              => UART_RXD_OUT,
            o_Received_byte         => w_Received_byte,
            o_New_byte              => w_New_key,
            i_Sent_message          => w_TX_buffer,
            i_Character_amount      => w_TX_count,
            i_Send_current_buffer   => w_TX_send,
            o_Ready_to_send         => w_TX_ready
        );

    u_game_module : game_module
        port map (
            i_CLK               => CLK100MHZ,
            i_RST               => CPU_RESETN,
            o_Anodes            => AN,
            o_Cathodes          => C,
            o_LED17_bgr         => LED17_BGR,
            o_LED16_bgr         => LED16_BGR,
            i_key_input         => w_Received_byte,
            i_new_key           => w_New_key,
            i_Mod_display_state => w_Mod_display_state,
            i_ball_speed        => w_Ball_speed,
            i_paddle_size       => w_Paddle_size,
            o_uart_count        => w_TX_count,
            o_uart_send         => w_TX_send,
            i_uart_ready        => w_TX_ready,
            o_uart_buffer       => w_TX_buffer,
            o_idle_state        => w_idle_state
        );

    u_modification_module : modification_module
        port map (
            i_CLK               => CLK100MHZ,
            i_RST               => CPU_RESETN,
            i_Center_btn        => BTN(0),
            i_Up_btn            => BTN(1),
            i_Down_btn          => BTN(4),
            i_Left_btn          => BTN(2),
            i_Right_btn         => BTN(3),
            i_idle_state        => w_idle_state,
            o_Mod_display_state => w_Mod_display_state,
            o_Ball_speed        => w_Ball_speed,
            o_Paddle_size       => w_Paddle_size
        );

end Behavioral;