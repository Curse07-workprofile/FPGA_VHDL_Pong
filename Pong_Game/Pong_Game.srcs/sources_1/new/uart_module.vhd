library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_module is
    Port (
        -- External I/O
        i_CLK                   : in  STD_LOGIC;
        i_RST                   : in  STD_LOGIC;
        i_UART_RXD              : in  STD_LOGIC;
        o_UART_TXD              : out STD_LOGIC;
        -- Internal
        -- RXD
        o_Received_byte         : out STD_LOGIC_VECTOR(7 downto 0);
        o_New_byte              : out STD_LOGIC;
        -- TXD
        i_Sent_message          : in  STD_LOGIC_VECTOR(79 downto 0);
        i_Character_amount      : in  UNSIGNED(3 downto 0);
        i_Send_current_buffer   : in  STD_LOGIC;
        o_Ready_to_send         : out STD_LOGIC
        );
end uart_module;

architecture Behavioral of uart_module is

begin
    
    uart_receive_inst : entity work.receive_uart
    port map (
        i_CLK               => i_CLK,
        i_RST               => i_RST,
        i_UART_RXD          => i_UART_RXD,
        o_Received_byte     => o_Received_byte,
        o_Received_new_byte => o_New_byte
        );
    
    uart_transmit_inst : entity work.transmit_uart
    port map (
        -- External I/O
        i_CLK                   => i_CLK,
        i_RST                   => i_RST,
        o_UART_TXD              => o_UART_TXD,
        -- Internal
        i_Transmition_message   => i_Sent_message,
        i_Character_amount      => i_Character_amount,
        i_Send_current_buffer   => i_Send_current_buffer,
        o_Ready_to_send         => o_Ready_to_send
        );
        
end Behavioral;