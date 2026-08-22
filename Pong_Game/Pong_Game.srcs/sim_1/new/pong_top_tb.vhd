library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.game_module_pkg.all;

entity pong_top_tb is
    
end pong_top_tb;

architecture Behavioral of pong_top_tb is
    
    constant C_CLK_PERIOD   : time := 10 ns;  -- 100MHz (Arty A7-100T)
    signal   o_CLK          : std_logic := '0';
    signal   o_RST          : std_logic := '1';
    
    
    signal o_BTN        : std_logic_vector(4 downto 0) := (others => '0');
    signal i_AN         : std_logic_vector(7 downto 0);
    signal i_C          : std_logic_vector(7 downto 0);
    signal o_UART_TXD   : std_logic := '1';
    signal i_UART_RXD   : std_logic;
    signal i_LED16      : std_logic_vector(2 downto 0);
    signal i_LED17      : std_logic_vector(2 downto 0);
    
    constant c_TITLE_PKTS : natural := 25;
    constant c_wordlength : natural := 10;
    
    
    signal w_sim_done     : std_logic := '0';
    
    constant c_Baud_rate_period : time := 8680 ns; -- for 11520 baud rate
    
    function f_to_hex (b : std_logic_vector(7 downto 0)) return string is
            constant hex_chars : string(1 to 16) := "0123456789ABCDEF";
            variable hi : integer := to_integer(unsigned(b(7 downto 4)));
            variable lo : integer := to_integer(unsigned(b(3 downto 0)));
        begin
            return "0x" & hex_chars(hi + 1) & hex_chars(lo + 1);
    end function;
    
begin

    simulation_inst : entity work.pong_top
        port map (
           CLK100MHZ    => o_CLK,
           CPU_RESETN   => o_RST,
           UART_RXD_OUT => i_UART_RXD, 
           UART_TXD_IN  => o_UART_TXD,
           BTN          => o_BTN,
           AN           => i_AN,
           C            => i_C,
           LED17_BGR    => i_LED17,
           LED16_BGR    => i_LED16
        );
        
        p_CLK : process
        begin
            while (w_sim_done = '0') loop
                o_CLK <= '0';
                wait for (C_CLK_PERIOD / 2);
                o_CLK <= '1';
                wait for (C_CLK_PERIOD / 2);
            end loop;
            wait;
        end process;
        
        p_Simulate : process
            
            -- AI generated code from this point
            variable v_rx_byte : std_logic_vector(7 downto 0);
            variable v_rx_word : std_logic_vector(79 downto 0);
            variable v_pass    : boolean;
    
            -- UART byte reception
            procedure uart_recv_byte (variable o_byte : out std_logic_vector(7 downto 0)) is
            begin
                wait until i_UART_RXD = '0';
                wait for (c_Baud_rate_period + (c_Baud_rate_period / 2));   -- centre of bit 0
                for i in 0 to 7 loop
                    o_byte(i) := i_UART_RXD;                                -- LSB first
                    wait for c_Baud_rate_period;
                end loop;
                                                                            -- leaves cursor in the middle of the stop bit
            end procedure;
    
            -- UART line/word reception
            procedure uart_recv_word (
                    count          : in  natural range 1 to 10;
                    variable o_word : out std_logic_vector(79 downto 0)) is
            begin
                o_word := (others => '0');
                for b in 0 to count - 1 loop
                    uart_recv_byte(v_rx_byte);
                    o_word(79 - b*8 downto 72 - b*8) := v_rx_byte;
                end loop;
            end procedure;
    
        begin
            
            o_RST <= '0';
            wait for C_CLK_PERIOD * 10;
            o_RST <= '1';
            
            -- this fails for some reason
            -- TEST - title screen UART output
            report "=== TEST 1: title screen UART output ("
                 & integer'image(c_TITLE_PKTS) & " packets) ===";
            v_pass := true;
    
            for pkt in 0 to (c_TITLE_PKTS - 1) loop
    
                uart_recv_word(c_wordlength, v_rx_word);
    
                if v_rx_word /= c_title_screen_message(pkt) then
                    -- Report each mismatched byte individually for easy diagnosis 
                    for b in 0 to (c_wordlength - 1) loop
                        if v_rx_word((79 - (b*8)) downto (72 - (b*8))) /=
                           c_title_screen_message(pkt)((79 - (b*8)) downto (72 - (b*8))) then
                            report "  MISMATCH packet "  & integer'image(pkt)
                                 & "  byte "             & integer'image(b)
                                 & "  expected (dec) "   &
                                     f_to_hex(
                                         c_title_screen_message(pkt)((79 - (b*8)) downto (72 - (b*8))))
                                 & "  got (dec) "        & 
                                     f_to_hex(
                                         v_rx_word((79 - (b*8)) downto (72 - (b*8))))
                                 severity error;
                        end if;
                    end loop;
                    v_pass := false;
                end if;
                -- AI generated to this point (With parts of my code inbetween)
            end loop;
    
            if v_pass then
                report "  PASS: all "
                     & integer'image(c_TITLE_PKTS)
                     & " packets matched";
            else
                report "  FAIL: see mismatches above" severity error;
            end if;
            
            -- Other tests: 
                -- Test LED display for state changes
            
             report "=== All tests complete ===";
            w_sim_done <= '1';
            wait;
            
    end process;

end Behavioral;
