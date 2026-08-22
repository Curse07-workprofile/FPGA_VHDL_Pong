library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.common_pkg.all;

entity receive_uart is
    Port (
        -- External I/O
        i_UART_RXD              : in  STD_LOGIC;
        i_CLK                   : in  STD_LOGIC;
        i_RST                   : in  STD_LOGIC;
        -- Internal
        o_Received_byte         : out STD_LOGIC_VECTOR(7 downto 0);
        o_Received_new_byte     : out STD_LOGIC                         -- pulse when new byte ready
    );
end receive_uart;

architecture Behavioral of receive_uart is
    
    
    type   t_RXD_states   is (IDLE, STARTING, RECEIVE_DATA, STOP);      -- RX UART FSM labels:
    signal r_RX_state       : t_RXD_states                      := IDLE;

    signal r_RX_cnt         : natural range 0 to c_baud_rate    := 0;

    signal r_Bit_index      : natural range 0 to 7              := 0;
    signal r_RX_character   : std_logic_vector(7 downto 0)      := (others => '0');

    -- Two-stage synchroniser for the async RXD input
    signal r_Half_RX_sync   : std_logic                         := '1';
    signal r_RX_sync        : std_logic                         := '1';

begin
     
    -- Sync step for CLK alignment
    p_Synchronization : process(i_CLK)
    begin
        if (rising_edge(i_CLK)) then
            r_Half_RX_sync <= i_UART_RXD;
            r_RX_sync      <= r_Half_RX_sync;
        end if;
    end process p_Synchronization;

    -- UART receive FSM
    p_UART_RX_FSM : process(i_CLK, i_RST) is
    begin
        -- Asynchronous Reset
        if (i_RST = '0') then
            r_RX_state              <= IDLE;
            r_RX_cnt                <= 0;
            r_Bit_index             <= 0;
            r_RX_character          <= (others => '0');
            o_Received_new_byte     <= '0';
            o_Received_byte         <= (others => '0');
        
        elsif (rising_edge(i_CLK)) then
            
            o_Received_new_byte     <= '0';
            case r_RX_state is

                when IDLE           =>
                    if (r_RX_sync = '0') then
                        r_RX_state  <= STARTING;
                        r_RX_cnt    <= 0;
                    end if;

                when STARTING       =>
                    if (r_RX_cnt >= c_half_baud_rate) then
                        r_RX_state  <= RECEIVE_DATA;
                        r_Bit_index <= 0;
                        r_RX_cnt    <= 0;
                    else
                        r_RX_cnt    <= (r_RX_cnt + 1);
                    end if;

                when RECEIVE_DATA   =>
                    if (r_RX_cnt >= c_baud_rate) then
                        
                        r_RX_character      <= r_RX_sync & r_RX_character(7 downto 1);
                        r_Bit_index         <= (r_Bit_index + 1);
                        r_RX_cnt            <= 0;

                        if (r_bit_index = 7) then
                            r_RX_state      <= STOP;
                        end if;
                    else
                        r_RX_cnt            <= (r_rx_cnt + 1);
                    end if;

                when STOP           =>
                    if (r_RX_cnt >= c_baud_rate) then
                        r_RX_cnt            <= 0;
                        r_RX_state          <= IDLE;

                        o_Received_byte     <= r_RX_character;

                        o_Received_new_byte <= '1';
                    else
                        r_RX_cnt            <= (r_RX_cnt + 1);
                    end if;

                when others         =>
                    r_RX_state              <= IDLE;

            end case;
        end if;
    end process p_UART_RX_FSM;
end Behavioral;