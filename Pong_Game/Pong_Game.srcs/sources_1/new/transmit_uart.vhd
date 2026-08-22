library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.common_pkg.all;

entity transmit_uart is
    Port (
        -- External I/O
        i_CLK                   : in    STD_LOGIC;
        i_RST                   : in    STD_LOGIC;
        o_UART_TXD              : out   STD_LOGIC;
        -- Internal
        i_Transmition_message   : in    STD_LOGIC_VECTOR(79 downto 0);
        i_Character_amount      : in    UNSIGNED(3 downto 0);          
        i_Send_current_buffer   : in    STD_LOGIC;                      -- pulse '1' to start
        o_Ready_to_send         : out   STD_LOGIC                       -- '1' = ready
    );
end transmit_uart;

architecture Behavioral of transmit_uart is

    -- TX UART FSM labels:
    type t_TXD_states   is (IDLE, STARTING, TRANSMITTING_DATA, STOP);
    -- Transmition FSM register
    signal r_TX_state   : t_TXD_states                      := IDLE;
    
    -- Counters and indexing registers
    signal r_TX_cnt     : natural range 0 to c_baud_rate    := 0;
    signal r_Bit_index  : natural range 0 to 8              := 0;
    
    -- Current Transmited byte
    signal r_TX_char    : std_logic_vector(7 downto 0)      := (others => '0');
    
    -- Buffer storage for elements to be transmited 
    signal r_TX_message : std_logic_vector(79 downto 0)     := (others => '0');
    signal r_Char_cnt   : natural range 0 to 10             := 0;

begin

    p_UART_TX_FSM : process (i_CLK, i_RST) is
    begin
        
        -- Asynchronous reset (Necessary for UART)
        if (i_RST = '0') then
            r_TX_state              <= IDLE;
            r_TX_cnt                <= 0;
            r_Char_cnt              <= 0;
            r_Bit_index             <= 0;
            o_UART_TXD              <= '1';
            r_TX_char               <= (others => '0');
            o_Ready_to_send         <= '1';
            r_TX_message            <= (others => '0');
    
        -- Synchronous Transmition FSM 
        elsif rising_edge(i_CLK) then
            
            case r_TX_state is

                when IDLE               =>
                    o_UART_TXD                  <= '1';                     -- UART TXD idle high
                    o_Ready_to_send             <= '1';                     -- ready
                    
                    if (i_Send_current_buffer = '1') then
                        r_TX_message            <= i_Transmition_message;   -- Moves values into buffer
                        r_Char_cnt              <= to_integer(i_Character_amount);
                        o_Ready_to_send         <= '0';                     -- now busy
                        r_TX_state              <= STARTING;
                    end if;

                when STARTING           =>
                    if (r_Char_cnt = 0) then                                -- If all characters sent
                        r_TX_state              <= IDLE;                    -- Return to idle
                    else
                                                                            -- Select the byte to transmit (MSB of buffer goes first)
                        r_TX_char <= r_TX_message(((r_Char_cnt * 8) - 1) downto ((r_Char_cnt - 1) * 8));
                        r_Char_cnt      <= (r_Char_cnt - 1);
                        r_Bit_index     <= 0;
                        r_TX_cnt        <= 0;
                        o_UART_TXD      <= '0';                             -- start bit
                        r_TX_state      <= TRANSMITTING_DATA;
                    end if;

                when TRANSMITTING_DATA  =>
                    
                    if (r_TX_cnt >= c_baud_rate) then
                        r_TX_cnt        <= 0;
                        
                        if (r_Bit_index <= 7) then
                            o_UART_TXD  <= r_TX_char(r_Bit_index);
                            r_Bit_index <= (r_Bit_index + 1);
                        else
                            o_UART_TXD  <= '1';                             -- All 8 data bits sent; output stop bit
                            r_TX_state  <= STOP;
                        end if;
                    else
                        r_TX_cnt        <= (r_TX_cnt + 1);
                    end if;

                when STOP               =>
                    if (r_TX_cnt >= c_baud_rate) then
                        r_TX_cnt        <= 0;
                        r_TX_state      <= STARTING;                        -- Go to start for next character
                    else
                        r_TX_cnt        <= (r_TX_cnt + 1);
                    end if;

                when others             =>
                    r_TX_state          <= IDLE;
            end case;
        end if;
    end process p_UART_TX_FSM;
end Behavioral;