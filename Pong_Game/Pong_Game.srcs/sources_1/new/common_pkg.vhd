library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package common_pkg is

    -- Constant to modify game behaviour found here or in game_module_pkg

    -- UART timing (100 MHz clock)
    constant c_baud_rate            : natural := 868;               -- Equilvalent to 115200 bauds (bits per second)
    constant c_half_baud_rate       : natural := 434;               -- Half for receive timing
    
    -- Ball speed 
    constant c_Default_ball_speed   : natural := 4;                 
    constant c_Max_ball_speed       : natural := 10;

    -- Paddle size
    constant c_Default_paddle_size  : natural := 3;                 -- Paddle_size is the half-height full paddle = (2 * paddle_size) + 1 chars
    constant c_Max_paddle_size      : natural := 6;                 -- This is 13 characters
    
end package;

package body common_pkg is
end package body;