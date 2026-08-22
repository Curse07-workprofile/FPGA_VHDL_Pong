library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package game_module_pkg is
    
    -- Screen geometry
    constant c_screen_height        : natural := 61;
    constant c_screen_width         : natural := 237;
    constant c_starting_pos_x       : natural := 118;
    constant c_starting_pos_y       : natural := 29;
    
    -- Ball rate for calculations
    constant c_Max_ball_rate        : natural := 10_000_000;
    
    -- Ball Y divisor
    constant c_Ball_y_divisor       : natural := 2;                 -- Y position changes once per c_Ball_y_divisor X ticks
    constant c_Max_y_divisor        : natural := 8;                 -- Could make vertical speed varible in the future
    
    -- Win condition
    constant c_Win_score            : natural := 3;
    
    -- Serve patterns
    constant c_Num_serve_patterns   : natural := 4;
    constant c_Serve_y_high         : natural := c_starting_pos_y - (c_screen_height / 4);  -- Optimization: bit shift as different type 
    constant c_Serve_y_low          : natural := c_starting_pos_y + (c_screen_height / 4);
    
    
    -- Game Module FSM
    type t_Game_states is (IDLE, PLAYING, GAME_OVER);
    
    
    -- Message_prep / Game_render constants:
    
    -- Constant ANSI codes
    constant c_clear_screen         : std_logic_vector(31 downto 0) := x"1B5B324A";     -- ESC[2J
    constant c_goto_top             : std_logic_vector(23 downto 0) := x"1B5B48";       -- ESC[H
    constant c_hide_cursor          : std_logic_vector(47 downto 0) := x"1B5B3F32356C"; -- ESC[?25l
    
    
    type byte_array_t is array (natural range <>) of std_logic_vector(79 downto 0);
    
    -- Constant Game Winner UART message
    subtype t_message is byte_array_t(0 to 3);
    constant c_game_over_message    : t_message := (
        0 => c_clear_screen & c_goto_top & x"202020",
        1 => x"504C4159455220312020",                       -- "PLAYER 1  "
        2 => x"504C4159455220322020",                       -- "PLAYER 2  "
        3 => x"57494E53210D0A202020"                        -- "WINS!\r\n   "
        );
     
    -- Constant Title Screen UART message
    subtype t_title_screen is byte_array_t(0 to 25);
    constant c_title_screen_message : t_title_screen    := (
        0 => c_hide_cursor & c_clear_screen,
        1 => c_goto_top & x"00000000000000",    -- The Title screen looks something like this:
        2 => x"20204F4F4F2020204F4F",       --  OOO     O O     O   O    O O   
        3 => x"20204F20204F20204F4F",       --  O  O  O     O   OO  O  O     O
        4 => x"202020200D0B20204F20",       --  OOO   O     O   O O O  O   
        5 => x"204F204F20204F204F4F",       --  O     O     O   O   O  O    OO
        6 => x"204F204F200D0B20204F",       --  O       O O     O   O    O O
        7 => x"4F4F20204F20204F204F",       --  =========================
        8 => x"204F4F204F0D0B20204F",       --  P1: W = up    S = dn
        9 => x"202020204F20204F204F",       --  P2: O = up    K = dn
        10 => x"20204F204F20204F4F0D",      --  =========================
        11 => x"0B20204F20202020204F",      --  >> Press any key <<
        12 => x"4F20204F20204F20204F",      
        13 => x"4F0D0B20203D3D3D3D3D",      
        14 => x"3D3D3D3D3D3D3D3D3D3D",
        15 => x"3D3D3D3D3D3D3D3D0D0B",
        16 => x"202050313A2057203D20",
        17 => x"7570202053203D20646E",
        18 => x"0D0B202050323A204F20",
        19 => x"3D20757020204B203D20",
        20 => x"646E0D0B20203D3D3D3D",
        21 => x"3D3D3D3D3D3D3D3D3D3D",
        22 => x"3D3D3D3D3D3D3D3D3D0D",
        23 => x"0B20203E3E2050726573",
        24 => x"7320616E79206B657920",
        25 => x"3C3C0D0B202020202020"
        );
    
end package;

package body game_module_pkg is
end package body;