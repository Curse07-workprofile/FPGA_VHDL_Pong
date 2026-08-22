-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri May  8 00:07:27 2026
-- Host        : Curse-Legion running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/jim32/OneDrive/Desktop/VHDL/ThursdayGroupG/Pong_Game/Pong_Game.sim/sim_1/impl/func/xsim/pong_top_tb_func_impl.vhd
-- Design      : pong_top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity button_inputs is
  port (
    r_Btn_mod_req : out STD_LOGIC;
    r_Btn_cycle : out STD_LOGIC;
    r_Btn_inc : out STD_LOGIC;
    o_Mod_state_change_reg_0 : out STD_LOGIC;
    o_Mod_state_change_reg_1 : out STD_LOGIC;
    CPU_RESETN : out STD_LOGIC;
    o_Increment_reg_0 : out STD_LOGIC;
    o_Mod_state_change_reg_2 : out STD_LOGIC;
    o_Mod_state_change_reg_3 : out STD_LOGIC;
    o_Increment_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    CPU_RESETN_IBUF : in STD_LOGIC;
    BTN_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_Ball_speed_reg[0]\ : in STD_LOGIC;
    \r_Ball_speed_reg[0]_0\ : in STD_LOGIC;
    w_idle_state : in STD_LOGIC;
    \r_Paddle_size_reg[2]\ : in STD_LOGIC;
    \r_Paddle_size_reg[2]_0\ : in STD_LOGIC;
    \r_Paddle_size_reg[0]\ : in STD_LOGIC;
    \r_Paddle_size_reg[2]_1\ : in STD_LOGIC;
    \r_Ball_speed_reg[3]\ : in STD_LOGIC;
    \r_Ball_speed_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end button_inputs;

architecture STRUCTURE of button_inputs is
  signal \^o_increment_reg_0\ : STD_LOGIC;
  signal \r_Ball_speed[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_Ball_speed[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_Ball_speed[3]_i_5_n_0\ : STD_LOGIC;
  signal \^r_btn_cycle\ : STD_LOGIC;
  signal r_Btn_dec : STD_LOGIC;
  signal \^r_btn_inc\ : STD_LOGIC;
  signal \^r_btn_mod_req\ : STD_LOGIC;
  signal r_spam_center : STD_LOGIC;
  signal r_spam_center0 : STD_LOGIC;
  signal r_spam_center_i_1_n_0 : STD_LOGIC;
  signal r_spam_down : STD_LOGIC;
  signal r_spam_down0 : STD_LOGIC;
  signal r_spam_down_i_1_n_0 : STD_LOGIC;
  signal r_spam_lr : STD_LOGIC;
  signal r_spam_lr0 : STD_LOGIC;
  signal r_spam_lr_i_1_n_0 : STD_LOGIC;
  signal r_spam_up : STD_LOGIC;
  signal r_spam_up0 : STD_LOGIC;
  signal r_spam_up_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_Decrement_i_1 : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of o_Increment_i_1 : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of o_Mod_state_change_i_1 : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of o_Mod_state_request_i_1 : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of r_spam_center_i_1 : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of r_spam_down_i_1 : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of r_spam_lr_i_1 : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of r_spam_up_i_1 : label is "soft_lutpair145";
begin
  o_Increment_reg_0 <= \^o_increment_reg_0\;
  r_Btn_cycle <= \^r_btn_cycle\;
  r_Btn_inc <= \^r_btn_inc\;
  r_Btn_mod_req <= \^r_btn_mod_req\;
o_Decrement_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BTN_IBUF(4),
      I1 => r_spam_down,
      O => r_spam_down0
    );
o_Decrement_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_down0,
      Q => r_Btn_dec,
      R => '0'
    );
o_Increment_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BTN_IBUF(1),
      I1 => r_spam_up,
      O => r_spam_up0
    );
o_Increment_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_up0,
      Q => \^r_btn_inc\,
      R => '0'
    );
\o_Mod_display_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3BF008CF7FF0080"
    )
        port map (
      I0 => \^r_btn_cycle\,
      I1 => w_idle_state,
      I2 => \r_Ball_speed_reg[0]_0\,
      I3 => \r_Ball_speed_reg[0]\,
      I4 => CPU_RESETN_IBUF,
      I5 => \^r_btn_mod_req\,
      O => o_Mod_state_change_reg_1
    );
\o_Mod_display_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FEFEFCF0F0F0F0F"
    )
        port map (
      I0 => \^r_btn_cycle\,
      I1 => \^r_btn_mod_req\,
      I2 => CPU_RESETN_IBUF,
      I3 => \r_Ball_speed_reg[0]\,
      I4 => \r_Ball_speed_reg[0]_0\,
      I5 => w_idle_state,
      O => o_Mod_state_change_reg_0
    );
\o_Mod_display_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^r_btn_cycle\,
      I1 => \r_Ball_speed_reg[0]\,
      O => o_Mod_state_change_reg_2
    );
\o_Mod_display_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_btn_cycle\,
      I1 => \r_Ball_speed_reg[0]_0\,
      O => o_Mod_state_change_reg_3
    );
o_Mod_state_change_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => r_spam_lr,
      I1 => BTN_IBUF(2),
      I2 => BTN_IBUF(3),
      O => r_spam_lr0
    );
o_Mod_state_change_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_lr0,
      Q => \^r_btn_cycle\,
      R => '0'
    );
o_Mod_state_request_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BTN_IBUF(0),
      I1 => r_spam_center,
      O => r_spam_center0
    );
o_Mod_state_request_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_center0,
      Q => \^r_btn_mod_req\,
      R => '0'
    );
\r_Ball_speed[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E000"
    )
        port map (
      I0 => \r_Ball_speed[3]_i_3_n_0\,
      I1 => \r_Ball_speed[3]_i_4_n_0\,
      I2 => w_idle_state,
      I3 => \r_Ball_speed_reg[0]\,
      I4 => \r_Ball_speed_reg[0]_0\,
      I5 => Q(0),
      O => D(0)
    );
\r_Ball_speed[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AA08008"
    )
        port map (
      I0 => \r_Ball_speed_reg[3]\,
      I1 => \r_Ball_speed[3]_i_4_n_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \r_Ball_speed[3]_i_3_n_0\,
      O => D(1)
    );
\r_Ball_speed[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6AA9FFFFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \r_Ball_speed[3]_i_4_n_0\,
      I4 => \r_Ball_speed[3]_i_3_n_0\,
      I5 => \r_Ball_speed_reg[3]\,
      O => D(2)
    );
\r_Ball_speed[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E000FFFFFFFF"
    )
        port map (
      I0 => \r_Ball_speed[3]_i_3_n_0\,
      I1 => \r_Ball_speed[3]_i_4_n_0\,
      I2 => w_idle_state,
      I3 => \r_Ball_speed_reg[0]\,
      I4 => \r_Ball_speed_reg[0]_0\,
      I5 => CPU_RESETN_IBUF,
      O => E(0)
    );
\r_Ball_speed[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888808"
    )
        port map (
      I0 => \r_Ball_speed[3]_i_5_n_0\,
      I1 => \r_Ball_speed_reg[3]\,
      I2 => \r_Ball_speed[3]_i_3_n_0\,
      I3 => \r_Ball_speed_reg[3]_0\,
      I4 => Q(3),
      O => D(3)
    );
\r_Ball_speed[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \^r_btn_inc\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      O => \r_Ball_speed[3]_i_3_n_0\
    );
\r_Ball_speed[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => r_Btn_dec,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      O => \r_Ball_speed[3]_i_4_n_0\
    );
\r_Ball_speed[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACACACACAEACAAA"
    )
        port map (
      I0 => \^r_btn_inc\,
      I1 => r_Btn_dec,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \r_Ball_speed[3]_i_5_n_0\
    );
\r_Paddle_size[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01D5FFFFFFFF"
    )
        port map (
      I0 => \^r_btn_inc\,
      I1 => \r_Paddle_size_reg[2]\,
      I2 => \r_Paddle_size_reg[2]_0\,
      I3 => r_Btn_dec,
      I4 => \r_Paddle_size_reg[0]\,
      I5 => \r_Ball_speed_reg[0]_0\,
      O => \^o_increment_reg_0\
    );
\r_Paddle_size[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1337D7F7"
    )
        port map (
      I0 => \^r_btn_inc\,
      I1 => \r_Paddle_size_reg[2]\,
      I2 => \r_Paddle_size_reg[2]_0\,
      I3 => \r_Paddle_size_reg[2]_1\,
      I4 => r_Btn_dec,
      O => o_Increment_reg_1
    );
\r_Paddle_size[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^o_increment_reg_0\,
      O => CPU_RESETN
    );
r_spam_center_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_spam_center,
      I2 => BTN_IBUF(0),
      O => r_spam_center_i_1_n_0
    );
r_spam_center_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_center_i_1_n_0,
      Q => r_spam_center,
      R => '0'
    );
r_spam_down_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_spam_down,
      I2 => BTN_IBUF(4),
      O => r_spam_down_i_1_n_0
    );
r_spam_down_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_down_i_1_n_0,
      Q => r_spam_down,
      R => '0'
    );
r_spam_lr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8FC"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => BTN_IBUF(3),
      I2 => BTN_IBUF(2),
      I3 => r_spam_lr,
      O => r_spam_lr_i_1_n_0
    );
r_spam_lr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_lr_i_1_n_0,
      Q => r_spam_lr,
      R => '0'
    );
r_spam_up_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_spam_up,
      I2 => BTN_IBUF(1),
      O => r_spam_up_i_1_n_0
    );
r_spam_up_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_spam_up_i_1_n_0,
      Q => r_spam_up,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity display_output is
  port (
    r_Blink_reg_0 : out STD_LOGIC;
    \r_Message_index_reg[1]_0\ : out STD_LOGIC;
    \r_Message_index_reg[0]_0\ : out STD_LOGIC;
    \r_Message_index_reg[2]_0\ : out STD_LOGIC;
    \r_Message_index_reg[0]_1\ : out STD_LOGIC;
    \r_Scroll_offset_reg[0]_0\ : out STD_LOGIC;
    \r_Message_index_reg[1]_1\ : out STD_LOGIC;
    \r_Message_index_reg[1]_2\ : out STD_LOGIC;
    \r_p2_score_reg[0]\ : out STD_LOGIC;
    \r_Message_index_reg[0]_2\ : out STD_LOGIC;
    \o_Anodes_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \o_Cathodes_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \o_LED17_bgr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_LED16_bgr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    w_Paddle_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_Cathodes_reg[6]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Cathodes_reg[4]_0\ : in STD_LOGIC;
    \o_Cathodes[1]_i_5_0\ : in STD_LOGIC;
    \o_Cathodes[2]_i_2_0\ : in STD_LOGIC;
    \o_Cathodes_reg[5]_0\ : in STD_LOGIC;
    \o_Cathodes[5]_i_3_0\ : in STD_LOGIC;
    CPU_RESETN_IBUF : in STD_LOGIC;
    \o_Cathodes_reg[0]_0\ : in STD_LOGIC;
    \o_Cathodes_reg[0]_1\ : in STD_LOGIC;
    \o_Cathodes[3]_i_2_0\ : in STD_LOGIC;
    \o_Cathodes_reg[4]_1\ : in STD_LOGIC;
    \o_Cathodes_reg[3]_0\ : in STD_LOGIC;
    \o_Cathodes_reg[4]_2\ : in STD_LOGIC;
    \o_Cathodes_reg[5]_1\ : in STD_LOGIC;
    \o_Cathodes[2]_i_2_1\ : in STD_LOGIC;
    w_P2_score : in STD_LOGIC_VECTOR ( 1 downto 0 );
    w_P1_score : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_Cathodes_reg[1]_0\ : in STD_LOGIC;
    w_Mod_display_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_r_display_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_r_display_state_reg[2]_1\ : in STD_LOGIC;
    \o_Cathodes[0]_i_7_0\ : in STD_LOGIC
  );
end display_output;

architecture STRUCTURE of display_output is
  signal \FSM_sequential_r_display_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_Anodes[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_Anodes[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_Anodes[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_Anodes[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_Anodes[7]_i_5_n_0\ : STD_LOGIC;
  signal o_Cathodes : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \o_Cathodes[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[0]_i_5_n_0\ : STD_LOGIC;
  signal \o_Cathodes[0]_i_6_n_0\ : STD_LOGIC;
  signal \o_Cathodes[0]_i_7_n_0\ : STD_LOGIC;
  signal \o_Cathodes[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_Cathodes[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_Cathodes[1]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[1]_i_5_n_0\ : STD_LOGIC;
  signal \o_Cathodes[1]_i_7_n_0\ : STD_LOGIC;
  signal \o_Cathodes[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_Cathodes[2]_i_3_n_0\ : STD_LOGIC;
  signal \o_Cathodes[2]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[2]_i_5_n_0\ : STD_LOGIC;
  signal \o_Cathodes[2]_i_9_n_0\ : STD_LOGIC;
  signal \o_Cathodes[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_Cathodes[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_Cathodes[3]_i_6_n_0\ : STD_LOGIC;
  signal \o_Cathodes[3]_i_8_n_0\ : STD_LOGIC;
  signal \o_Cathodes[3]_i_9_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_12_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_13_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_14_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_3_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_5_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_6_n_0\ : STD_LOGIC;
  signal \o_Cathodes[4]_i_9_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_12_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_13_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_3_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_5_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_8_n_0\ : STD_LOGIC;
  signal \o_Cathodes[5]_i_9_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_10_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_11_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_12_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_4_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_6_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_7_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_8_n_0\ : STD_LOGIC;
  signal \o_Cathodes[6]_i_9_n_0\ : STD_LOGIC;
  signal \o_Cathodes_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \o_Cathodes_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \o_LED16_bgr[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_LED16_bgr[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_LED16_bgr[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_LED16_bgr[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_LED17_bgr[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_LED17_bgr[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_LED17_bgr[2]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_Blink_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Blink_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_Blink_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_Blink_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_Blink_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal r_Blink_counter_reg : STD_LOGIC_VECTOR ( 25 downto 7 );
  signal \r_Blink_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_Blink_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \r_Blink_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \r_Blink_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_Blink_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_Blink_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_Blink_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_Blink_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_Blink_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_Blink_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_Blink_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_Blink_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_Blink_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Blink_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_Blink_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_Blink_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Blink_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_Blink_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_Blink_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_Blink_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Blink_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal r_Blink_i_1_n_0 : STD_LOGIC;
  signal \^r_blink_reg_0\ : STD_LOGIC;
  signal \r_Increment_value[0]_i_2_n_0\ : STD_LOGIC;
  signal r_Increment_value_reg : STD_LOGIC_VECTOR ( 16 downto 5 );
  signal \r_Increment_value_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Increment_value_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_Increment_value_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_Increment_value_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_Increment_value_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_Increment_value_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_Increment_value_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_Increment_value_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_Increment_value_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_Increment_value_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_Increment_value_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_Increment_value_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Increment_value_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_Increment_value_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_Increment_value_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_Increment_value_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_Increment_value_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Increment_value_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_Increment_value_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_Increment_value_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_Increment_value_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_Increment_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Increment_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Increment_value_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Increment_value_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Increment_value_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Message_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Message_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Message_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \^r_message_index_reg[0]_0\ : STD_LOGIC;
  signal \^r_message_index_reg[0]_1\ : STD_LOGIC;
  signal \^r_message_index_reg[1]_0\ : STD_LOGIC;
  signal \^r_message_index_reg[1]_1\ : STD_LOGIC;
  signal \^r_message_index_reg[2]_0\ : STD_LOGIC;
  signal r_Scroll_offset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_Scroll_offset[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Scroll_offset[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_Scroll_offset[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_Scroll_offset[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_Scroll_offset[4]_i_6_n_0\ : STD_LOGIC;
  signal \r_Scroll_offset[4]_i_7_n_0\ : STD_LOGIC;
  signal r_Scroll_offset_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^r_scroll_offset_reg[0]_0\ : STD_LOGIC;
  signal r_Scroll_timer : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_Scroll_timer[0]_i_3_n_0\ : STD_LOGIC;
  signal r_Scroll_timer_reg : STD_LOGIC_VECTOR ( 26 downto 6 );
  signal \r_Scroll_timer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_Scroll_timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_Scroll_timer_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Scroll_timer_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Scroll_timer_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Scroll_timer_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Scroll_timer_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Scroll_timer_reg_n_0_[5]\ : STD_LOGIC;
  signal r_display_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_display_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Blink_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Blink_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Blink_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Blink_counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Blink_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_Blink_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_Blink_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Blink_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Increment_value_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Increment_value_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Increment_value_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_Increment_value_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_Increment_value_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Increment_value_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Scroll_timer_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Scroll_timer_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Scroll_timer_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Scroll_timer_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Scroll_timer_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_Scroll_timer_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_Scroll_timer_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_Scroll_timer_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \FSM_sequential_r_display_state[1]_i_1\ : label is 233;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \FSM_sequential_r_display_state[2]_i_1\ : label is 208;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_display_state_reg[0]\ : label is "modifying_paddle:011,modifying_ball:100,waiting:000,game_over:001,playing:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_display_state_reg[1]\ : label is "modifying_paddle:011,modifying_ball:100,waiting:000,game_over:001,playing:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_display_state_reg[2]\ : label is "modifying_paddle:011,modifying_ball:100,waiting:000,game_over:001,playing:010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_Anodes[2]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \o_Anodes[3]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \o_Anodes[4]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \o_Anodes[5]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \o_Anodes[6]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \o_Anodes[7]_i_3\ : label is "soft_lutpair136";
  attribute \PinAttr:I5:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I5:HOLD_DETOUR\ of \o_Cathodes[2]_i_1\ : label is 190;
  attribute SOFT_HLUTNM of \o_LED16_bgr[0]_i_2\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \o_LED16_bgr[1]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \o_LED17_bgr[1]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \o_LED17_bgr[2]_i_1\ : label is "soft_lutpair129";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Blink_counter_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Increment_value_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Increment_value_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Increment_value_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Increment_value_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Increment_value_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \r_Message_index[1]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \r_Message_index[2]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \r_Scroll_offset[1]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \r_Scroll_offset[2]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \r_Scroll_offset[3]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \r_Scroll_offset[4]_i_3\ : label is "soft_lutpair124";
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Scroll_timer_reg[8]_i_1\ : label is 35;
begin
  r_Blink_reg_0 <= \^r_blink_reg_0\;
  \r_Message_index_reg[0]_0\ <= \^r_message_index_reg[0]_0\;
  \r_Message_index_reg[0]_1\ <= \^r_message_index_reg[0]_1\;
  \r_Message_index_reg[1]_0\ <= \^r_message_index_reg[1]_0\;
  \r_Message_index_reg[1]_1\ <= \^r_message_index_reg[1]_1\;
  \r_Message_index_reg[2]_0\ <= \^r_message_index_reg[2]_0\;
  \r_Scroll_offset_reg[0]_0\ <= \^r_scroll_offset_reg[0]_0\;
\FSM_sequential_r_display_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D000D000DD00D0"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \FSM_sequential_r_display_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_r_display_state_reg[2]_1\,
      I3 => \FSM_sequential_r_display_state_reg[2]_0\,
      I4 => w_Mod_display_state(1),
      I5 => w_Mod_display_state(0),
      O => \r_display_state__0\(0)
    );
\FSM_sequential_r_display_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D000D000D0D0D00"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \FSM_sequential_r_display_state[2]_i_2_n_0\,
      I2 => \FSM_sequential_r_display_state_reg[2]_1\,
      I3 => \FSM_sequential_r_display_state_reg[2]_0\,
      I4 => w_Mod_display_state(1),
      I5 => w_Mod_display_state(0),
      O => \r_display_state__0\(1)
    );
\FSM_sequential_r_display_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000D0"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \FSM_sequential_r_display_state[2]_i_2_n_0\,
      I2 => w_Mod_display_state(0),
      I3 => w_Mod_display_state(1),
      I4 => \FSM_sequential_r_display_state_reg[2]_0\,
      I5 => \FSM_sequential_r_display_state_reg[2]_1\,
      O => \r_display_state__0\(2)
    );
\FSM_sequential_r_display_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_display_state(1),
      I1 => r_display_state(0),
      O => \FSM_sequential_r_display_state[2]_i_2_n_0\
    );
\FSM_sequential_r_display_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_display_state__0\(0),
      Q => r_display_state(0),
      R => '0'
    );
\FSM_sequential_r_display_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_display_state__0\(1),
      Q => r_display_state(1),
      R => '0'
    );
\FSM_sequential_r_display_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_display_state__0\(2),
      Q => r_display_state(2),
      R => '0'
    );
\o_Anodes[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[2]_0\,
      O => \o_Anodes[0]_i_1_n_0\
    );
\o_Anodes[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => \^r_message_index_reg[2]_0\,
      I2 => \^r_message_index_reg[0]_0\,
      O => \o_Anodes[1]_i_1_n_0\
    );
\o_Anodes[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[2]_0\,
      O => \o_Anodes[2]_i_1_n_0\
    );
\o_Anodes[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^r_message_index_reg[0]_0\,
      I1 => \^r_message_index_reg[2]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      O => \o_Anodes[3]_i_1_n_0\
    );
\o_Anodes[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[1]_0\,
      I2 => \^r_message_index_reg[0]_0\,
      O => \o_Anodes[4]_i_1_n_0\
    );
\o_Anodes[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[1]_0\,
      I2 => \^r_message_index_reg[0]_0\,
      O => \o_Anodes[5]_i_1_n_0\
    );
\o_Anodes[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      O => \o_Anodes[6]_i_1_n_0\
    );
\o_Anodes[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \o_Anodes[7]_i_2_n_0\,
      O => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \o_Anodes[7]_i_4_n_0\,
      I1 => \o_Anodes[7]_i_5_n_0\,
      I2 => r_Increment_value_reg(15),
      I3 => r_Increment_value_reg(16),
      O => \o_Anodes[7]_i_2_n_0\
    );
\o_Anodes[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^r_message_index_reg[0]_0\,
      I1 => \^r_message_index_reg[2]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      O => \o_Anodes[7]_i_3_n_0\
    );
\o_Anodes[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_Increment_value_reg(13),
      I1 => r_Increment_value_reg(14),
      I2 => r_Increment_value_reg(11),
      I3 => r_Increment_value_reg(12),
      O => \o_Anodes[7]_i_4_n_0\
    );
\o_Anodes[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => r_Increment_value_reg(7),
      I1 => r_Increment_value_reg(6),
      I2 => r_Increment_value_reg(5),
      I3 => r_Increment_value_reg(8),
      I4 => r_Increment_value_reg(9),
      I5 => r_Increment_value_reg(10),
      O => \o_Anodes[7]_i_5_n_0\
    );
\o_Anodes_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[0]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(0),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[1]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(1),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[2]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(2),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[3]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(3),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[4]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(4),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[5]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(5),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[6]_i_1_n_0\,
      Q => \o_Anodes_reg[7]_0\(6),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Anodes_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Anodes[7]_i_2_n_0\,
      D => \o_Anodes[7]_i_3_n_0\,
      Q => \o_Anodes_reg[7]_0\(7),
      S => \o_Anodes[7]_i_1_n_0\
    );
\o_Cathodes[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8A88"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[0]_1\,
      I2 => \o_Cathodes_reg[0]_0\,
      I3 => \o_Cathodes_reg[0]_1\,
      I4 => \o_Cathodes[6]_i_3_n_0\,
      I5 => \o_Cathodes[0]_i_4_n_0\,
      O => o_Cathodes(0)
    );
\o_Cathodes[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF005D0000005D"
    )
        port map (
      I0 => r_display_state(0),
      I1 => \o_Cathodes[4]_i_5_n_0\,
      I2 => \o_Cathodes[0]_i_5_n_0\,
      I3 => \o_Cathodes[0]_i_6_n_0\,
      I4 => r_display_state(1),
      I5 => \o_Cathodes[0]_i_7_n_0\,
      O => \o_Cathodes[0]_i_4_n_0\
    );
\o_Cathodes[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE02CE0EFE32FE32"
    )
        port map (
      I0 => \o_Cathodes[3]_i_2_0\,
      I1 => \o_Cathodes[5]_i_9_n_0\,
      I2 => \o_Cathodes[5]_i_8_n_0\,
      I3 => \^r_scroll_offset_reg[0]_0\,
      I4 => \o_Cathodes_reg[4]_1\,
      I5 => \^r_message_index_reg[1]_1\,
      O => \o_Cathodes[0]_i_5_n_0\
    );
\o_Cathodes[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEBAAAAAAEF"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \^r_message_index_reg[1]_0\,
      I2 => \^r_message_index_reg[0]_0\,
      I3 => r_display_state(0),
      I4 => r_display_state(1),
      I5 => \^r_message_index_reg[2]_0\,
      O => \o_Cathodes[0]_i_6_n_0\
    );
\o_Cathodes[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A888A888A88"
    )
        port map (
      I0 => \o_Cathodes[3]_i_9_n_0\,
      I1 => \o_Cathodes[6]_i_11_n_0\,
      I2 => \^r_message_index_reg[0]_1\,
      I3 => w_Paddle_size(1),
      I4 => w_Paddle_size(2),
      I5 => w_Paddle_size(0),
      O => \o_Cathodes[0]_i_7_n_0\
    );
\o_Cathodes[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4F4F7F4"
    )
        port map (
      I0 => \o_Cathodes[1]_i_2_n_0\,
      I1 => r_display_state(1),
      I2 => \o_Cathodes[1]_i_3_n_0\,
      I3 => r_display_state(0),
      I4 => \o_Cathodes[1]_i_4_n_0\,
      I5 => \o_Cathodes[1]_i_5_n_0\,
      O => o_Cathodes(1)
    );
\o_Cathodes[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000A0A0FFFF"
    )
        port map (
      I0 => r_display_state(0),
      I1 => \o_Cathodes_reg[1]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_blink_reg_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \^r_message_index_reg[2]_0\,
      O => \o_Cathodes[1]_i_2_n_0\
    );
\o_Cathodes[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAFEAA"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \^r_message_index_reg[2]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_message_index_reg[0]_0\,
      I4 => r_display_state(1),
      I5 => r_display_state(0),
      O => \o_Cathodes[1]_i_3_n_0\
    );
\o_Cathodes[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88080A8202A2A20"
    )
        port map (
      I0 => \o_Cathodes[4]_i_5_n_0\,
      I1 => \^r_message_index_reg[1]_1\,
      I2 => \o_Cathodes[5]_i_8_n_0\,
      I3 => r_Scroll_offset_reg(0),
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \o_Cathodes[5]_i_9_n_0\,
      O => \o_Cathodes[1]_i_4_n_0\
    );
\o_Cathodes[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000222000000000"
    )
        port map (
      I0 => \o_Cathodes[1]_i_7_n_0\,
      I1 => r_display_state(0),
      I2 => \^r_message_index_reg[2]_0\,
      I3 => \^r_message_index_reg[0]_0\,
      I4 => r_display_state(1),
      I5 => r_display_state(2),
      O => \o_Cathodes[1]_i_5_n_0\
    );
\o_Cathodes[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0787070707870787"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_blink_reg_0\,
      I4 => \o_Cathodes[1]_i_5_0\,
      I5 => \o_Cathodes_reg[6]_1\(2),
      O => \o_Cathodes[1]_i_7_n_0\
    );
\o_Cathodes[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAA88AAAAAA88"
    )
        port map (
      I0 => \o_Cathodes[2]_i_2_n_0\,
      I1 => \o_Cathodes[2]_i_3_n_0\,
      I2 => \^r_blink_reg_0\,
      I3 => \^r_message_index_reg[1]_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \^r_message_index_reg[2]_0\,
      O => o_Cathodes(2)
    );
\o_Cathodes[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_message_index_reg[0]_0\,
      I1 => \^r_message_index_reg[2]_0\,
      O => \r_Message_index_reg[0]_2\
    );
\o_Cathodes[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFD0FFFFFFD0"
    )
        port map (
      I0 => \o_Cathodes[4]_i_5_n_0\,
      I1 => \o_Cathodes[2]_i_4_n_0\,
      I2 => r_display_state(0),
      I3 => \o_Cathodes[2]_i_5_n_0\,
      I4 => r_display_state(1),
      I5 => \o_Cathodes_reg[2]_i_6_n_0\,
      O => \o_Cathodes[2]_i_2_n_0\
    );
\o_Cathodes[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777F777"
    )
        port map (
      I0 => \FSM_sequential_r_display_state[2]_i_2_n_0\,
      I1 => r_display_state(2),
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \o_Cathodes_reg[6]_1\(1),
      I4 => \o_Cathodes_reg[6]_1\(0),
      I5 => \o_Cathodes_reg[6]_1\(2),
      O => \o_Cathodes[2]_i_3_n_0\
    );
\o_Cathodes[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CFFBFF00CFC8CC"
    )
        port map (
      I0 => \o_Cathodes_reg[4]_1\,
      I1 => \o_Cathodes[5]_i_9_n_0\,
      I2 => \^r_scroll_offset_reg[0]_0\,
      I3 => \^r_message_index_reg[1]_1\,
      I4 => \o_Cathodes[5]_i_8_n_0\,
      I5 => \o_Cathodes[2]_i_2_1\,
      O => \o_Cathodes[2]_i_4_n_0\
    );
\o_Cathodes[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEEAAAAAAAB"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \^r_message_index_reg[1]_0\,
      I2 => \^r_message_index_reg[2]_0\,
      I3 => r_display_state(0),
      I4 => r_display_state(1),
      I5 => \^r_message_index_reg[0]_0\,
      O => \o_Cathodes[2]_i_5_n_0\
    );
\o_Cathodes[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220555555550000"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_blink_reg_0\,
      I2 => w_Paddle_size(0),
      I3 => w_Paddle_size(2),
      I4 => \^r_message_index_reg[1]_0\,
      I5 => \^r_message_index_reg[0]_0\,
      O => \o_Cathodes[2]_i_9_n_0\
    );
\o_Cathodes[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AA20AAA8AA20"
    )
        port map (
      I0 => \o_Cathodes[3]_i_2_n_0\,
      I1 => \^r_message_index_reg[1]_0\,
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \o_Cathodes[6]_i_3_n_0\,
      I4 => \^r_message_index_reg[2]_0\,
      I5 => \o_Cathodes_reg[3]_0\,
      O => o_Cathodes(3)
    );
\o_Cathodes[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00D0"
    )
        port map (
      I0 => \o_Cathodes[4]_i_5_n_0\,
      I1 => \o_Cathodes[3]_i_4_n_0\,
      I2 => r_display_state(0),
      I3 => r_display_state(1),
      I4 => \o_Cathodes[3]_i_5_n_0\,
      I5 => \o_Cathodes[3]_i_6_n_0\,
      O => \o_Cathodes[3]_i_2_n_0\
    );
\o_Cathodes[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EF20EFE3EC23EC2"
    )
        port map (
      I0 => \o_Cathodes[3]_i_2_0\,
      I1 => \o_Cathodes[5]_i_9_n_0\,
      I2 => \o_Cathodes[5]_i_8_n_0\,
      I3 => \^r_scroll_offset_reg[0]_0\,
      I4 => \o_Cathodes_reg[4]_1\,
      I5 => \^r_message_index_reg[1]_1\,
      O => \o_Cathodes[3]_i_4_n_0\
    );
\o_Cathodes[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEFBE"
    )
        port map (
      I0 => r_display_state(2),
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_message_index_reg[2]_0\,
      I4 => r_display_state(1),
      I5 => r_display_state(0),
      O => \o_Cathodes[3]_i_5_n_0\
    );
\o_Cathodes[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA2AAAAAAAAA"
    )
        port map (
      I0 => r_display_state(1),
      I1 => w_Paddle_size(0),
      I2 => w_Paddle_size(2),
      I3 => \^r_message_index_reg[0]_1\,
      I4 => \o_Cathodes[3]_i_8_n_0\,
      I5 => \o_Cathodes[3]_i_9_n_0\,
      O => \o_Cathodes[3]_i_6_n_0\
    );
\o_Cathodes[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00FFFF0FF0FFFF"
    )
        port map (
      I0 => \^r_blink_reg_0\,
      I1 => w_Paddle_size(1),
      I2 => \^r_message_index_reg[2]_0\,
      I3 => \^r_message_index_reg[0]_0\,
      I4 => r_display_state(0),
      I5 => \^r_message_index_reg[1]_0\,
      O => \o_Cathodes[3]_i_8_n_0\
    );
\o_Cathodes[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => r_display_state(0),
      I1 => \o_Cathodes[0]_i_7_0\,
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \^r_message_index_reg[2]_0\,
      O => \o_Cathodes[3]_i_9_n_0\
    );
\o_Cathodes[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEEEE0E0E0E0"
    )
        port map (
      I0 => \o_Cathodes[4]_i_2_n_0\,
      I1 => \o_Cathodes[6]_i_3_n_0\,
      I2 => \o_Cathodes[4]_i_3_n_0\,
      I3 => \o_Cathodes[4]_i_4_n_0\,
      I4 => \o_Cathodes[4]_i_5_n_0\,
      I5 => \o_Cathodes[4]_i_6_n_0\,
      O => o_Cathodes(4)
    );
\o_Cathodes[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC80"
    )
        port map (
      I0 => \^r_message_index_reg[0]_0\,
      I1 => r_Scroll_offset_reg(1),
      I2 => r_Scroll_offset_reg(0),
      I3 => \^r_message_index_reg[1]_0\,
      O => \o_Cathodes[4]_i_12_n_0\
    );
\o_Cathodes[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010031"
    )
        port map (
      I0 => w_P1_score(0),
      I1 => \^r_message_index_reg[2]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_message_index_reg[0]_0\,
      I4 => w_P2_score(0),
      O => \o_Cathodes[4]_i_13_n_0\
    );
\o_Cathodes[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00205555AAAA5555"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => w_Paddle_size(0),
      I2 => w_Paddle_size(1),
      I3 => \^r_blink_reg_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \^r_message_index_reg[2]_0\,
      O => \o_Cathodes[4]_i_14_n_0\
    );
\o_Cathodes[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AA5A5AAAAA5A5"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \o_Cathodes_reg[6]_1\(0),
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_blink_reg_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \o_Cathodes_reg[4]_0\,
      O => \o_Cathodes[4]_i_2_n_0\
    );
\o_Cathodes[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF444F4F4"
    )
        port map (
      I0 => \o_Cathodes_reg[4]_i_8_n_0\,
      I1 => r_display_state(1),
      I2 => \o_Cathodes[4]_i_9_n_0\,
      I3 => \^r_message_index_reg[1]_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => r_display_state(2),
      O => \o_Cathodes[4]_i_3_n_0\
    );
\o_Cathodes[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF003333EE2E2222"
    )
        port map (
      I0 => \o_Cathodes_reg[4]_2\,
      I1 => \o_Cathodes[5]_i_9_n_0\,
      I2 => \o_Cathodes_reg[4]_1\,
      I3 => \^r_scroll_offset_reg[0]_0\,
      I4 => \^r_message_index_reg[1]_1\,
      I5 => \o_Cathodes[5]_i_8_n_0\,
      O => \o_Cathodes[4]_i_4_n_0\
    );
\o_Cathodes[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11151555"
    )
        port map (
      I0 => r_Scroll_offset_reg(4),
      I1 => r_Scroll_offset_reg(3),
      I2 => \o_Cathodes[4]_i_12_n_0\,
      I3 => r_Scroll_offset_reg(2),
      I4 => \^r_message_index_reg[2]_0\,
      O => \o_Cathodes[4]_i_5_n_0\
    );
\o_Cathodes[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_display_state(0),
      I1 => r_display_state(1),
      O => \o_Cathodes[4]_i_6_n_0\
    );
\o_Cathodes[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => r_display_state(0),
      I1 => r_display_state(1),
      I2 => \^r_message_index_reg[2]_0\,
      I3 => \^r_message_index_reg[0]_0\,
      O => \o_Cathodes[4]_i_9_n_0\
    );
\o_Cathodes[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0FFF0F0B0B0"
    )
        port map (
      I0 => \o_Cathodes_reg[5]_0\,
      I1 => r_display_state(2),
      I2 => \o_Cathodes[5]_i_3_n_0\,
      I3 => \o_Cathodes[5]_i_4_n_0\,
      I4 => r_display_state(1),
      I5 => r_display_state(0),
      O => o_Cathodes(5)
    );
\o_Cathodes[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      O => \o_Cathodes[5]_i_12_n_0\
    );
\o_Cathodes[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_blink_reg_0\,
      O => \o_Cathodes[5]_i_13_n_0\
    );
\o_Cathodes[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      O => \r_Message_index_reg[1]_2\
    );
\o_Cathodes[5]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => w_P2_score(0),
      I1 => \^r_message_index_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_message_index_reg[2]_0\,
      O => \r_p2_score_reg[0]\
    );
\o_Cathodes[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAAEEA"
    )
        port map (
      I0 => \o_Cathodes[5]_i_5_n_0\,
      I1 => \FSM_sequential_r_display_state[2]_i_2_n_0\,
      I2 => \^r_message_index_reg[1]_0\,
      I3 => \^r_message_index_reg[2]_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => r_display_state(2),
      O => \o_Cathodes[5]_i_3_n_0\
    );
\o_Cathodes[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA028200AA0282AA"
    )
        port map (
      I0 => \o_Cathodes[4]_i_5_n_0\,
      I1 => \^r_scroll_offset_reg[0]_0\,
      I2 => \^r_message_index_reg[1]_1\,
      I3 => \o_Cathodes[5]_i_8_n_0\,
      I4 => \o_Cathodes[5]_i_9_n_0\,
      I5 => \o_Cathodes_reg[5]_1\,
      O => \o_Cathodes[5]_i_4_n_0\
    );
\o_Cathodes[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A202A2020202A2"
    )
        port map (
      I0 => r_display_state(1),
      I1 => \o_Cathodes[5]_i_3_0\,
      I2 => r_display_state(0),
      I3 => \o_Cathodes[5]_i_12_n_0\,
      I4 => w_Paddle_size(2),
      I5 => \o_Cathodes[5]_i_13_n_0\,
      O => \o_Cathodes[5]_i_5_n_0\
    );
\o_Cathodes[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_Scroll_offset_reg(0),
      I1 => \^r_message_index_reg[0]_0\,
      O => \^r_scroll_offset_reg[0]_0\
    );
\o_Cathodes[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => r_Scroll_offset_reg(0),
      I2 => \^r_message_index_reg[0]_0\,
      I3 => r_Scroll_offset_reg(1),
      O => \^r_message_index_reg[1]_1\
    );
\o_Cathodes[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565A6AAAA9A59555"
    )
        port map (
      I0 => \^r_message_index_reg[2]_0\,
      I1 => \^r_message_index_reg[0]_0\,
      I2 => r_Scroll_offset_reg(1),
      I3 => r_Scroll_offset_reg(0),
      I4 => \^r_message_index_reg[1]_0\,
      I5 => r_Scroll_offset_reg(2),
      O => \o_Cathodes[5]_i_8_n_0\
    );
\o_Cathodes[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A995"
    )
        port map (
      I0 => r_Scroll_offset_reg(3),
      I1 => \^r_message_index_reg[2]_0\,
      I2 => r_Scroll_offset_reg(2),
      I3 => \o_Cathodes[4]_i_12_n_0\,
      O => \o_Cathodes[5]_i_9_n_0\
    );
\o_Cathodes[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => r_display_state(2),
      I1 => r_display_state(1),
      I2 => r_display_state(0),
      I3 => CPU_RESETN_IBUF,
      O => \o_Cathodes[6]_i_1_n_0\
    );
\o_Cathodes[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"428156A956A97EBD"
    )
        port map (
      I0 => \^r_message_index_reg[1]_0\,
      I1 => r_Scroll_offset_reg(0),
      I2 => \^r_message_index_reg[0]_0\,
      I3 => r_Scroll_offset_reg(1),
      I4 => w_P2_score(1),
      I5 => w_P1_score(1),
      O => \o_Cathodes[6]_i_10_n_0\
    );
\o_Cathodes[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"757F"
    )
        port map (
      I0 => r_display_state(0),
      I1 => \^r_message_index_reg[2]_0\,
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \^r_message_index_reg[1]_0\,
      O => \o_Cathodes[6]_i_11_n_0\
    );
\o_Cathodes[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAFFAAAEAAFA"
    )
        port map (
      I0 => r_display_state(0),
      I1 => w_P2_score(1),
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \^r_message_index_reg[2]_0\,
      I4 => \^r_message_index_reg[1]_0\,
      I5 => w_P1_score(1),
      O => \o_Cathodes[6]_i_12_n_0\
    );
\o_Cathodes[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEAEAAA"
    )
        port map (
      I0 => \o_Cathodes[6]_i_3_n_0\,
      I1 => \o_Cathodes[6]_i_4_n_0\,
      I2 => \^r_message_index_reg[2]_0\,
      I3 => \o_Cathodes_reg[6]_1\(0),
      I4 => \^r_message_index_reg[0]_1\,
      I5 => \o_Cathodes[6]_i_6_n_0\,
      O => o_Cathodes(6)
    );
\o_Cathodes[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => r_display_state(2),
      I1 => r_display_state(0),
      I2 => r_display_state(1),
      O => \o_Cathodes[6]_i_3_n_0\
    );
\o_Cathodes[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBCCCCFBBFCCCC"
    )
        port map (
      I0 => \^r_blink_reg_0\,
      I1 => \^r_message_index_reg[1]_0\,
      I2 => \o_Cathodes_reg[6]_1\(1),
      I3 => \o_Cathodes_reg[6]_1\(2),
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \o_Cathodes_reg[6]_1\(3),
      O => \o_Cathodes[6]_i_4_n_0\
    );
\o_Cathodes[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^r_message_index_reg[0]_0\,
      I1 => \^r_blink_reg_0\,
      I2 => \^r_message_index_reg[1]_0\,
      O => \^r_message_index_reg[0]_1\
    );
\o_Cathodes[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000DDFD"
    )
        port map (
      I0 => r_display_state(0),
      I1 => r_display_state(1),
      I2 => \o_Cathodes[4]_i_5_n_0\,
      I3 => \o_Cathodes[6]_i_7_n_0\,
      I4 => \o_Cathodes[6]_i_8_n_0\,
      I5 => \o_Cathodes[6]_i_9_n_0\,
      O => \o_Cathodes[6]_i_6_n_0\
    );
\o_Cathodes[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F3F73303F3C400"
    )
        port map (
      I0 => \o_Cathodes_reg[4]_1\,
      I1 => \o_Cathodes[5]_i_9_n_0\,
      I2 => \^r_scroll_offset_reg[0]_0\,
      I3 => \^r_message_index_reg[1]_1\,
      I4 => \o_Cathodes[5]_i_8_n_0\,
      I5 => \o_Cathodes[6]_i_10_n_0\,
      O => \o_Cathodes[6]_i_7_n_0\
    );
\o_Cathodes[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAABABAAABAB"
    )
        port map (
      I0 => r_display_state(2),
      I1 => r_display_state(0),
      I2 => r_display_state(1),
      I3 => \^r_message_index_reg[2]_0\,
      I4 => \^r_message_index_reg[0]_0\,
      I5 => \^r_message_index_reg[1]_0\,
      O => \o_Cathodes[6]_i_8_n_0\
    );
\o_Cathodes[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888AAAAAAAAA"
    )
        port map (
      I0 => r_display_state(1),
      I1 => \^r_message_index_reg[0]_1\,
      I2 => w_Paddle_size(1),
      I3 => w_Paddle_size(2),
      I4 => \o_Cathodes[6]_i_11_n_0\,
      I5 => \o_Cathodes[6]_i_12_n_0\,
      O => \o_Cathodes[6]_i_9_n_0\
    );
\o_Cathodes_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(0),
      Q => \o_Cathodes_reg[6]_0\(0),
      R => '0'
    );
\o_Cathodes_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(1),
      Q => \o_Cathodes_reg[6]_0\(1),
      R => '0'
    );
\o_Cathodes_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(2),
      Q => \o_Cathodes_reg[6]_0\(2),
      R => '0'
    );
\o_Cathodes_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_Cathodes[2]_i_2_0\,
      I1 => \o_Cathodes[2]_i_9_n_0\,
      O => \o_Cathodes_reg[2]_i_6_n_0\,
      S => r_display_state(0)
    );
\o_Cathodes_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(3),
      Q => \o_Cathodes_reg[6]_0\(3),
      R => '0'
    );
\o_Cathodes_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(4),
      Q => \o_Cathodes_reg[6]_0\(4),
      R => '0'
    );
\o_Cathodes_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_Cathodes[4]_i_13_n_0\,
      I1 => \o_Cathodes[4]_i_14_n_0\,
      O => \o_Cathodes_reg[4]_i_8_n_0\,
      S => r_display_state(0)
    );
\o_Cathodes_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(5),
      Q => \o_Cathodes_reg[6]_0\(5),
      R => '0'
    );
\o_Cathodes_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => o_Cathodes(6),
      Q => \o_Cathodes_reg[6]_0\(6),
      R => '0'
    );
\o_LED16_bgr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47FF"
    )
        port map (
      I0 => r_display_state(2),
      I1 => r_display_state(1),
      I2 => r_display_state(0),
      I3 => CPU_RESETN_IBUF,
      O => \o_LED16_bgr[0]_i_1_n_0\
    );
\o_LED16_bgr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC44"
    )
        port map (
      I0 => r_display_state(2),
      I1 => r_display_state(1),
      I2 => r_display_state(0),
      I3 => CPU_RESETN_IBUF,
      O => \o_LED16_bgr[0]_i_2_n_0\
    );
\o_LED16_bgr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A83B"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_display_state(0),
      I2 => r_display_state(1),
      I3 => r_display_state(2),
      O => \o_LED16_bgr[1]_i_1_n_0\
    );
\o_LED16_bgr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB08"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_display_state(0),
      I2 => r_display_state(1),
      I3 => r_display_state(2),
      O => \o_LED16_bgr[2]_i_1_n_0\
    );
\o_LED16_bgr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_LED16_bgr[0]_i_1_n_0\,
      D => \o_LED16_bgr[0]_i_2_n_0\,
      Q => \o_LED16_bgr_reg[0]_0\(2),
      R => '0'
    );
\o_LED16_bgr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_LED16_bgr[0]_i_1_n_0\,
      D => \o_LED16_bgr[1]_i_1_n_0\,
      Q => \o_LED16_bgr_reg[0]_0\(1),
      R => '0'
    );
\o_LED16_bgr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_LED16_bgr[0]_i_1_n_0\,
      D => \o_LED16_bgr[2]_i_1_n_0\,
      Q => \o_LED16_bgr_reg[0]_0\(0),
      R => '0'
    );
\o_LED17_bgr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD0"
    )
        port map (
      I0 => r_display_state(2),
      I1 => CPU_RESETN_IBUF,
      I2 => r_display_state(0),
      I3 => r_display_state(1),
      O => \o_LED17_bgr[0]_i_1_n_0\
    );
\o_LED17_bgr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AD05"
    )
        port map (
      I0 => r_display_state(2),
      I1 => r_display_state(1),
      I2 => r_display_state(0),
      I3 => CPU_RESETN_IBUF,
      O => \o_LED17_bgr[1]_i_1_n_0\
    );
\o_LED17_bgr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB0C"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_display_state(0),
      I2 => r_display_state(1),
      I3 => r_display_state(2),
      O => \o_LED17_bgr[2]_i_1_n_0\
    );
\o_LED17_bgr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => \o_LED17_bgr[0]_i_1_n_0\,
      Q => \o_LED17_bgr_reg[0]_0\(2),
      R => '0'
    );
\o_LED17_bgr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => \o_LED17_bgr[1]_i_1_n_0\,
      Q => \o_LED17_bgr_reg[0]_0\(1),
      R => '0'
    );
\o_LED17_bgr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Cathodes[6]_i_1_n_0\,
      D => \o_LED17_bgr[2]_i_1_n_0\,
      Q => \o_LED17_bgr_reg[0]_0\(0),
      R => '0'
    );
\r_Blink_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A88888A88"
    )
        port map (
      I0 => r_Blink_counter_reg(25),
      I1 => r_Blink_counter_reg(24),
      I2 => \r_Blink_counter[0]_i_3_n_0\,
      I3 => r_Blink_counter_reg(17),
      I4 => \r_Blink_counter[0]_i_4_n_0\,
      I5 => r_Blink_counter_reg(18),
      O => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => r_Blink_counter_reg(20),
      I1 => r_Blink_counter_reg(19),
      I2 => r_Blink_counter_reg(22),
      I3 => r_Blink_counter_reg(21),
      I4 => r_Blink_counter_reg(23),
      O => \r_Blink_counter[0]_i_3_n_0\
    );
\r_Blink_counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \r_Blink_counter[0]_i_6_n_0\,
      I1 => r_Blink_counter_reg(13),
      I2 => r_Blink_counter_reg(14),
      I3 => r_Blink_counter_reg(12),
      I4 => r_Blink_counter_reg(15),
      I5 => r_Blink_counter_reg(16),
      O => \r_Blink_counter[0]_i_4_n_0\
    );
\r_Blink_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Blink_counter_reg_n_0_[0]\,
      O => \r_Blink_counter[0]_i_5_n_0\
    );
\r_Blink_counter[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_Blink_counter_reg(8),
      I1 => r_Blink_counter_reg(10),
      I2 => r_Blink_counter_reg(7),
      I3 => r_Blink_counter_reg(11),
      I4 => r_Blink_counter_reg(9),
      O => \r_Blink_counter[0]_i_6_n_0\
    );
\r_Blink_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[0]_i_2_n_7\,
      Q => \r_Blink_counter_reg_n_0_[0]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_Blink_counter_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_r_Blink_counter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_Blink_counter_reg[0]_i_2_n_4\,
      O(2) => \r_Blink_counter_reg[0]_i_2_n_5\,
      O(1) => \r_Blink_counter_reg[0]_i_2_n_6\,
      O(0) => \r_Blink_counter_reg[0]_i_2_n_7\,
      S(3) => \r_Blink_counter_reg_n_0_[3]\,
      S(2) => \r_Blink_counter_reg_n_0_[2]\,
      S(1) => \r_Blink_counter_reg_n_0_[1]\,
      S(0) => \r_Blink_counter[0]_i_5_n_0\
    );
\r_Blink_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[8]_i_1_n_5\,
      Q => r_Blink_counter_reg(10),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[8]_i_1_n_4\,
      Q => r_Blink_counter_reg(11),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[12]_i_1_n_7\,
      Q => r_Blink_counter_reg(12),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Blink_counter_reg[8]_i_1_n_0\,
      CO(3) => \r_Blink_counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Blink_counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Blink_counter_reg[12]_i_1_n_4\,
      O(2) => \r_Blink_counter_reg[12]_i_1_n_5\,
      O(1) => \r_Blink_counter_reg[12]_i_1_n_6\,
      O(0) => \r_Blink_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_Blink_counter_reg(15 downto 12)
    );
\r_Blink_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[12]_i_1_n_6\,
      Q => r_Blink_counter_reg(13),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[12]_i_1_n_5\,
      Q => r_Blink_counter_reg(14),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[12]_i_1_n_4\,
      Q => r_Blink_counter_reg(15),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[16]_i_1_n_7\,
      Q => r_Blink_counter_reg(16),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Blink_counter_reg[12]_i_1_n_0\,
      CO(3) => \r_Blink_counter_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Blink_counter_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Blink_counter_reg[16]_i_1_n_4\,
      O(2) => \r_Blink_counter_reg[16]_i_1_n_5\,
      O(1) => \r_Blink_counter_reg[16]_i_1_n_6\,
      O(0) => \r_Blink_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => r_Blink_counter_reg(19 downto 16)
    );
\r_Blink_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[16]_i_1_n_6\,
      Q => r_Blink_counter_reg(17),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[16]_i_1_n_5\,
      Q => r_Blink_counter_reg(18),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[16]_i_1_n_4\,
      Q => r_Blink_counter_reg(19),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[0]_i_2_n_6\,
      Q => \r_Blink_counter_reg_n_0_[1]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[20]_i_1_n_7\,
      Q => r_Blink_counter_reg(20),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Blink_counter_reg[16]_i_1_n_0\,
      CO(3) => \r_Blink_counter_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Blink_counter_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Blink_counter_reg[20]_i_1_n_4\,
      O(2) => \r_Blink_counter_reg[20]_i_1_n_5\,
      O(1) => \r_Blink_counter_reg[20]_i_1_n_6\,
      O(0) => \r_Blink_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => r_Blink_counter_reg(23 downto 20)
    );
\r_Blink_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[20]_i_1_n_6\,
      Q => r_Blink_counter_reg(21),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[20]_i_1_n_5\,
      Q => r_Blink_counter_reg(22),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[20]_i_1_n_4\,
      Q => r_Blink_counter_reg(23),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[24]_i_1_n_7\,
      Q => r_Blink_counter_reg(24),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Blink_counter_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_Blink_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_Blink_counter_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_Blink_counter_reg[24]_i_1_n_6\,
      O(0) => \r_Blink_counter_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_Blink_counter_reg(25 downto 24)
    );
\r_Blink_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[24]_i_1_n_6\,
      Q => r_Blink_counter_reg(25),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[0]_i_2_n_5\,
      Q => \r_Blink_counter_reg_n_0_[2]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[0]_i_2_n_4\,
      Q => \r_Blink_counter_reg_n_0_[3]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[4]_i_1_n_7\,
      Q => \r_Blink_counter_reg_n_0_[4]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Blink_counter_reg[0]_i_2_n_0\,
      CO(3) => \r_Blink_counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Blink_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Blink_counter_reg[4]_i_1_n_4\,
      O(2) => \r_Blink_counter_reg[4]_i_1_n_5\,
      O(1) => \r_Blink_counter_reg[4]_i_1_n_6\,
      O(0) => \r_Blink_counter_reg[4]_i_1_n_7\,
      S(3) => r_Blink_counter_reg(7),
      S(2) => \r_Blink_counter_reg_n_0_[6]\,
      S(1) => \r_Blink_counter_reg_n_0_[5]\,
      S(0) => \r_Blink_counter_reg_n_0_[4]\
    );
\r_Blink_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[4]_i_1_n_6\,
      Q => \r_Blink_counter_reg_n_0_[5]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[4]_i_1_n_5\,
      Q => \r_Blink_counter_reg_n_0_[6]\,
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[4]_i_1_n_4\,
      Q => r_Blink_counter_reg(7),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[8]_i_1_n_7\,
      Q => r_Blink_counter_reg(8),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
\r_Blink_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Blink_counter_reg[4]_i_1_n_0\,
      CO(3) => \r_Blink_counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Blink_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Blink_counter_reg[8]_i_1_n_4\,
      O(2) => \r_Blink_counter_reg[8]_i_1_n_5\,
      O(1) => \r_Blink_counter_reg[8]_i_1_n_6\,
      O(0) => \r_Blink_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_Blink_counter_reg(11 downto 8)
    );
\r_Blink_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Blink_counter_reg[8]_i_1_n_6\,
      Q => r_Blink_counter_reg(9),
      R => \r_Blink_counter[0]_i_1_n_0\
    );
r_Blink_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => \^r_blink_reg_0\,
      I1 => \r_Blink_counter[0]_i_1_n_0\,
      I2 => CPU_RESETN_IBUF,
      O => r_Blink_i_1_n_0
    );
r_Blink_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_Blink_i_1_n_0,
      Q => \^r_blink_reg_0\,
      R => '0'
    );
\r_Increment_value[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Increment_value_reg_n_0_[0]\,
      O => \r_Increment_value[0]_i_2_n_0\
    );
\r_Increment_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[0]_i_1_n_7\,
      Q => \r_Increment_value_reg_n_0_[0]\,
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_Increment_value_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Increment_value_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_Increment_value_reg[0]_i_1_n_4\,
      O(2) => \r_Increment_value_reg[0]_i_1_n_5\,
      O(1) => \r_Increment_value_reg[0]_i_1_n_6\,
      O(0) => \r_Increment_value_reg[0]_i_1_n_7\,
      S(3) => \r_Increment_value_reg_n_0_[3]\,
      S(2) => \r_Increment_value_reg_n_0_[2]\,
      S(1) => \r_Increment_value_reg_n_0_[1]\,
      S(0) => \r_Increment_value[0]_i_2_n_0\
    );
\r_Increment_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[8]_i_1_n_5\,
      Q => r_Increment_value_reg(10),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[8]_i_1_n_4\,
      Q => r_Increment_value_reg(11),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[12]_i_1_n_7\,
      Q => r_Increment_value_reg(12),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Increment_value_reg[8]_i_1_n_0\,
      CO(3) => \r_Increment_value_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Increment_value_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Increment_value_reg[12]_i_1_n_4\,
      O(2) => \r_Increment_value_reg[12]_i_1_n_5\,
      O(1) => \r_Increment_value_reg[12]_i_1_n_6\,
      O(0) => \r_Increment_value_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_Increment_value_reg(15 downto 12)
    );
\r_Increment_value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[12]_i_1_n_6\,
      Q => r_Increment_value_reg(13),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[12]_i_1_n_5\,
      Q => r_Increment_value_reg(14),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[12]_i_1_n_4\,
      Q => r_Increment_value_reg(15),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[16]_i_1_n_7\,
      Q => r_Increment_value_reg(16),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Increment_value_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_Increment_value_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_Increment_value_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_Increment_value_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => r_Increment_value_reg(16)
    );
\r_Increment_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[0]_i_1_n_6\,
      Q => \r_Increment_value_reg_n_0_[1]\,
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[0]_i_1_n_5\,
      Q => \r_Increment_value_reg_n_0_[2]\,
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[0]_i_1_n_4\,
      Q => \r_Increment_value_reg_n_0_[3]\,
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[4]_i_1_n_7\,
      Q => \r_Increment_value_reg_n_0_[4]\,
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Increment_value_reg[0]_i_1_n_0\,
      CO(3) => \r_Increment_value_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Increment_value_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Increment_value_reg[4]_i_1_n_4\,
      O(2) => \r_Increment_value_reg[4]_i_1_n_5\,
      O(1) => \r_Increment_value_reg[4]_i_1_n_6\,
      O(0) => \r_Increment_value_reg[4]_i_1_n_7\,
      S(3 downto 1) => r_Increment_value_reg(7 downto 5),
      S(0) => \r_Increment_value_reg_n_0_[4]\
    );
\r_Increment_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[4]_i_1_n_6\,
      Q => r_Increment_value_reg(5),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[4]_i_1_n_5\,
      Q => r_Increment_value_reg(6),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[4]_i_1_n_4\,
      Q => r_Increment_value_reg(7),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[8]_i_1_n_7\,
      Q => r_Increment_value_reg(8),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Increment_value_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Increment_value_reg[4]_i_1_n_0\,
      CO(3) => \r_Increment_value_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Increment_value_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Increment_value_reg[8]_i_1_n_4\,
      O(2) => \r_Increment_value_reg[8]_i_1_n_5\,
      O(1) => \r_Increment_value_reg[8]_i_1_n_6\,
      O(0) => \r_Increment_value_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_Increment_value_reg(11 downto 8)
    );
\r_Increment_value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Increment_value_reg[8]_i_1_n_6\,
      Q => r_Increment_value_reg(9),
      R => \o_Anodes[7]_i_2_n_0\
    );
\r_Message_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \o_Anodes[7]_i_2_n_0\,
      I2 => \^r_message_index_reg[0]_0\,
      O => \r_Message_index[0]_i_1_n_0\
    );
\r_Message_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EC0"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \o_Anodes[7]_i_2_n_0\,
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \^r_message_index_reg[1]_0\,
      O => \r_Message_index[1]_i_1_n_0\
    );
\r_Message_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EC0EE00"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \o_Anodes[7]_i_2_n_0\,
      I2 => \^r_message_index_reg[0]_0\,
      I3 => \^r_message_index_reg[2]_0\,
      I4 => \^r_message_index_reg[1]_0\,
      O => \r_Message_index[2]_i_1_n_0\
    );
\r_Message_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Message_index[0]_i_1_n_0\,
      Q => \^r_message_index_reg[0]_0\,
      R => '0'
    );
\r_Message_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Message_index[1]_i_1_n_0\,
      Q => \^r_message_index_reg[1]_0\,
      R => '0'
    );
\r_Message_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Message_index[2]_i_1_n_0\,
      Q => \^r_message_index_reg[2]_0\,
      R => '0'
    );
\r_Scroll_offset[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_Scroll_offset_reg(0),
      O => p_0_in(0)
    );
\r_Scroll_offset[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_Scroll_offset_reg(0),
      I1 => r_Scroll_offset_reg(1),
      O => p_0_in(1)
    );
\r_Scroll_offset[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_Scroll_offset_reg(2),
      I1 => r_Scroll_offset_reg(1),
      I2 => r_Scroll_offset_reg(0),
      O => \r_Scroll_offset[2]_i_1_n_0\
    );
\r_Scroll_offset[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => r_Scroll_offset_reg(3),
      I1 => r_Scroll_offset_reg(0),
      I2 => r_Scroll_offset_reg(1),
      I3 => r_Scroll_offset_reg(2),
      O => p_0_in(3)
    );
\r_Scroll_offset[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD111FFFFFFFF"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \r_Scroll_offset[4]_i_2_n_0\,
      I2 => r_Scroll_offset_reg(4),
      I3 => r_Scroll_offset_reg(3),
      I4 => r_display_state(2),
      I5 => \o_Cathodes[4]_i_6_n_0\,
      O => r_Scroll_offset(0)
    );
\r_Scroll_offset[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => r_Scroll_timer_reg(26),
      I1 => r_Scroll_timer_reg(25),
      I2 => r_Scroll_timer_reg(23),
      I3 => r_Scroll_timer_reg(24),
      I4 => \r_Scroll_offset[4]_i_4_n_0\,
      O => \r_Scroll_offset[4]_i_2_n_0\
    );
\r_Scroll_offset[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r_Scroll_offset_reg(4),
      I1 => r_Scroll_offset_reg(3),
      I2 => r_Scroll_offset_reg(2),
      I3 => r_Scroll_offset_reg(1),
      I4 => r_Scroll_offset_reg(0),
      O => p_0_in(4)
    );
\r_Scroll_offset[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10555555"
    )
        port map (
      I0 => \r_Scroll_offset[4]_i_5_n_0\,
      I1 => r_Scroll_timer_reg(12),
      I2 => \r_Scroll_offset[4]_i_6_n_0\,
      I3 => r_Scroll_timer_reg(13),
      I4 => r_Scroll_timer_reg(14),
      I5 => \r_Scroll_offset[4]_i_7_n_0\,
      O => \r_Scroll_offset[4]_i_4_n_0\
    );
\r_Scroll_offset[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_Scroll_timer_reg(16),
      I1 => r_Scroll_timer_reg(17),
      I2 => r_Scroll_timer_reg(15),
      I3 => r_Scroll_timer_reg(18),
      O => \r_Scroll_offset[4]_i_5_n_0\
    );
\r_Scroll_offset[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010101FFFFFFFF"
    )
        port map (
      I0 => r_Scroll_timer_reg(8),
      I1 => r_Scroll_timer_reg(9),
      I2 => r_Scroll_timer_reg(10),
      I3 => r_Scroll_timer_reg(7),
      I4 => r_Scroll_timer_reg(6),
      I5 => r_Scroll_timer_reg(11),
      O => \r_Scroll_offset[4]_i_6_n_0\
    );
\r_Scroll_offset[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => r_Scroll_timer_reg(21),
      I1 => r_Scroll_timer_reg(22),
      I2 => r_Scroll_timer_reg(19),
      I3 => r_Scroll_timer_reg(20),
      O => \r_Scroll_offset[4]_i_7_n_0\
    );
\r_Scroll_offset_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Scroll_offset[4]_i_2_n_0\,
      D => p_0_in(0),
      Q => r_Scroll_offset_reg(0),
      R => r_Scroll_offset(0)
    );
\r_Scroll_offset_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Scroll_offset[4]_i_2_n_0\,
      D => p_0_in(1),
      Q => r_Scroll_offset_reg(1),
      R => r_Scroll_offset(0)
    );
\r_Scroll_offset_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Scroll_offset[4]_i_2_n_0\,
      D => \r_Scroll_offset[2]_i_1_n_0\,
      Q => r_Scroll_offset_reg(2),
      R => r_Scroll_offset(0)
    );
\r_Scroll_offset_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Scroll_offset[4]_i_2_n_0\,
      D => p_0_in(3),
      Q => r_Scroll_offset_reg(3),
      R => r_Scroll_offset(0)
    );
\r_Scroll_offset_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Scroll_offset[4]_i_2_n_0\,
      D => p_0_in(4),
      Q => r_Scroll_offset_reg(4),
      R => r_Scroll_offset(0)
    );
\r_Scroll_timer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \r_Scroll_offset[4]_i_2_n_0\,
      I1 => r_display_state(0),
      I2 => r_display_state(1),
      I3 => r_display_state(2),
      O => r_Scroll_timer(0)
    );
\r_Scroll_timer[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Scroll_timer_reg_n_0_[0]\,
      O => \r_Scroll_timer[0]_i_3_n_0\
    );
\r_Scroll_timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[0]_i_2_n_7\,
      Q => \r_Scroll_timer_reg_n_0_[0]\,
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_Scroll_timer_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_r_Scroll_timer_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_Scroll_timer_reg[0]_i_2_n_4\,
      O(2) => \r_Scroll_timer_reg[0]_i_2_n_5\,
      O(1) => \r_Scroll_timer_reg[0]_i_2_n_6\,
      O(0) => \r_Scroll_timer_reg[0]_i_2_n_7\,
      S(3) => \r_Scroll_timer_reg_n_0_[3]\,
      S(2) => \r_Scroll_timer_reg_n_0_[2]\,
      S(1) => \r_Scroll_timer_reg_n_0_[1]\,
      S(0) => \r_Scroll_timer[0]_i_3_n_0\
    );
\r_Scroll_timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[8]_i_1_n_5\,
      Q => r_Scroll_timer_reg(10),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[8]_i_1_n_4\,
      Q => r_Scroll_timer_reg(11),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[12]_i_1_n_7\,
      Q => r_Scroll_timer_reg(12),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Scroll_timer_reg[8]_i_1_n_0\,
      CO(3) => \r_Scroll_timer_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Scroll_timer_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Scroll_timer_reg[12]_i_1_n_4\,
      O(2) => \r_Scroll_timer_reg[12]_i_1_n_5\,
      O(1) => \r_Scroll_timer_reg[12]_i_1_n_6\,
      O(0) => \r_Scroll_timer_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_Scroll_timer_reg(15 downto 12)
    );
\r_Scroll_timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[12]_i_1_n_6\,
      Q => r_Scroll_timer_reg(13),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[12]_i_1_n_5\,
      Q => r_Scroll_timer_reg(14),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[12]_i_1_n_4\,
      Q => r_Scroll_timer_reg(15),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[16]_i_1_n_7\,
      Q => r_Scroll_timer_reg(16),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Scroll_timer_reg[12]_i_1_n_0\,
      CO(3) => \r_Scroll_timer_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Scroll_timer_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Scroll_timer_reg[16]_i_1_n_4\,
      O(2) => \r_Scroll_timer_reg[16]_i_1_n_5\,
      O(1) => \r_Scroll_timer_reg[16]_i_1_n_6\,
      O(0) => \r_Scroll_timer_reg[16]_i_1_n_7\,
      S(3 downto 0) => r_Scroll_timer_reg(19 downto 16)
    );
\r_Scroll_timer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[16]_i_1_n_6\,
      Q => r_Scroll_timer_reg(17),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[16]_i_1_n_5\,
      Q => r_Scroll_timer_reg(18),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[16]_i_1_n_4\,
      Q => r_Scroll_timer_reg(19),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[0]_i_2_n_6\,
      Q => \r_Scroll_timer_reg_n_0_[1]\,
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[20]_i_1_n_7\,
      Q => r_Scroll_timer_reg(20),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Scroll_timer_reg[16]_i_1_n_0\,
      CO(3) => \r_Scroll_timer_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Scroll_timer_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Scroll_timer_reg[20]_i_1_n_4\,
      O(2) => \r_Scroll_timer_reg[20]_i_1_n_5\,
      O(1) => \r_Scroll_timer_reg[20]_i_1_n_6\,
      O(0) => \r_Scroll_timer_reg[20]_i_1_n_7\,
      S(3 downto 0) => r_Scroll_timer_reg(23 downto 20)
    );
\r_Scroll_timer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[20]_i_1_n_6\,
      Q => r_Scroll_timer_reg(21),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[20]_i_1_n_5\,
      Q => r_Scroll_timer_reg(22),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[20]_i_1_n_4\,
      Q => r_Scroll_timer_reg(23),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[24]_i_1_n_7\,
      Q => r_Scroll_timer_reg(24),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Scroll_timer_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_Scroll_timer_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_Scroll_timer_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \r_Scroll_timer_reg[24]_i_1_n_5\,
      O(1) => \r_Scroll_timer_reg[24]_i_1_n_6\,
      O(0) => \r_Scroll_timer_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => r_Scroll_timer_reg(26 downto 24)
    );
\r_Scroll_timer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[24]_i_1_n_6\,
      Q => r_Scroll_timer_reg(25),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[24]_i_1_n_5\,
      Q => r_Scroll_timer_reg(26),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[0]_i_2_n_5\,
      Q => \r_Scroll_timer_reg_n_0_[2]\,
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[0]_i_2_n_4\,
      Q => \r_Scroll_timer_reg_n_0_[3]\,
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[4]_i_1_n_7\,
      Q => \r_Scroll_timer_reg_n_0_[4]\,
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Scroll_timer_reg[0]_i_2_n_0\,
      CO(3) => \r_Scroll_timer_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Scroll_timer_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Scroll_timer_reg[4]_i_1_n_4\,
      O(2) => \r_Scroll_timer_reg[4]_i_1_n_5\,
      O(1) => \r_Scroll_timer_reg[4]_i_1_n_6\,
      O(0) => \r_Scroll_timer_reg[4]_i_1_n_7\,
      S(3 downto 2) => r_Scroll_timer_reg(7 downto 6),
      S(1) => \r_Scroll_timer_reg_n_0_[5]\,
      S(0) => \r_Scroll_timer_reg_n_0_[4]\
    );
\r_Scroll_timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[4]_i_1_n_6\,
      Q => \r_Scroll_timer_reg_n_0_[5]\,
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[4]_i_1_n_5\,
      Q => r_Scroll_timer_reg(6),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[4]_i_1_n_4\,
      Q => r_Scroll_timer_reg(7),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[8]_i_1_n_7\,
      Q => r_Scroll_timer_reg(8),
      R => r_Scroll_timer(0)
    );
\r_Scroll_timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Scroll_timer_reg[4]_i_1_n_0\,
      CO(3) => \r_Scroll_timer_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r_Scroll_timer_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Scroll_timer_reg[8]_i_1_n_4\,
      O(2) => \r_Scroll_timer_reg[8]_i_1_n_5\,
      O(1) => \r_Scroll_timer_reg[8]_i_1_n_6\,
      O(0) => \r_Scroll_timer_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_Scroll_timer_reg(11 downto 8)
    );
\r_Scroll_timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Scroll_timer_reg[8]_i_1_n_6\,
      Q => r_Scroll_timer_reg(9),
      R => r_Scroll_timer(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity game_mechanics is
  port (
    r_Game_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \r_ball_pos_x_reg[2]_0\ : out STD_LOGIC;
    \r_ball_pos_x_reg[3]_0\ : out STD_LOGIC;
    \r_ball_state_reg[1]\ : out STD_LOGIC;
    \r_ball_pos_x_reg[3]_1\ : out STD_LOGIC;
    \r_ball_pos_x_reg[0]_0\ : out STD_LOGIC;
    \r_ball_pos_x_reg[1]_0\ : out STD_LOGIC;
    \r_ball_pos_x_reg[2]_1\ : out STD_LOGIC;
    \r_ball_pos_x_reg[3]_2\ : out STD_LOGIC;
    \r_ball_pos_x_reg[4]_0\ : out STD_LOGIC;
    \r_ball_pos_x_reg[5]_0\ : out STD_LOGIC;
    \r_ball_pos_x_reg[6]_0\ : out STD_LOGIC;
    \r_ball_pos_x_reg[7]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[0]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[5]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_ball_pos_y_reg[1]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[2]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[3]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[4]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[5]_1\ : out STD_LOGIC;
    \r_Game_state_reg[1]_0\ : out STD_LOGIC;
    \r_Game_state_reg[1]_1\ : out STD_LOGIC;
    r_send_pending_reg : out STD_LOGIC;
    \r_Game_state_reg[0]_0\ : out STD_LOGIC;
    \r_ball_pos_y_reg[1]_1\ : out STD_LOGIC;
    \r_ball_pos_x_reg[1]_1\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[0]_0\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p2_paddle_pos_reg[3]_0\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_p2_paddle_pos_reg[0]_0\ : out STD_LOGIC;
    \r_ball_state_reg[1]_0\ : out STD_LOGIC;
    \r_ball_state_reg[1]_1\ : out STD_LOGIC;
    \r_ball_pos_y_reg[4]_1\ : out STD_LOGIC;
    \r_ball_pos_y_reg[5]_2\ : out STD_LOGIC;
    \r_ball_pos_y_reg[2]_1\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[1]_0\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[2]_0\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[0]_1\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[1]_0\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[2]_0\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[0]_1\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]_0\ : out STD_LOGIC;
    \r_p1_score_reg[0]_0\ : out STD_LOGIC;
    w_P1_score : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w_P2_score : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_Game_state_reg[0]_1\ : out STD_LOGIC;
    \FSM_sequential_r_play_state_reg[0]_0\ : out STD_LOGIC;
    \r_Game_state_reg[1]_2\ : out STD_LOGIC;
    o_Received_new_byte_reg : out STD_LOGIC;
    r_game_value : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_Game_state__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_p2_score_reg[0]_0\ : out STD_LOGIC;
    \r_p2_score_reg[0]_1\ : out STD_LOGIC;
    \r_p1_score_reg[0]_1\ : out STD_LOGIC;
    \r_p2_score_reg[0]_2\ : out STD_LOGIC;
    \r_p1_score_reg[1]_0\ : out STD_LOGIC;
    \r_p2_score_reg[0]_3\ : out STD_LOGIC;
    \r_p2_score_reg[0]_4\ : out STD_LOGIC;
    \r_ball_pos_x_reg[5]_1\ : out STD_LOGIC;
    \r_ball_pos_x_reg[1]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_pad2_state_reg[1]\ : out STD_LOGIC;
    \r_pad2_state_reg[1]_0\ : out STD_LOGIC;
    \r_ball_state_reg[1]_2\ : out STD_LOGIC;
    \r_p1_score_reg[1]_1\ : out STD_LOGIC;
    \r_Game_state_reg[1]_3\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[1]_1\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[1]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_pad1_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_pad2_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_r_Game_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_r_Game_state_reg[0]_0\ : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    r_ball_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_ball_pre_x_reg[0]\ : in STD_LOGIC;
    w_TX_ready : in STD_LOGIC;
    \r_ball_state_reg[1]_3\ : in STD_LOGIC;
    \o_uart_buffer_reg[4]\ : in STD_LOGIC;
    CPU_RESETN_IBUF : in STD_LOGIC;
    r_screen_render_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_ball_state[0]_i_2\ : in STD_LOGIC;
    \r_ball_state[0]_i_2_0\ : in STD_LOGIC;
    \r_ball_state[0]_i_2_1\ : in STD_LOGIC;
    r_ball_pre_x : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_pad1_new_pos[5]_i_3_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_old2_pos__0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_p2_paddle_pos_reg[5]_1\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[4]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[5]_2\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[0]_2\ : in STD_LOGIC;
    \r_p2_paddle_pos[5]_i_6\ : in STD_LOGIC;
    w_Paddle_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    r_ball_dir_x2_carry_0 : in STD_LOGIC;
    \r_ball_dir_x2_inferred__0/i__carry_0\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__0/i__carry_1\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[5]_0\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[4]_0\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[5]_1\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[0]_2\ : in STD_LOGIC;
    \r_p1_paddle_pos[5]_i_6\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__1/i__carry_0\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__2/i__carry_0\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__2/i__carry_1\ : in STD_LOGIC;
    \o_Cathodes[5]_i_5\ : in STD_LOGIC;
    \o_Cathodes[5]_i_5_0\ : in STD_LOGIC;
    \o_Cathodes[5]_i_5_1\ : in STD_LOGIC;
    w_New_key : in STD_LOGIC;
    \FSM_sequential_r_Game_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_r_Game_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_r_Game_state_reg[0]_3\ : in STD_LOGIC;
    \o_Cathodes[3]_i_9\ : in STD_LOGIC;
    \o_Cathodes_reg[2]_i_6\ : in STD_LOGIC;
    \o_Cathodes[3]_i_4\ : in STD_LOGIC;
    \o_Cathodes[3]_i_4_0\ : in STD_LOGIC;
    \r_message_index_reg[1]\ : in STD_LOGIC;
    \r_pad2_new_pos_reg[0]\ : in STD_LOGIC;
    \o_uart_buffer_reg[32]\ : in STD_LOGIC;
    \o_uart_buffer_reg[32]_0\ : in STD_LOGIC;
    r_winner_reg : in STD_LOGIC;
    r_winner_reg_0 : in STD_LOGIC;
    \r_p2_paddle_pos[5]_i_7\ : in STD_LOGIC;
    \r_Game_state_reg[1]_4\ : in STD_LOGIC;
    \r_Game_state_reg[1]_5\ : in STD_LOGIC;
    \r_pad2_new_pos_reg[5]\ : in STD_LOGIC;
    \r_pad2_new_pos_reg[5]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_ball_rate_reg[23]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \r_ball_rate_reg[19]_0\ : in STD_LOGIC;
    \r_ball_rate_reg[18]_0\ : in STD_LOGIC;
    \r_ball_rate_reg[17]_0\ : in STD_LOGIC;
    \r_ball_rate_reg[14]_0\ : in STD_LOGIC;
    \r_ball_rate_reg[9]_0\ : in STD_LOGIC;
    \r_ball_rate_reg[6]_0\ : in STD_LOGIC;
    \r_ball_rate_reg[4]_0\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end game_mechanics;

architecture STRUCTURE of game_mechanics is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_r_Game_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_Game_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_play_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \i___47_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___47_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___47_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___47_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___47_carry__1_i_1_n_3\ : STD_LOGIC;
  signal \i___47_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___47_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___47_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___47_carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[18]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_14_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_15_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_16_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_19_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer_reg[33]_i_8_n_0\ : STD_LOGIC;
  signal \^r_game_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_Game_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Game_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^r_game_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^r_game_state_reg[0]_1\ : STD_LOGIC;
  signal \^r_game_state_reg[1]_1\ : STD_LOGIC;
  signal \^r_game_state_reg[1]_2\ : STD_LOGIC;
  signal r_ball_count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_ball_count0 : STD_LOGIC;
  signal \r_ball_count0_carry__0_n_0\ : STD_LOGIC;
  signal \r_ball_count0_carry__0_n_4\ : STD_LOGIC;
  signal \r_ball_count0_carry__0_n_5\ : STD_LOGIC;
  signal \r_ball_count0_carry__0_n_6\ : STD_LOGIC;
  signal \r_ball_count0_carry__0_n_7\ : STD_LOGIC;
  signal \r_ball_count0_carry__1_n_0\ : STD_LOGIC;
  signal \r_ball_count0_carry__1_n_4\ : STD_LOGIC;
  signal \r_ball_count0_carry__1_n_5\ : STD_LOGIC;
  signal \r_ball_count0_carry__1_n_6\ : STD_LOGIC;
  signal \r_ball_count0_carry__1_n_7\ : STD_LOGIC;
  signal \r_ball_count0_carry__2_n_0\ : STD_LOGIC;
  signal \r_ball_count0_carry__2_n_4\ : STD_LOGIC;
  signal \r_ball_count0_carry__2_n_5\ : STD_LOGIC;
  signal \r_ball_count0_carry__2_n_6\ : STD_LOGIC;
  signal \r_ball_count0_carry__2_n_7\ : STD_LOGIC;
  signal \r_ball_count0_carry__3_n_0\ : STD_LOGIC;
  signal \r_ball_count0_carry__3_n_4\ : STD_LOGIC;
  signal \r_ball_count0_carry__3_n_5\ : STD_LOGIC;
  signal \r_ball_count0_carry__3_n_6\ : STD_LOGIC;
  signal \r_ball_count0_carry__3_n_7\ : STD_LOGIC;
  signal \r_ball_count0_carry__4_n_5\ : STD_LOGIC;
  signal \r_ball_count0_carry__4_n_6\ : STD_LOGIC;
  signal \r_ball_count0_carry__4_n_7\ : STD_LOGIC;
  signal r_ball_count0_carry_n_0 : STD_LOGIC;
  signal r_ball_count0_carry_n_4 : STD_LOGIC;
  signal r_ball_count0_carry_n_5 : STD_LOGIC;
  signal r_ball_count0_carry_n_6 : STD_LOGIC;
  signal r_ball_count0_carry_n_7 : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__0_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \r_ball_count1_carry__1_n_0\ : STD_LOGIC;
  signal r_ball_count1_carry_i_1_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_2_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_3_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_4_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_5_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_6_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_7_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_i_8_n_0 : STD_LOGIC;
  signal r_ball_count1_carry_n_0 : STD_LOGIC;
  signal r_ball_count2 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \r_ball_count2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__0_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__1_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__2_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__3_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_count2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal r_ball_count2_carry_i_1_n_0 : STD_LOGIC;
  signal r_ball_count2_carry_i_2_n_0 : STD_LOGIC;
  signal r_ball_count2_carry_i_3_n_0 : STD_LOGIC;
  signal r_ball_count2_carry_i_4_n_0 : STD_LOGIC;
  signal r_ball_count2_carry_n_0 : STD_LOGIC;
  signal \r_ball_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[23]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_count[23]_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_count[23]_i_5_n_0\ : STD_LOGIC;
  signal \r_ball_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_ball_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i___47_carry__0_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i___47_carry_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__0_n_4\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__0_n_5\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__0_n_6\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__0_n_7\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__1_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__1_n_4\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__1_n_5\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__1_n_6\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__1_n_7\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__2_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__2_n_4\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__2_n_5\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__2_n_6\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__2_n_7\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__3_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__3_n_4\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__3_n_5\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__3_n_6\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__3_n_7\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__4_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__4_n_4\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__4_n_5\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__4_n_6\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry__4_n_7\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry_n_4\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry_n_5\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry_n_6\ : STD_LOGIC;
  signal \r_ball_dir_x1_inferred__3/i__carry_n_7\ : STD_LOGIC;
  signal r_ball_dir_x2 : STD_LOGIC;
  signal r_ball_dir_x22_in : STD_LOGIC;
  signal r_ball_dir_x23_in : STD_LOGIC;
  signal r_ball_dir_x24_in : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_10_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_11_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_2_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_3_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_4_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_5_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_6_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_7_n_0 : STD_LOGIC;
  signal r_ball_dir_x2_carry_i_8_n_0 : STD_LOGIC;
  signal r_ball_dir_x3 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal r_ball_dir_x_i_1_n_0 : STD_LOGIC;
  signal r_ball_dir_x_i_2_n_0 : STD_LOGIC;
  signal r_ball_dir_x_i_3_n_0 : STD_LOGIC;
  signal r_ball_dir_x_i_4_n_0 : STD_LOGIC;
  signal r_ball_dir_x_i_5_n_0 : STD_LOGIC;
  signal r_ball_dir_x_i_6_n_0 : STD_LOGIC;
  signal r_ball_dir_x_i_7_n_0 : STD_LOGIC;
  signal r_ball_dir_x_reg_n_0 : STD_LOGIC;
  signal r_ball_dir_y_i_1_n_0 : STD_LOGIC;
  signal r_ball_dir_y_i_2_n_0 : STD_LOGIC;
  signal r_ball_dir_y_i_3_n_0 : STD_LOGIC;
  signal r_ball_dir_y_i_4_n_0 : STD_LOGIC;
  signal r_ball_dir_y_i_5_n_0 : STD_LOGIC;
  signal r_ball_dir_y_reg_n_0 : STD_LOGIC;
  signal r_ball_pos_x : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_ball_pos_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[6]_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[6]_i_5_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_x[7]_i_4_n_0\ : STD_LOGIC;
  signal \^r_ball_pos_x_reg[3]_1\ : STD_LOGIC;
  signal r_ball_pos_y : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_ball_pos_y[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_5_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_6_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_7_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_8_n_0\ : STD_LOGIC;
  signal \r_ball_pos_y[5]_i_9_n_0\ : STD_LOGIC;
  signal \^r_ball_pos_y_reg[5]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_ball_rate[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_rate[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_ball_rate_reg_n_0_[9]\ : STD_LOGIC;
  signal r_p1_paddle_pos : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_p1_paddle_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_p1_paddle_pos[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_p1_paddle_pos[5]_i_10_n_0\ : STD_LOGIC;
  signal \r_p1_paddle_pos[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_p1_paddle_pos[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_p1_paddle_pos[5]_i_5_n_0\ : STD_LOGIC;
  signal \^r_p1_paddle_pos_reg[0]_0\ : STD_LOGIC;
  signal \^r_p1_paddle_pos_reg[1]_0\ : STD_LOGIC;
  signal \^r_p1_paddle_pos_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_p1_score[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_p1_score[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_p1_score[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_p1_score[1]_i_3_n_0\ : STD_LOGIC;
  signal r_p2_paddle_pos : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_p2_paddle_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_p2_paddle_pos[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_p2_paddle_pos[5]_i_11_n_0\ : STD_LOGIC;
  signal \r_p2_paddle_pos[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_p2_paddle_pos[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_p2_paddle_pos[5]_i_5_n_0\ : STD_LOGIC;
  signal \^r_p2_paddle_pos_reg[0]_0\ : STD_LOGIC;
  signal \^r_p2_paddle_pos_reg[1]_0\ : STD_LOGIC;
  signal \^r_p2_paddle_pos_reg[3]_0\ : STD_LOGIC;
  signal \^r_p2_paddle_pos_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r_p2_score[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_p2_score[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_p2_score[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_p2_score[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_p2_score[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_pad1_new_pos[5]_i_5_n_0\ : STD_LOGIC;
  signal \r_pad1_new_pos[5]_i_6_n_0\ : STD_LOGIC;
  signal \^r_pad2_state_reg[1]_0\ : STD_LOGIC;
  signal r_play_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_point_p2_i_1_n_0 : STD_LOGIC;
  signal r_point_p2_i_2_n_0 : STD_LOGIC;
  signal r_point_p2_i_3_n_0 : STD_LOGIC;
  signal r_point_p2_i_4_n_0 : STD_LOGIC;
  signal r_point_p2_reg_n_0 : STD_LOGIC;
  signal \r_serve_pattern[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_serve_pattern[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_serve_pattern_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_serve_pattern_reg_n_0_[1]\ : STD_LOGIC;
  signal r_y_step_count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_y_step_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_y_step_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_y_step_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_y_step_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_y_step_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_y_step_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_y_step_count_reg_n_0_[2]\ : STD_LOGIC;
  signal w_Ball_pos_x : STD_LOGIC_VECTOR ( 2 to 2 );
  signal w_Ball_pos_y : STD_LOGIC_VECTOR ( 2 to 2 );
  signal w_P1_paddle : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \^w_p1_score\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^w_p2_score\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_i___47_carry__1_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_i___47_carry__1_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_uart_buffer_reg[33]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_uart_buffer_reg[33]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_uart_buffer_reg[33]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_o_uart_buffer_reg[33]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_ball_count0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_count0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_r_ball_count1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_r_ball_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_count1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_ball_count2_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count2_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_count2_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_count2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_ball_dir_x1_inferred__3/i___47_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i___47_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i___47_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i___47_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x1_inferred__3/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_r_ball_dir_x2_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_r_ball_dir_x2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_dir_x2_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_dir_x2_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x2_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_ball_dir_x2_inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r_ball_dir_x2_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_play_state_reg[0]\ : label is "ps_playing:01,ps_point_scored:10,ps_idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_play_state_reg[1]\ : label is "ps_playing:01,ps_point_scored:10,ps_idle:00";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_uart_buffer_reg[33]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \o_uart_buffer_reg[33]_i_8\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Game_state[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \r_Game_state[1]_i_1\ : label is "soft_lutpair56";
  attribute ADDER_THRESHOLD of r_ball_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count0_carry__4\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of r_ball_count1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \r_ball_count1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \r_ball_count1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD of r_ball_count2_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_ball_count2_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \r_ball_count[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_ball_count[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_ball_count[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_ball_count[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_ball_count[13]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_ball_count[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_ball_count[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_ball_count[16]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_ball_count[17]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_ball_count[18]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_ball_count[19]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_ball_count[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_ball_count[20]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r_ball_count[21]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r_ball_count[22]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r_ball_count[23]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r_ball_count[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_ball_count[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_ball_count[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_ball_count[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_ball_count[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_ball_count[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_ball_count[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_ball_count[9]_i_1\ : label is "soft_lutpair40";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \r_ball_dir_x1_inferred__3/i__carry\ : label is "PROPCONST";
  attribute COMPARATOR_THRESHOLD of r_ball_dir_x2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \r_ball_dir_x2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \r_ball_dir_x2_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \r_ball_dir_x2_inferred__2/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of \r_ball_pre_x[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r_ball_pre_x[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r_ball_pre_x[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r_ball_pre_x[4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r_ball_pre_x[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r_ball_pre_x[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r_ball_pre_x[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r_ball_pre_y[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r_ball_pre_y[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r_ball_pre_y[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r_ball_pre_y[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r_ball_pre_y[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r_pad1_new_pos[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_pad1_new_pos[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_pad1_new_pos[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_pad1_new_pos[4]_i_1\ : label is "soft_lutpair28";
begin
  CO(0) <= \^co\(0);
  Q(6 downto 0) <= \^q\(6 downto 0);
  r_Game_state(1 downto 0) <= \^r_game_state\(1 downto 0);
  \r_Game_state__0\(0) <= \^r_game_state__0\(0);
  \r_Game_state_reg[0]_1\ <= \^r_game_state_reg[0]_1\;
  \r_Game_state_reg[1]_1\ <= \^r_game_state_reg[1]_1\;
  \r_Game_state_reg[1]_2\ <= \^r_game_state_reg[1]_2\;
  \r_ball_pos_x_reg[3]_1\ <= \^r_ball_pos_x_reg[3]_1\;
  \r_ball_pos_y_reg[5]_0\(4 downto 0) <= \^r_ball_pos_y_reg[5]_0\(4 downto 0);
  \r_p1_paddle_pos_reg[0]_0\ <= \^r_p1_paddle_pos_reg[0]_0\;
  \r_p1_paddle_pos_reg[1]_0\ <= \^r_p1_paddle_pos_reg[1]_0\;
  \r_p1_paddle_pos_reg[3]_0\(3 downto 0) <= \^r_p1_paddle_pos_reg[3]_0\(3 downto 0);
  \r_p2_paddle_pos_reg[0]_0\ <= \^r_p2_paddle_pos_reg[0]_0\;
  \r_p2_paddle_pos_reg[1]_0\ <= \^r_p2_paddle_pos_reg[1]_0\;
  \r_p2_paddle_pos_reg[3]_0\ <= \^r_p2_paddle_pos_reg[3]_0\;
  \r_p2_paddle_pos_reg[5]_0\(5 downto 0) <= \^r_p2_paddle_pos_reg[5]_0\(5 downto 0);
  \r_pad2_state_reg[1]_0\ <= \^r_pad2_state_reg[1]_0\;
  w_P1_score(1 downto 0) <= \^w_p1_score\(1 downto 0);
  w_P2_score(1 downto 0) <= \^w_p2_score\(1 downto 0);
\FSM_sequential_r_Game_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00808080"
    )
        port map (
      I0 => \FSM_sequential_r_Game_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_r_Game_state_reg[0]_1\,
      I2 => CPU_RESETN_IBUF,
      I3 => \FSM_sequential_r_Game_state_reg[0]_2\,
      I4 => w_New_key,
      I5 => \FSM_sequential_r_Game_state_reg[0]_3\,
      O => \FSM_sequential_r_Game_state_reg[0]_0\
    );
\FSM_sequential_r_Game_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => \^w_p1_score\(0),
      I1 => \^w_p1_score\(1),
      I2 => \^w_p2_score\(0),
      I3 => \^w_p2_score\(1),
      I4 => \FSM_sequential_r_Game_state_reg[0]_2\,
      O => \FSM_sequential_r_Game_state[0]_i_2_n_0\
    );
\FSM_sequential_r_Game_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044004400443044"
    )
        port map (
      I0 => \FSM_sequential_r_Game_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_r_Game_state_reg[0]_1\,
      I2 => CPU_RESETN_IBUF,
      I3 => \FSM_sequential_r_Game_state_reg[0]_2\,
      I4 => w_New_key,
      I5 => \FSM_sequential_r_Game_state_reg[0]_3\,
      O => \FSM_sequential_r_Game_state_reg[0]\
    );
\FSM_sequential_r_Game_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^w_p2_score\(1),
      I1 => \^w_p2_score\(0),
      I2 => \^w_p1_score\(1),
      I3 => \^w_p1_score\(0),
      O => \FSM_sequential_r_Game_state[1]_i_2_n_0\
    );
\FSM_sequential_r_play_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFF200"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      I2 => r_play_state(1),
      I3 => \FSM_sequential_r_play_state[0]_i_2_n_0\,
      I4 => r_play_state(0),
      O => \FSM_sequential_r_play_state[0]_i_1_n_0\
    );
\FSM_sequential_r_play_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0155FFFF"
    )
        port map (
      I0 => \FSM_sequential_r_play_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_r_play_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_r_play_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_r_play_state[1]_i_5_n_0\,
      I4 => CPU_RESETN_IBUF,
      O => \FSM_sequential_r_play_state[0]_i_2_n_0\
    );
\FSM_sequential_r_play_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAA030001000300"
    )
        port map (
      I0 => \FSM_sequential_r_play_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_r_play_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_r_play_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_r_play_state[1]_i_5_n_0\,
      I4 => CPU_RESETN_IBUF,
      I5 => r_play_state(1),
      O => \FSM_sequential_r_play_state[1]_i_1_n_0\
    );
\FSM_sequential_r_play_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => \^r_game_state\(1),
      I3 => \^r_game_state\(0),
      O => \FSM_sequential_r_play_state[1]_i_2_n_0\
    );
\FSM_sequential_r_play_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D5FFFF"
    )
        port map (
      I0 => \FSM_sequential_r_play_state[1]_i_6_n_0\,
      I1 => r_ball_dir_x22_in,
      I2 => r_ball_dir_x2,
      I3 => r_point_p2_i_3_n_0,
      I4 => \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\,
      O => \FSM_sequential_r_play_state[1]_i_3_n_0\
    );
\FSM_sequential_r_play_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_point_p2_i_3_n_0,
      I1 => r_ball_dir_x24_in,
      I2 => r_ball_dir_x23_in,
      O => \FSM_sequential_r_play_state[1]_i_4_n_0\
    );
\FSM_sequential_r_play_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => r_play_state(1),
      I1 => r_play_state(0),
      I2 => \^r_game_state\(0),
      I3 => \^r_game_state\(1),
      O => \FSM_sequential_r_play_state[1]_i_5_n_0\
    );
\FSM_sequential_r_play_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => w_Ball_pos_x(2),
      I2 => \^q\(3),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(4),
      O => \FSM_sequential_r_play_state[1]_i_6_n_0\
    );
\FSM_sequential_r_play_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_r_play_state[0]_i_1_n_0\,
      Q => r_play_state(0),
      R => '0'
    );
\FSM_sequential_r_play_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_r_play_state[1]_i_1_n_0\,
      Q => r_play_state(1),
      R => '0'
    );
\i___47_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[23]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry__4_n_4\,
      I2 => \r_ball_count_reg_n_0_[21]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__4_n_6\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__4_n_5\,
      I5 => \r_ball_count_reg_n_0_[22]\,
      O => \i___47_carry__0_i_1_n_0\
    );
\i___47_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[20]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry__4_n_7\,
      I2 => \r_ball_count_reg_n_0_[18]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__3_n_5\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__3_n_4\,
      I5 => \r_ball_count_reg_n_0_[19]\,
      O => \i___47_carry__0_i_2_n_0\
    );
\i___47_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[15]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry__2_n_4\,
      I2 => \r_ball_count_reg_n_0_[16]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__3_n_7\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__3_n_6\,
      I5 => \r_ball_count_reg_n_0_[17]\,
      O => \i___47_carry__0_i_3_n_0\
    );
\i___47_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[12]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry__2_n_7\,
      I2 => \r_ball_count_reg_n_0_[13]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__2_n_6\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__2_n_5\,
      I5 => \r_ball_count_reg_n_0_[14]\,
      O => \i___47_carry__0_i_4_n_0\
    );
\i___47_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i__carry__4_n_0\,
      CO(3 downto 1) => \NLW_i___47_carry__1_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \i___47_carry__1_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i___47_carry__1_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\i___47_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[10]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry__1_n_5\,
      I2 => \r_ball_count_reg_n_0_[9]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__1_n_6\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__1_n_4\,
      I5 => \r_ball_count_reg_n_0_[11]\,
      O => \i___47_carry_i_1_n_0\
    );
\i___47_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[8]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry__1_n_7\,
      I2 => \r_ball_count_reg_n_0_[6]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__0_n_5\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__0_n_4\,
      I5 => \r_ball_count_reg_n_0_[7]\,
      O => \i___47_carry_i_2_n_0\
    );
\i___47_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[3]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry_n_4\,
      I2 => \r_ball_count_reg_n_0_[4]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry__0_n_7\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry__0_n_6\,
      I5 => \r_ball_count_reg_n_0_[5]\,
      O => \i___47_carry_i_3_n_0\
    );
\i___47_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[1]\,
      I1 => \r_ball_dir_x1_inferred__3/i__carry_n_6\,
      I2 => \r_ball_count_reg_n_0_[0]\,
      I3 => \r_ball_dir_x1_inferred__3/i__carry_n_7\,
      I4 => \r_ball_dir_x1_inferred__3/i__carry_n_5\,
      I5 => \r_ball_count_reg_n_0_[2]\,
      O => \i___47_carry_i_4_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[7]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[6]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[5]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[4]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[11]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[10]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[9]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[8]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[15]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[14]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[13]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[12]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[19]\,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[18]\,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[17]\,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[16]\,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[23]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[22]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[21]\,
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[20]\,
      O => \i__carry__4_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \r_ball_dir_x2_inferred__0/i__carry_1\,
      I1 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B0000FFFFBB2B"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I5 => w_Paddle_size(2),
      O => \i__carry_i_10__0_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(0),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => \r_ball_dir_x2_inferred__1/i__carry_0\,
      I1 => w_P1_paddle(5),
      I2 => w_P1_paddle(4),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I5 => w_Paddle_size(2),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \r_ball_dir_x2_inferred__2/i__carry_1\,
      I1 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I2 => w_P1_paddle(5),
      I3 => w_P1_paddle(4),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[3]\,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551000CF755510"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => \r_ball_dir_x2_inferred__0/i__carry_1\,
      I2 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2AAFBC0002AAA8"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => \i__carry_i_10__0_n_0\,
      I2 => w_P1_paddle(4),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I4 => w_P1_paddle(5),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551000CF755510"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => \r_ball_dir_x2_inferred__2/i__carry_1\,
      I2 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I3 => w_P1_paddle(4),
      I4 => w_P1_paddle(5),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[2]\,
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01155440433DD554"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => \r_ball_dir_x2_inferred__0/i__carry_0\,
      I2 => w_Paddle_size(2),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I5 => w_Ball_pos_y(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE8A38E38A0820A2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => \i__carry_i_11_n_0\,
      I2 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I3 => w_Paddle_size(2),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I5 => w_Ball_pos_y(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01155440433DD554"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => \r_ball_dir_x2_inferred__2/i__carry_0\,
      I2 => w_Paddle_size(2),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I5 => w_Ball_pos_y(2),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[1]\,
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40151540543D3D54"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => w_Paddle_size(0),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I3 => w_Paddle_size(1),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40151540543D3D54"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => w_Paddle_size(0),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I3 => w_Paddle_size(1),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB8228EB82822882"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I3 => w_Paddle_size(0),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I3 => \r_ball_dir_x2_inferred__0/i__carry_1\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => w_Paddle_size(2),
      I1 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I3 => w_P1_paddle(4),
      I4 => w_P1_paddle(5),
      I5 => \r_ball_dir_x2_inferred__1/i__carry_0\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => w_P1_paddle(4),
      I1 => w_P1_paddle(5),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I3 => \r_ball_dir_x2_inferred__2/i__carry_1\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009909009600909"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I1 => \^r_ball_pos_y_reg[5]_0\(4),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I3 => \r_ball_dir_x2_inferred__0/i__carry_1\,
      I4 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => w_P1_paddle(5),
      I1 => \^r_ball_pos_y_reg[5]_0\(4),
      I2 => w_P1_paddle(4),
      I3 => \i__carry_i_10__0_n_0\,
      I4 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009909009600909"
    )
        port map (
      I0 => w_P1_paddle(5),
      I1 => \^r_ball_pos_y_reg[5]_0\(4),
      I2 => w_P1_paddle(4),
      I3 => \r_ball_dir_x2_inferred__2/i__carry_1\,
      I4 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6009099006606009"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I1 => \^r_ball_pos_y_reg[5]_0\(2),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I3 => w_Paddle_size(2),
      I4 => \r_ball_dir_x2_inferred__0/i__carry_0\,
      I5 => w_Ball_pos_y(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006096009609009"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I1 => \^r_ball_pos_y_reg[5]_0\(2),
      I2 => \i__carry_i_11_n_0\,
      I3 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I4 => w_Paddle_size(2),
      I5 => w_Ball_pos_y(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6009099006606009"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I1 => \^r_ball_pos_y_reg[5]_0\(2),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I3 => w_Paddle_size(2),
      I4 => \r_ball_dir_x2_inferred__2/i__carry_0\,
      I5 => w_Ball_pos_y(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4128281414828241"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(0),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I2 => w_Paddle_size(1),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I4 => w_Paddle_size(0),
      I5 => \^r_ball_pos_y_reg[5]_0\(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4128281414828241"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(0),
      I1 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I2 => w_Paddle_size(1),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I4 => w_Paddle_size(0),
      I5 => \^r_ball_pos_y_reg[5]_0\(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0069960069000069"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => w_Paddle_size(0),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => \i__carry_i_8__1_n_0\
    );
\o_Cathodes[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40C0FFFF105CFFFF"
    )
        port map (
      I0 => \^w_p2_score\(0),
      I1 => \^w_p1_score\(1),
      I2 => \^w_p2_score\(1),
      I3 => \^w_p1_score\(0),
      I4 => \o_Cathodes[3]_i_4\,
      I5 => \o_Cathodes[3]_i_4_0\,
      O => \r_p2_score_reg[0]_1\
    );
\o_Cathodes[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFBFB0BF"
    )
        port map (
      I0 => \^w_p2_score\(0),
      I1 => \^w_p2_score\(1),
      I2 => \o_Cathodes[3]_i_9\,
      I3 => \^w_p1_score\(1),
      I4 => \^w_p1_score\(0),
      I5 => \o_Cathodes_reg[2]_i_6\,
      O => \r_p2_score_reg[0]_0\
    );
\o_Cathodes[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \^w_p2_score\(0),
      I1 => \^w_p2_score\(1),
      I2 => \o_Cathodes[3]_i_9\,
      I3 => \^w_p1_score\(0),
      I4 => \^w_p1_score\(1),
      O => \r_p2_score_reg[0]_4\
    );
\o_Cathodes[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B092100FFFFFFFF"
    )
        port map (
      I0 => \o_Cathodes[3]_i_4_0\,
      I1 => \^w_p1_score\(1),
      I2 => \^w_p2_score\(1),
      I3 => \^w_p1_score\(0),
      I4 => \^w_p2_score\(0),
      I5 => \o_Cathodes[3]_i_4\,
      O => \r_p1_score_reg[1]_0\
    );
\o_Cathodes[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DEDD4484FFFFFFFF"
    )
        port map (
      I0 => \o_Cathodes[3]_i_4_0\,
      I1 => \^w_p2_score\(0),
      I2 => \^w_p1_score\(1),
      I3 => \^w_p2_score\(1),
      I4 => \^w_p1_score\(0),
      I5 => \o_Cathodes[3]_i_4\,
      O => \r_p2_score_reg[0]_2\
    );
\o_Cathodes[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^w_p2_score\(0),
      I1 => \^w_p1_score\(0),
      I2 => \^w_p2_score\(1),
      I3 => \^w_p1_score\(1),
      O => \r_p2_score_reg[0]_3\
    );
\o_Cathodes[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5DDD5FFFFFFFD"
    )
        port map (
      I0 => \o_Cathodes[3]_i_4\,
      I1 => \^w_p1_score\(0),
      I2 => \^w_p2_score\(0),
      I3 => \^w_p2_score\(1),
      I4 => \^w_p1_score\(1),
      I5 => \o_Cathodes[3]_i_4_0\,
      O => \r_p1_score_reg[0]_1\
    );
\o_Cathodes[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100010001FFFF"
    )
        port map (
      I0 => \^w_p1_score\(0),
      I1 => \o_Cathodes[5]_i_5\,
      I2 => \o_Cathodes[5]_i_5_0\,
      I3 => \^w_p1_score\(1),
      I4 => \o_Cathodes[5]_i_5_1\,
      I5 => \^w_p2_score\(1),
      O => \r_p1_score_reg[0]_0\
    );
\o_uart_buffer[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EE4DAAE8AA4D88E"
    )
        port map (
      I0 => \o_uart_buffer[17]_i_5_n_0\,
      I1 => \o_uart_buffer[18]_i_5_n_0\,
      I2 => \^q\(2),
      I3 => \o_uart_buffer[17]_i_6_n_0\,
      I4 => w_Ball_pos_x(2),
      I5 => \^q\(1),
      O => \^r_ball_pos_x_reg[3]_1\
    );
\o_uart_buffer[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D96D2692"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(2),
      O => \o_uart_buffer[17]_i_5_n_0\
    );
\o_uart_buffer[17]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6D3C492C"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(2),
      O => \o_uart_buffer[17]_i_6_n_0\
    );
\o_uart_buffer[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22DFFFF"
    )
        port map (
      I0 => \^r_ball_pos_x_reg[3]_1\,
      I1 => \^q\(1),
      I2 => w_Ball_pos_x(2),
      I3 => \o_uart_buffer[18]_i_5_n_0\,
      I4 => r_ball_state(0),
      O => \r_ball_pos_x_reg[1]_2\
    );
\o_uart_buffer[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FB42DF20DB024D2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => w_Ball_pos_x(2),
      O => \o_uart_buffer[18]_i_5_n_0\
    );
\o_uart_buffer[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"880800C0808C0800"
    )
        port map (
      I0 => \^r_ball_pos_x_reg[3]_1\,
      I1 => r_ball_state(0),
      I2 => w_Ball_pos_x(2),
      I3 => \^q\(1),
      I4 => \o_uart_buffer[19]_i_8_n_0\,
      I5 => \o_uart_buffer[18]_i_5_n_0\,
      O => \r_ball_state_reg[1]\
    );
\o_uart_buffer[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69A65AA59A69A65A"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \^q\(3),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \^q\(2),
      O => \o_uart_buffer[19]_i_8_n_0\
    );
\o_uart_buffer[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C67FE61DE63F761"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => w_Ball_pos_x(2),
      O => \r_ball_pos_x_reg[5]_1\
    );
\o_uart_buffer[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01F00FC00F80F00"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \^q\(4),
      O => \r_ball_pos_x_reg[2]_0\
    );
\o_uart_buffer[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA08AA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_game_state\(1),
      I2 => \^r_game_state\(0),
      I3 => w_TX_ready,
      I4 => \r_ball_state_reg[1]_3\,
      O => \^r_game_state_reg[1]_1\
    );
\o_uart_buffer[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C00C0001801C00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => w_Ball_pos_x(2),
      O => \r_ball_pos_x_reg[3]_0\
    );
\o_uart_buffer[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0015555540555555"
    )
        port map (
      I0 => \^r_game_state_reg[1]_1\,
      I1 => r_ball_state(0),
      I2 => \^q\(6),
      I3 => \o_uart_buffer_reg[32]\,
      I4 => \o_uart_buffer_reg[32]_0\,
      I5 => \^co\(0),
      O => \r_ball_state_reg[1]_2\
    );
\o_uart_buffer[33]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \o_uart_buffer[33]_i_10_n_0\
    );
\o_uart_buffer[33]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      O => \o_uart_buffer[33]_i_14_n_0\
    );
\o_uart_buffer[33]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \o_uart_buffer[33]_i_15_n_0\
    );
\o_uart_buffer[33]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      O => \o_uart_buffer[33]_i_16_n_0\
    );
\o_uart_buffer[33]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      O => \o_uart_buffer[33]_i_17_n_0\
    );
\o_uart_buffer[33]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \o_uart_buffer[33]_i_18_n_0\
    );
\o_uart_buffer[33]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \^q\(6),
      I2 => \^q\(2),
      O => \o_uart_buffer[33]_i_19_n_0\
    );
\o_uart_buffer[33]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \o_uart_buffer[33]_i_9_n_0\
    );
\o_uart_buffer[49]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D20DDB2D"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(3),
      I1 => w_Ball_pos_y(2),
      I2 => \^r_ball_pos_y_reg[5]_0\(4),
      I3 => \^r_ball_pos_y_reg[5]_0\(2),
      I4 => \^r_ball_pos_y_reg[5]_0\(1),
      O => \r_ball_pos_y_reg[4]_1\
    );
\o_uart_buffer[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => \^r_game_state\(1),
      I1 => \^r_game_state\(0),
      I2 => w_TX_ready,
      I3 => \r_ball_state_reg[1]_3\,
      I4 => \o_uart_buffer_reg[4]\,
      O => \r_Game_state_reg[1]_0\
    );
\o_uart_buffer[50]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2028822028082028"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_pos_y_reg[5]_0\(3),
      I2 => w_Ball_pos_y(2),
      I3 => \^r_ball_pos_y_reg[5]_0\(4),
      I4 => \^r_ball_pos_y_reg[5]_0\(2),
      I5 => \^r_ball_pos_y_reg[5]_0\(1),
      O => \r_ball_state_reg[1]_1\
    );
\o_uart_buffer[51]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820020800028000"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_pos_y_reg[5]_0\(1),
      I2 => w_Ball_pos_y(2),
      I3 => \^r_ball_pos_y_reg[5]_0\(4),
      I4 => \^r_ball_pos_y_reg[5]_0\(2),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \r_ball_state_reg[1]_0\
    );
\o_uart_buffer[57]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"73C7"
    )
        port map (
      I0 => w_Ball_pos_y(2),
      I1 => \^r_ball_pos_y_reg[5]_0\(3),
      I2 => \^r_ball_pos_y_reg[5]_0\(4),
      I3 => \^r_ball_pos_y_reg[5]_0\(2),
      O => \r_ball_pos_y_reg[2]_1\
    );
\o_uart_buffer[58]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => \^r_ball_pos_y_reg[5]_0\(2),
      I2 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \r_ball_pos_y_reg[5]_2\
    );
\o_uart_buffer_reg[33]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_uart_buffer_reg[33]_i_8_n_0\,
      CO(3 downto 1) => \NLW_o_uart_buffer_reg[33]_i_6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \o_uart_buffer[33]_i_9_n_0\,
      O(3 downto 0) => \NLW_o_uart_buffer_reg[33]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \o_uart_buffer[33]_i_10_n_0\
    );
\o_uart_buffer_reg[33]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_uart_buffer_reg[33]_i_8_n_0\,
      CO(2 downto 0) => \NLW_o_uart_buffer_reg[33]_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \o_uart_buffer[33]_i_14_n_0\,
      DI(2 downto 1) => B"00",
      DI(0) => \o_uart_buffer[33]_i_15_n_0\,
      O(3 downto 0) => \NLW_o_uart_buffer_reg[33]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_uart_buffer[33]_i_16_n_0\,
      S(2) => \o_uart_buffer[33]_i_17_n_0\,
      S(1) => \o_uart_buffer[33]_i_18_n_0\,
      S(0) => \o_uart_buffer[33]_i_19_n_0\
    );
\r_Game_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_Game_state_reg[1]_5\,
      I1 => \r_Game_state_reg[1]_4\,
      O => \r_Game_state[0]_i_1_n_0\
    );
\r_Game_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_Game_state_reg[1]_4\,
      I1 => \r_Game_state_reg[1]_5\,
      O => \r_Game_state[1]_i_1_n_0\
    );
\r_Game_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Game_state[0]_i_1_n_0\,
      Q => \^r_game_state\(0),
      R => '0'
    );
\r_Game_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Game_state[1]_i_1_n_0\,
      Q => \^r_game_state\(1),
      R => '0'
    );
r_ball_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_count0_carry_n_0,
      CO(2 downto 0) => NLW_r_ball_count0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \r_ball_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => r_ball_count0_carry_n_4,
      O(2) => r_ball_count0_carry_n_5,
      O(1) => r_ball_count0_carry_n_6,
      O(0) => r_ball_count0_carry_n_7,
      S(3) => \r_ball_count_reg_n_0_[4]\,
      S(2) => \r_ball_count_reg_n_0_[3]\,
      S(1) => \r_ball_count_reg_n_0_[2]\,
      S(0) => \r_ball_count_reg_n_0_[1]\
    );
\r_ball_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_ball_count0_carry_n_0,
      CO(3) => \r_ball_count0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_ball_count0_carry__0_n_4\,
      O(2) => \r_ball_count0_carry__0_n_5\,
      O(1) => \r_ball_count0_carry__0_n_6\,
      O(0) => \r_ball_count0_carry__0_n_7\,
      S(3) => \r_ball_count_reg_n_0_[8]\,
      S(2) => \r_ball_count_reg_n_0_[7]\,
      S(1) => \r_ball_count_reg_n_0_[6]\,
      S(0) => \r_ball_count_reg_n_0_[5]\
    );
\r_ball_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count0_carry__0_n_0\,
      CO(3) => \r_ball_count0_carry__1_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count0_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_ball_count0_carry__1_n_4\,
      O(2) => \r_ball_count0_carry__1_n_5\,
      O(1) => \r_ball_count0_carry__1_n_6\,
      O(0) => \r_ball_count0_carry__1_n_7\,
      S(3) => \r_ball_count_reg_n_0_[12]\,
      S(2) => \r_ball_count_reg_n_0_[11]\,
      S(1) => \r_ball_count_reg_n_0_[10]\,
      S(0) => \r_ball_count_reg_n_0_[9]\
    );
\r_ball_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count0_carry__1_n_0\,
      CO(3) => \r_ball_count0_carry__2_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count0_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_ball_count0_carry__2_n_4\,
      O(2) => \r_ball_count0_carry__2_n_5\,
      O(1) => \r_ball_count0_carry__2_n_6\,
      O(0) => \r_ball_count0_carry__2_n_7\,
      S(3) => \r_ball_count_reg_n_0_[16]\,
      S(2) => \r_ball_count_reg_n_0_[15]\,
      S(1) => \r_ball_count_reg_n_0_[14]\,
      S(0) => \r_ball_count_reg_n_0_[13]\
    );
\r_ball_count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count0_carry__2_n_0\,
      CO(3) => \r_ball_count0_carry__3_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count0_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_ball_count0_carry__3_n_4\,
      O(2) => \r_ball_count0_carry__3_n_5\,
      O(1) => \r_ball_count0_carry__3_n_6\,
      O(0) => \r_ball_count0_carry__3_n_7\,
      S(3) => \r_ball_count_reg_n_0_[20]\,
      S(2) => \r_ball_count_reg_n_0_[19]\,
      S(1) => \r_ball_count_reg_n_0_[18]\,
      S(0) => \r_ball_count_reg_n_0_[17]\
    );
\r_ball_count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count0_carry__3_n_0\,
      CO(3 downto 0) => \NLW_r_ball_count0_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_ball_count0_carry__4_O_UNCONNECTED\(3),
      O(2) => \r_ball_count0_carry__4_n_5\,
      O(1) => \r_ball_count0_carry__4_n_6\,
      O(0) => \r_ball_count0_carry__4_n_7\,
      S(3) => '0',
      S(2) => \r_ball_count_reg_n_0_[23]\,
      S(1) => \r_ball_count_reg_n_0_[22]\,
      S(0) => \r_ball_count_reg_n_0_[21]\
    );
r_ball_count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_count1_carry_n_0,
      CO(2 downto 0) => NLW_r_ball_count1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => r_ball_count1_carry_i_1_n_0,
      DI(2) => r_ball_count1_carry_i_2_n_0,
      DI(1) => r_ball_count1_carry_i_3_n_0,
      DI(0) => r_ball_count1_carry_i_4_n_0,
      O(3 downto 0) => NLW_r_ball_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_ball_count1_carry_i_5_n_0,
      S(2) => r_ball_count1_carry_i_6_n_0,
      S(1) => r_ball_count1_carry_i_7_n_0,
      S(0) => r_ball_count1_carry_i_8_n_0
    );
\r_ball_count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_ball_count1_carry_n_0,
      CO(3) => \r_ball_count1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_count1_carry__0_i_1_n_0\,
      DI(2) => \r_ball_count1_carry__0_i_2_n_0\,
      DI(1) => \r_ball_count1_carry__0_i_3_n_0\,
      DI(0) => \r_ball_count1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_r_ball_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_ball_count1_carry__0_i_5_n_0\,
      S(2) => \r_ball_count1_carry__0_i_6_n_0\,
      S(1) => \r_ball_count1_carry__0_i_7_n_0\,
      S(0) => \r_ball_count1_carry__0_i_8_n_0\
    );
\r_ball_count1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[15]\,
      I1 => r_ball_count2(15),
      I2 => \r_ball_count_reg_n_0_[14]\,
      I3 => r_ball_count2(14),
      O => \r_ball_count1_carry__0_i_1_n_0\
    );
\r_ball_count1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[13]\,
      I1 => r_ball_count2(13),
      I2 => \r_ball_count_reg_n_0_[12]\,
      I3 => r_ball_count2(12),
      O => \r_ball_count1_carry__0_i_2_n_0\
    );
\r_ball_count1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[11]\,
      I1 => r_ball_count2(11),
      I2 => \r_ball_count_reg_n_0_[10]\,
      I3 => r_ball_count2(10),
      O => \r_ball_count1_carry__0_i_3_n_0\
    );
\r_ball_count1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[9]\,
      I1 => r_ball_count2(9),
      I2 => \r_ball_count_reg_n_0_[8]\,
      I3 => r_ball_count2(8),
      O => \r_ball_count1_carry__0_i_4_n_0\
    );
\r_ball_count1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(15),
      I1 => \r_ball_count_reg_n_0_[15]\,
      I2 => r_ball_count2(14),
      I3 => \r_ball_count_reg_n_0_[14]\,
      O => \r_ball_count1_carry__0_i_5_n_0\
    );
\r_ball_count1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(13),
      I1 => \r_ball_count_reg_n_0_[13]\,
      I2 => r_ball_count2(12),
      I3 => \r_ball_count_reg_n_0_[12]\,
      O => \r_ball_count1_carry__0_i_6_n_0\
    );
\r_ball_count1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(11),
      I1 => \r_ball_count_reg_n_0_[11]\,
      I2 => r_ball_count2(10),
      I3 => \r_ball_count_reg_n_0_[10]\,
      O => \r_ball_count1_carry__0_i_7_n_0\
    );
\r_ball_count1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(9),
      I1 => \r_ball_count_reg_n_0_[9]\,
      I2 => r_ball_count2(8),
      I3 => \r_ball_count_reg_n_0_[8]\,
      O => \r_ball_count1_carry__0_i_8_n_0\
    );
\r_ball_count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count1_carry__0_n_0\,
      CO(3) => \r_ball_count1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_count1_carry__1_i_1_n_0\,
      DI(2) => \r_ball_count1_carry__1_i_2_n_0\,
      DI(1) => \r_ball_count1_carry__1_i_3_n_0\,
      DI(0) => \r_ball_count1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_r_ball_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_ball_count1_carry__1_i_5_n_0\,
      S(2) => \r_ball_count1_carry__1_i_6_n_0\,
      S(1) => \r_ball_count1_carry__1_i_7_n_0\,
      S(0) => \r_ball_count1_carry__1_i_8_n_0\
    );
\r_ball_count1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[23]\,
      I1 => r_ball_count2(23),
      I2 => \r_ball_count_reg_n_0_[22]\,
      I3 => r_ball_count2(22),
      O => \r_ball_count1_carry__1_i_1_n_0\
    );
\r_ball_count1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[21]\,
      I1 => r_ball_count2(21),
      I2 => \r_ball_count_reg_n_0_[20]\,
      I3 => r_ball_count2(20),
      O => \r_ball_count1_carry__1_i_2_n_0\
    );
\r_ball_count1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[19]\,
      I1 => r_ball_count2(19),
      I2 => \r_ball_count_reg_n_0_[18]\,
      I3 => r_ball_count2(18),
      O => \r_ball_count1_carry__1_i_3_n_0\
    );
\r_ball_count1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[17]\,
      I1 => r_ball_count2(17),
      I2 => \r_ball_count_reg_n_0_[16]\,
      I3 => r_ball_count2(16),
      O => \r_ball_count1_carry__1_i_4_n_0\
    );
\r_ball_count1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(23),
      I1 => \r_ball_count_reg_n_0_[23]\,
      I2 => r_ball_count2(22),
      I3 => \r_ball_count_reg_n_0_[22]\,
      O => \r_ball_count1_carry__1_i_5_n_0\
    );
\r_ball_count1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(21),
      I1 => \r_ball_count_reg_n_0_[21]\,
      I2 => r_ball_count2(20),
      I3 => \r_ball_count_reg_n_0_[20]\,
      O => \r_ball_count1_carry__1_i_6_n_0\
    );
\r_ball_count1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(19),
      I1 => \r_ball_count_reg_n_0_[19]\,
      I2 => r_ball_count2(18),
      I3 => \r_ball_count_reg_n_0_[18]\,
      O => \r_ball_count1_carry__1_i_7_n_0\
    );
\r_ball_count1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(17),
      I1 => \r_ball_count_reg_n_0_[17]\,
      I2 => r_ball_count2(16),
      I3 => \r_ball_count_reg_n_0_[16]\,
      O => \r_ball_count1_carry__1_i_8_n_0\
    );
r_ball_count1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[7]\,
      I1 => r_ball_count2(7),
      I2 => \r_ball_count_reg_n_0_[6]\,
      I3 => r_ball_count2(6),
      O => r_ball_count1_carry_i_1_n_0
    );
r_ball_count1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[5]\,
      I1 => r_ball_count2(5),
      I2 => \r_ball_count_reg_n_0_[4]\,
      I3 => r_ball_count2(4),
      O => r_ball_count1_carry_i_2_n_0
    );
r_ball_count1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[3]\,
      I1 => r_ball_count2(3),
      I2 => \r_ball_count_reg_n_0_[2]\,
      I3 => r_ball_count2(2),
      O => r_ball_count1_carry_i_3_n_0
    );
r_ball_count1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[1]\,
      I1 => r_ball_count2(1),
      I2 => \r_ball_rate_reg_n_0_[0]\,
      I3 => \r_ball_count_reg_n_0_[0]\,
      O => r_ball_count1_carry_i_4_n_0
    );
r_ball_count1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(7),
      I1 => \r_ball_count_reg_n_0_[7]\,
      I2 => r_ball_count2(6),
      I3 => \r_ball_count_reg_n_0_[6]\,
      O => r_ball_count1_carry_i_5_n_0
    );
r_ball_count1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(5),
      I1 => \r_ball_count_reg_n_0_[5]\,
      I2 => r_ball_count2(4),
      I3 => \r_ball_count_reg_n_0_[4]\,
      O => r_ball_count1_carry_i_6_n_0
    );
r_ball_count1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_ball_count2(3),
      I1 => \r_ball_count_reg_n_0_[3]\,
      I2 => r_ball_count2(2),
      I3 => \r_ball_count_reg_n_0_[2]\,
      O => r_ball_count1_carry_i_7_n_0
    );
r_ball_count1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \r_ball_count_reg_n_0_[0]\,
      I1 => \r_ball_rate_reg_n_0_[0]\,
      I2 => r_ball_count2(1),
      I3 => \r_ball_count_reg_n_0_[1]\,
      O => r_ball_count1_carry_i_8_n_0
    );
r_ball_count2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_count2_carry_n_0,
      CO(2 downto 0) => NLW_r_ball_count2_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \r_ball_rate_reg_n_0_[0]\,
      DI(3) => \r_ball_rate_reg_n_0_[4]\,
      DI(2) => \r_ball_rate_reg_n_0_[3]\,
      DI(1) => \r_ball_rate_reg_n_0_[2]\,
      DI(0) => \r_ball_rate_reg_n_0_[1]\,
      O(3 downto 0) => r_ball_count2(4 downto 1),
      S(3) => r_ball_count2_carry_i_1_n_0,
      S(2) => r_ball_count2_carry_i_2_n_0,
      S(1) => r_ball_count2_carry_i_3_n_0,
      S(0) => r_ball_count2_carry_i_4_n_0
    );
\r_ball_count2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_ball_count2_carry_n_0,
      CO(3) => \r_ball_count2_carry__0_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count2_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[8]\,
      DI(2) => \r_ball_rate_reg_n_0_[7]\,
      DI(1) => \r_ball_rate_reg_n_0_[6]\,
      DI(0) => \r_ball_rate_reg_n_0_[5]\,
      O(3 downto 0) => r_ball_count2(8 downto 5),
      S(3) => \r_ball_count2_carry__0_i_1_n_0\,
      S(2) => \r_ball_count2_carry__0_i_2_n_0\,
      S(1) => \r_ball_count2_carry__0_i_3_n_0\,
      S(0) => \r_ball_count2_carry__0_i_4_n_0\
    );
\r_ball_count2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[8]\,
      O => \r_ball_count2_carry__0_i_1_n_0\
    );
\r_ball_count2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[7]\,
      O => \r_ball_count2_carry__0_i_2_n_0\
    );
\r_ball_count2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[6]\,
      O => \r_ball_count2_carry__0_i_3_n_0\
    );
\r_ball_count2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[5]\,
      O => \r_ball_count2_carry__0_i_4_n_0\
    );
\r_ball_count2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count2_carry__0_n_0\,
      CO(3) => \r_ball_count2_carry__1_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count2_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[12]\,
      DI(2) => \r_ball_rate_reg_n_0_[11]\,
      DI(1) => \r_ball_rate_reg_n_0_[10]\,
      DI(0) => \r_ball_rate_reg_n_0_[9]\,
      O(3 downto 0) => r_ball_count2(12 downto 9),
      S(3) => \r_ball_count2_carry__1_i_1_n_0\,
      S(2) => \r_ball_count2_carry__1_i_2_n_0\,
      S(1) => \r_ball_count2_carry__1_i_3_n_0\,
      S(0) => \r_ball_count2_carry__1_i_4_n_0\
    );
\r_ball_count2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[12]\,
      O => \r_ball_count2_carry__1_i_1_n_0\
    );
\r_ball_count2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[11]\,
      O => \r_ball_count2_carry__1_i_2_n_0\
    );
\r_ball_count2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[10]\,
      O => \r_ball_count2_carry__1_i_3_n_0\
    );
\r_ball_count2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[9]\,
      O => \r_ball_count2_carry__1_i_4_n_0\
    );
\r_ball_count2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count2_carry__1_n_0\,
      CO(3) => \r_ball_count2_carry__2_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count2_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[16]\,
      DI(2) => \r_ball_rate_reg_n_0_[15]\,
      DI(1) => \r_ball_rate_reg_n_0_[14]\,
      DI(0) => \r_ball_rate_reg_n_0_[13]\,
      O(3 downto 0) => r_ball_count2(16 downto 13),
      S(3) => \r_ball_count2_carry__2_i_1_n_0\,
      S(2) => \r_ball_count2_carry__2_i_2_n_0\,
      S(1) => \r_ball_count2_carry__2_i_3_n_0\,
      S(0) => \r_ball_count2_carry__2_i_4_n_0\
    );
\r_ball_count2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[16]\,
      O => \r_ball_count2_carry__2_i_1_n_0\
    );
\r_ball_count2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[15]\,
      O => \r_ball_count2_carry__2_i_2_n_0\
    );
\r_ball_count2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[14]\,
      O => \r_ball_count2_carry__2_i_3_n_0\
    );
\r_ball_count2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[13]\,
      O => \r_ball_count2_carry__2_i_4_n_0\
    );
\r_ball_count2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count2_carry__2_n_0\,
      CO(3) => \r_ball_count2_carry__3_n_0\,
      CO(2 downto 0) => \NLW_r_ball_count2_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[20]\,
      DI(2) => \r_ball_rate_reg_n_0_[19]\,
      DI(1) => \r_ball_rate_reg_n_0_[18]\,
      DI(0) => \r_ball_rate_reg_n_0_[17]\,
      O(3 downto 0) => r_ball_count2(20 downto 17),
      S(3) => \r_ball_count2_carry__3_i_1_n_0\,
      S(2) => \r_ball_count2_carry__3_i_2_n_0\,
      S(1) => \r_ball_count2_carry__3_i_3_n_0\,
      S(0) => \r_ball_count2_carry__3_i_4_n_0\
    );
\r_ball_count2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[20]\,
      O => \r_ball_count2_carry__3_i_1_n_0\
    );
\r_ball_count2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[19]\,
      O => \r_ball_count2_carry__3_i_2_n_0\
    );
\r_ball_count2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[18]\,
      O => \r_ball_count2_carry__3_i_3_n_0\
    );
\r_ball_count2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[17]\,
      O => \r_ball_count2_carry__3_i_4_n_0\
    );
\r_ball_count2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_count2_carry__3_n_0\,
      CO(3 downto 0) => \NLW_r_ball_count2_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r_ball_rate_reg_n_0_[22]\,
      DI(0) => \r_ball_rate_reg_n_0_[21]\,
      O(3) => \NLW_r_ball_count2_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => r_ball_count2(23 downto 21),
      S(3) => '0',
      S(2) => \r_ball_count2_carry__4_i_1_n_0\,
      S(1) => \r_ball_count2_carry__4_i_2_n_0\,
      S(0) => \r_ball_count2_carry__4_i_3_n_0\
    );
\r_ball_count2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[23]\,
      O => \r_ball_count2_carry__4_i_1_n_0\
    );
\r_ball_count2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[22]\,
      O => \r_ball_count2_carry__4_i_2_n_0\
    );
\r_ball_count2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[21]\,
      O => \r_ball_count2_carry__4_i_3_n_0\
    );
r_ball_count2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[4]\,
      O => r_ball_count2_carry_i_1_n_0
    );
r_ball_count2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[3]\,
      O => r_ball_count2_carry_i_2_n_0
    );
r_ball_count2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[2]\,
      O => r_ball_count2_carry_i_3_n_0
    );
r_ball_count2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ball_rate_reg_n_0_[1]\,
      O => r_ball_count2_carry_i_4_n_0
    );
\r_ball_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count_reg_n_0_[0]\,
      O => \r_ball_count[0]_i_1_n_0\
    );
\r_ball_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__1_n_6\,
      O => \r_ball_count[10]_i_1_n_0\
    );
\r_ball_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__1_n_5\,
      O => \r_ball_count[11]_i_1_n_0\
    );
\r_ball_count[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__1_n_4\,
      O => \r_ball_count[12]_i_1_n_0\
    );
\r_ball_count[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__2_n_7\,
      O => \r_ball_count[13]_i_1_n_0\
    );
\r_ball_count[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__2_n_6\,
      O => \r_ball_count[14]_i_1_n_0\
    );
\r_ball_count[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__2_n_5\,
      O => \r_ball_count[15]_i_1_n_0\
    );
\r_ball_count[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__2_n_4\,
      O => \r_ball_count[16]_i_1_n_0\
    );
\r_ball_count[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__3_n_7\,
      O => \r_ball_count[17]_i_1_n_0\
    );
\r_ball_count[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__3_n_6\,
      O => \r_ball_count[18]_i_1_n_0\
    );
\r_ball_count[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__3_n_5\,
      O => \r_ball_count[19]_i_1_n_0\
    );
\r_ball_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => r_ball_count0_carry_n_7,
      O => \r_ball_count[1]_i_1_n_0\
    );
\r_ball_count[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__3_n_4\,
      O => \r_ball_count[20]_i_1_n_0\
    );
\r_ball_count[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__4_n_7\,
      O => \r_ball_count[21]_i_1_n_0\
    );
\r_ball_count[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__4_n_6\,
      O => \r_ball_count[22]_i_1_n_0\
    );
\r_ball_count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_play_state(1),
      I1 => r_play_state(0),
      O => r_ball_count0
    );
\r_ball_count[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4054FFFF"
    )
        port map (
      I0 => r_play_state(1),
      I1 => r_play_state(0),
      I2 => \^r_game_state\(0),
      I3 => \^r_game_state\(1),
      I4 => CPU_RESETN_IBUF,
      O => r_ball_count(0)
    );
\r_ball_count[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \r_ball_count[23]_i_4_n_0\,
      I1 => \r_ball_count0_carry__4_n_5\,
      I2 => \r_ball_count[23]_i_5_n_0\,
      O => \r_ball_count[23]_i_3_n_0\
    );
\r_ball_count[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
        port map (
      I0 => \r_ball_count1_carry__1_n_0\,
      I1 => \^r_game_state\(1),
      I2 => \^r_game_state\(0),
      I3 => r_play_state(0),
      I4 => r_play_state(1),
      O => \r_ball_count[23]_i_4_n_0\
    );
\r_ball_count[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0A0F0B0"
    )
        port map (
      I0 => r_play_state(1),
      I1 => r_play_state(0),
      I2 => CPU_RESETN_IBUF,
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      O => \r_ball_count[23]_i_5_n_0\
    );
\r_ball_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => r_ball_count0_carry_n_6,
      O => \r_ball_count[2]_i_1_n_0\
    );
\r_ball_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => r_ball_count0_carry_n_5,
      O => \r_ball_count[3]_i_1_n_0\
    );
\r_ball_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => r_ball_count0_carry_n_4,
      O => \r_ball_count[4]_i_1_n_0\
    );
\r_ball_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__0_n_7\,
      O => \r_ball_count[5]_i_1_n_0\
    );
\r_ball_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__0_n_6\,
      O => \r_ball_count[6]_i_1_n_0\
    );
\r_ball_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__0_n_5\,
      O => \r_ball_count[7]_i_1_n_0\
    );
\r_ball_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__0_n_4\,
      O => \r_ball_count[8]_i_1_n_0\
    );
\r_ball_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \r_ball_count[23]_i_5_n_0\,
      I1 => \r_ball_count[23]_i_4_n_0\,
      I2 => \r_ball_count0_carry__1_n_7\,
      O => \r_ball_count[9]_i_1_n_0\
    );
\r_ball_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[0]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[0]\,
      R => r_ball_count0
    );
\r_ball_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[10]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[10]\,
      R => r_ball_count0
    );
\r_ball_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[11]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[11]\,
      R => r_ball_count0
    );
\r_ball_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[12]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[12]\,
      R => r_ball_count0
    );
\r_ball_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[13]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[13]\,
      R => r_ball_count0
    );
\r_ball_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[14]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[14]\,
      R => r_ball_count0
    );
\r_ball_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[15]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[15]\,
      R => r_ball_count0
    );
\r_ball_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[16]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[16]\,
      R => r_ball_count0
    );
\r_ball_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[17]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[17]\,
      R => r_ball_count0
    );
\r_ball_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[18]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[18]\,
      R => r_ball_count0
    );
\r_ball_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[19]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[19]\,
      R => r_ball_count0
    );
\r_ball_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[1]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[1]\,
      R => r_ball_count0
    );
\r_ball_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[20]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[20]\,
      R => r_ball_count0
    );
\r_ball_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[21]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[21]\,
      R => r_ball_count0
    );
\r_ball_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[22]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[22]\,
      R => r_ball_count0
    );
\r_ball_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[23]_i_3_n_0\,
      Q => \r_ball_count_reg_n_0_[23]\,
      R => r_ball_count0
    );
\r_ball_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[2]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[2]\,
      R => r_ball_count0
    );
\r_ball_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[3]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[3]\,
      R => r_ball_count0
    );
\r_ball_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[4]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[4]\,
      R => r_ball_count0
    );
\r_ball_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[5]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[5]\,
      R => r_ball_count0
    );
\r_ball_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[6]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[6]\,
      R => r_ball_count0
    );
\r_ball_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[7]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[7]\,
      R => r_ball_count0
    );
\r_ball_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[8]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[8]\,
      R => r_ball_count0
    );
\r_ball_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_count(0),
      D => \r_ball_count[9]_i_1_n_0\,
      Q => \r_ball_count_reg_n_0_[9]\,
      R => r_ball_count0
    );
\r_ball_dir_x1_inferred__3/i___47_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_ball_dir_x1_inferred__3/i___47_carry_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i___47_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i___47_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___47_carry_i_1_n_0\,
      S(2) => \i___47_carry_i_2_n_0\,
      S(1) => \i___47_carry_i_3_n_0\,
      S(0) => \i___47_carry_i_4_n_0\
    );
\r_ball_dir_x1_inferred__3/i___47_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i___47_carry_n_0\,
      CO(3) => \r_ball_dir_x1_inferred__3/i___47_carry__0_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i___47_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i___47_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___47_carry__0_i_1_n_0\,
      S(2) => \i___47_carry__0_i_2_n_0\,
      S(1) => \i___47_carry__0_i_3_n_0\,
      S(0) => \i___47_carry__0_i_4_n_0\
    );
\r_ball_dir_x1_inferred__3/i___47_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i___47_carry__0_n_0\,
      CO(3 downto 1) => \NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i___47_carry__1_i_1_n_3\
    );
\r_ball_dir_x1_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_ball_dir_x1_inferred__3/i__carry_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[3]\,
      DI(2) => \r_ball_rate_reg_n_0_[2]\,
      DI(1) => \r_ball_rate_reg_n_0_[1]\,
      DI(0) => '0',
      O(3) => \r_ball_dir_x1_inferred__3/i__carry_n_4\,
      O(2) => \r_ball_dir_x1_inferred__3/i__carry_n_5\,
      O(1) => \r_ball_dir_x1_inferred__3/i__carry_n_6\,
      O(0) => \r_ball_dir_x1_inferred__3/i__carry_n_7\,
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \r_ball_rate_reg_n_0_[0]\
    );
\r_ball_dir_x1_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i__carry_n_0\,
      CO(3) => \r_ball_dir_x1_inferred__3/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[7]\,
      DI(2) => \r_ball_rate_reg_n_0_[6]\,
      DI(1) => \r_ball_rate_reg_n_0_[5]\,
      DI(0) => \r_ball_rate_reg_n_0_[4]\,
      O(3) => \r_ball_dir_x1_inferred__3/i__carry__0_n_4\,
      O(2) => \r_ball_dir_x1_inferred__3/i__carry__0_n_5\,
      O(1) => \r_ball_dir_x1_inferred__3/i__carry__0_n_6\,
      O(0) => \r_ball_dir_x1_inferred__3/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\r_ball_dir_x1_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i__carry__0_n_0\,
      CO(3) => \r_ball_dir_x1_inferred__3/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[11]\,
      DI(2) => \r_ball_rate_reg_n_0_[10]\,
      DI(1) => \r_ball_rate_reg_n_0_[9]\,
      DI(0) => \r_ball_rate_reg_n_0_[8]\,
      O(3) => \r_ball_dir_x1_inferred__3/i__carry__1_n_4\,
      O(2) => \r_ball_dir_x1_inferred__3/i__carry__1_n_5\,
      O(1) => \r_ball_dir_x1_inferred__3/i__carry__1_n_6\,
      O(0) => \r_ball_dir_x1_inferred__3/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\r_ball_dir_x1_inferred__3/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i__carry__1_n_0\,
      CO(3) => \r_ball_dir_x1_inferred__3/i__carry__2_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[15]\,
      DI(2) => \r_ball_rate_reg_n_0_[14]\,
      DI(1) => \r_ball_rate_reg_n_0_[13]\,
      DI(0) => \r_ball_rate_reg_n_0_[12]\,
      O(3) => \r_ball_dir_x1_inferred__3/i__carry__2_n_4\,
      O(2) => \r_ball_dir_x1_inferred__3/i__carry__2_n_5\,
      O(1) => \r_ball_dir_x1_inferred__3/i__carry__2_n_6\,
      O(0) => \r_ball_dir_x1_inferred__3/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\r_ball_dir_x1_inferred__3/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i__carry__2_n_0\,
      CO(3) => \r_ball_dir_x1_inferred__3/i__carry__3_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i__carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[19]\,
      DI(2) => \r_ball_rate_reg_n_0_[18]\,
      DI(1) => \r_ball_rate_reg_n_0_[17]\,
      DI(0) => \r_ball_rate_reg_n_0_[16]\,
      O(3) => \r_ball_dir_x1_inferred__3/i__carry__3_n_4\,
      O(2) => \r_ball_dir_x1_inferred__3/i__carry__3_n_5\,
      O(1) => \r_ball_dir_x1_inferred__3/i__carry__3_n_6\,
      O(0) => \r_ball_dir_x1_inferred__3/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\r_ball_dir_x1_inferred__3/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_ball_dir_x1_inferred__3/i__carry__3_n_0\,
      CO(3) => \r_ball_dir_x1_inferred__3/i__carry__4_n_0\,
      CO(2 downto 0) => \NLW_r_ball_dir_x1_inferred__3/i__carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \r_ball_rate_reg_n_0_[23]\,
      DI(2) => \r_ball_rate_reg_n_0_[22]\,
      DI(1) => \r_ball_rate_reg_n_0_[21]\,
      DI(0) => \r_ball_rate_reg_n_0_[20]\,
      O(3) => \r_ball_dir_x1_inferred__3/i__carry__4_n_4\,
      O(2) => \r_ball_dir_x1_inferred__3/i__carry__4_n_5\,
      O(1) => \r_ball_dir_x1_inferred__3/i__carry__4_n_6\,
      O(0) => \r_ball_dir_x1_inferred__3/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
r_ball_dir_x2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_dir_x2,
      CO(2 downto 0) => NLW_r_ball_dir_x2_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => r_ball_dir_x3(6),
      DI(2) => r_ball_dir_x2_carry_i_2_n_0,
      DI(1) => r_ball_dir_x2_carry_i_3_n_0,
      DI(0) => r_ball_dir_x2_carry_i_4_n_0,
      O(3 downto 0) => NLW_r_ball_dir_x2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_ball_dir_x2_carry_i_5_n_0,
      S(2) => r_ball_dir_x2_carry_i_6_n_0,
      S(1) => r_ball_dir_x2_carry_i_7_n_0,
      S(0) => r_ball_dir_x2_carry_i_8_n_0
    );
r_ball_dir_x2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => r_ball_dir_x2_carry_0,
      I1 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I5 => w_Paddle_size(2),
      O => r_ball_dir_x3(6)
    );
r_ball_dir_x2_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B0000FFFFBB2B"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I5 => w_Paddle_size(2),
      O => r_ball_dir_x2_carry_i_10_n_0
    );
r_ball_dir_x2_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(0),
      O => r_ball_dir_x2_carry_i_11_n_0
    );
r_ball_dir_x2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2AAFBC0002AAA8"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => r_ball_dir_x2_carry_i_10_n_0,
      I2 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => r_ball_dir_x2_carry_i_2_n_0
    );
r_ball_dir_x2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE8A38E38A0820A2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => r_ball_dir_x2_carry_i_11_n_0,
      I2 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I3 => w_Paddle_size(2),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I5 => w_Ball_pos_y(2),
      O => r_ball_dir_x2_carry_i_3_n_0
    );
r_ball_dir_x2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB8228EB82822882"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I3 => w_Paddle_size(0),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => r_ball_dir_x2_carry_i_4_n_0
    );
r_ball_dir_x2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => w_Paddle_size(2),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I5 => r_ball_dir_x2_carry_0,
      O => r_ball_dir_x2_carry_i_5_n_0
    );
r_ball_dir_x2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I1 => \^r_ball_pos_y_reg[5]_0\(4),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I3 => r_ball_dir_x2_carry_i_10_n_0,
      I4 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => r_ball_dir_x2_carry_i_6_n_0
    );
r_ball_dir_x2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006096009609009"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I1 => \^r_ball_pos_y_reg[5]_0\(2),
      I2 => r_ball_dir_x2_carry_i_11_n_0,
      I3 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I4 => w_Paddle_size(2),
      I5 => w_Ball_pos_y(2),
      O => r_ball_dir_x2_carry_i_7_n_0
    );
r_ball_dir_x2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0069960069000069"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => w_Paddle_size(0),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => r_ball_dir_x2_carry_i_8_n_0
    );
\r_ball_dir_x2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_dir_x22_in,
      CO(2 downto 0) => \NLW_r_ball_dir_x2_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r_ball_dir_x2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\r_ball_dir_x2_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_dir_x23_in,
      CO(2 downto 0) => \NLW_r_ball_dir_x2_inferred__1/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_r_ball_dir_x2_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\r_ball_dir_x2_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_ball_dir_x24_in,
      CO(2 downto 0) => \NLW_r_ball_dir_x2_inferred__2/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_r_ball_dir_x2_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
r_ball_dir_x_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCECCFFFCCECC000"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_ball_dir_x_i_2_n_0,
      I2 => r_ball_dir_x_i_3_n_0,
      I3 => r_ball_dir_x_i_4_n_0,
      I4 => r_ball_dir_x_i_5_n_0,
      I5 => r_ball_dir_x_reg_n_0,
      O => r_ball_dir_x_i_1_n_0
    );
r_ball_dir_x_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEAAABAA"
    )
        port map (
      I0 => r_ball_dir_x_i_6_n_0,
      I1 => \r_serve_pattern_reg_n_0_[1]\,
      I2 => r_play_state(0),
      I3 => r_play_state(1),
      I4 => r_point_p2_reg_n_0,
      I5 => r_ball_dir_x_i_7_n_0,
      O => r_ball_dir_x_i_2_n_0
    );
r_ball_dir_x_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      O => r_ball_dir_x_i_3_n_0
    );
r_ball_dir_x_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800000008000"
    )
        port map (
      I0 => r_ball_dir_x23_in,
      I1 => r_ball_dir_x24_in,
      I2 => r_point_p2_i_3_n_0,
      I3 => \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\,
      I4 => \^r_game_state\(1),
      I5 => \^r_game_state\(0),
      O => r_ball_dir_x_i_4_n_0
    );
r_ball_dir_x_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5D5F5D5D"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(1),
      I2 => r_play_state(0),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      I5 => r_ball_dir_x_i_6_n_0,
      O => r_ball_dir_x_i_5_n_0
    );
r_ball_dir_x_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \FSM_sequential_r_play_state[1]_i_6_n_0\,
      I1 => r_ball_dir_x_i_3_n_0,
      I2 => r_ball_dir_x22_in,
      I3 => r_ball_dir_x2,
      I4 => \^r_game_state_reg[1]_2\,
      I5 => \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\,
      O => r_ball_dir_x_i_6_n_0
    );
r_ball_dir_x_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82808282"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      O => r_ball_dir_x_i_7_n_0
    );
r_ball_dir_x_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_ball_dir_x_i_1_n_0,
      Q => r_ball_dir_x_reg_n_0,
      R => '0'
    );
r_ball_dir_y_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF554FC0C0FFC0"
    )
        port map (
      I0 => r_ball_dir_y_i_2_n_0,
      I1 => r_ball_dir_y_i_3_n_0,
      I2 => \r_ball_pos_y[5]_i_3_n_0\,
      I3 => r_ball_dir_x_i_3_n_0,
      I4 => r_ball_dir_y_i_4_n_0,
      I5 => r_ball_dir_y_reg_n_0,
      O => r_ball_dir_y_i_1_n_0
    );
r_ball_dir_y_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF99F0FFFF99FF"
    )
        port map (
      I0 => \r_serve_pattern_reg_n_0_[0]\,
      I1 => \r_serve_pattern_reg_n_0_[1]\,
      I2 => \^r_game_state_reg[0]_1\,
      I3 => r_play_state(1),
      I4 => r_play_state(0),
      I5 => CPU_RESETN_IBUF,
      O => r_ball_dir_y_i_2_n_0
    );
r_ball_dir_y_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF600060FF6F0060"
    )
        port map (
      I0 => \r_serve_pattern_reg_n_0_[1]\,
      I1 => \r_serve_pattern_reg_n_0_[0]\,
      I2 => r_play_state(1),
      I3 => r_play_state(0),
      I4 => CPU_RESETN_IBUF,
      I5 => \^r_game_state_reg[0]_1\,
      O => r_ball_dir_y_i_3_n_0
    );
r_ball_dir_y_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15555555"
    )
        port map (
      I0 => \r_ball_pos_y[5]_i_5_n_0\,
      I1 => \^r_ball_pos_y_reg[5]_0\(3),
      I2 => w_Ball_pos_y(2),
      I3 => \^r_ball_pos_y_reg[5]_0\(4),
      I4 => \^r_ball_pos_y_reg[5]_0\(2),
      I5 => r_ball_dir_y_i_5_n_0,
      O => r_ball_dir_y_i_4_n_0
    );
r_ball_dir_y_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      I2 => \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\,
      O => r_ball_dir_y_i_5_n_0
    );
r_ball_dir_y_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_ball_dir_y_i_1_n_0,
      Q => r_ball_dir_y_reg_n_0,
      R => '0'
    );
\r_ball_pos_x[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DD0F0000"
    )
        port map (
      I0 => \r_ball_pos_x[0]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \r_ball_pos_x[6]_i_3_n_0\,
      I3 => r_ball_dir_x_reg_n_0,
      I4 => \r_ball_pos_x[6]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_ball_pos_x[0]_i_1_n_0\
    );
\r_ball_pos_x[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => \r_ball_pos_x[0]_i_2_n_0\
    );
\r_ball_pos_x[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E33EFFFF"
    )
        port map (
      I0 => \r_ball_pos_x[6]_i_3_n_0\,
      I1 => r_ball_dir_x_reg_n_0,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \r_ball_pos_x[6]_i_5_n_0\,
      O => \r_ball_pos_x[1]_i_1_n_0\
    );
\r_ball_pos_x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9FF6AFFFFFFFF"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \r_ball_pos_x[6]_i_3_n_0\,
      I4 => r_ball_dir_x_reg_n_0,
      I5 => \r_ball_pos_x[6]_i_5_n_0\,
      O => \r_ball_pos_x[2]_i_1_n_0\
    );
\r_ball_pos_x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020002020"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => \r_ball_count1_carry__1_n_0\,
      I3 => \^r_game_state\(0),
      I4 => \^r_game_state\(1),
      I5 => \r_ball_pos_x[3]_i_2_n_0\,
      O => \r_ball_pos_x[3]_i_1_n_0\
    );
\r_ball_pos_x[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"433333317777777D"
    )
        port map (
      I0 => \r_ball_pos_x[3]_i_3_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => w_Ball_pos_x(2),
      I5 => \r_ball_pos_x[3]_i_4_n_0\,
      O => \r_ball_pos_x[3]_i_2_n_0\
    );
\r_ball_pos_x[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => r_ball_dir_x_reg_n_0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \r_ball_pos_x[0]_i_2_n_0\,
      O => \r_ball_pos_x[3]_i_3_n_0\
    );
\r_ball_pos_x[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ball_dir_x_reg_n_0,
      I1 => \r_ball_pos_x[6]_i_3_n_0\,
      O => \r_ball_pos_x[3]_i_4_n_0\
    );
\r_ball_pos_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF655F6FFFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \r_ball_pos_x[4]_i_2_n_0\,
      I2 => \r_ball_pos_x[6]_i_3_n_0\,
      I3 => r_ball_dir_x_reg_n_0,
      I4 => \r_ball_pos_x[4]_i_3_n_0\,
      I5 => \r_ball_pos_x[6]_i_5_n_0\,
      O => \r_ball_pos_x[4]_i_1_n_0\
    );
\r_ball_pos_x[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \r_ball_pos_x[4]_i_2_n_0\
    );
\r_ball_pos_x[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => w_Ball_pos_x(2),
      O => \r_ball_pos_x[4]_i_3_n_0\
    );
\r_ball_pos_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF655F6FFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \r_ball_pos_x[5]_i_2_n_0\,
      I2 => \r_ball_pos_x[6]_i_3_n_0\,
      I3 => r_ball_dir_x_reg_n_0,
      I4 => \r_ball_pos_x[5]_i_3_n_0\,
      I5 => \r_ball_pos_x[6]_i_5_n_0\,
      O => \r_ball_pos_x[5]_i_1_n_0\
    );
\r_ball_pos_x[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => w_Ball_pos_x(2),
      I4 => \^q\(3),
      O => \r_ball_pos_x[5]_i_2_n_0\
    );
\r_ball_pos_x[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => w_Ball_pos_x(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \r_ball_pos_x[5]_i_3_n_0\
    );
\r_ball_pos_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55F6AAF6FFFFFFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \r_ball_pos_x[6]_i_2_n_0\,
      I2 => \r_ball_pos_x[6]_i_3_n_0\,
      I3 => r_ball_dir_x_reg_n_0,
      I4 => \r_ball_pos_x[6]_i_4_n_0\,
      I5 => \r_ball_pos_x[6]_i_5_n_0\,
      O => \r_ball_pos_x[6]_i_1_n_0\
    );
\r_ball_pos_x[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => w_Ball_pos_x(2),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(4),
      O => \r_ball_pos_x[6]_i_2_n_0\
    );
\r_ball_pos_x[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \FSM_sequential_r_play_state[1]_i_6_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \r_ball_pos_x[6]_i_3_n_0\
    );
\r_ball_pos_x[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => w_Ball_pos_x(2),
      I5 => \^q\(3),
      O => \r_ball_pos_x[6]_i_4_n_0\
    );
\r_ball_pos_x[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D00000"
    )
        port map (
      I0 => \^r_game_state\(1),
      I1 => \^r_game_state\(0),
      I2 => \r_ball_count1_carry__1_n_0\,
      I3 => r_play_state(1),
      I4 => r_play_state(0),
      O => \r_ball_pos_x[6]_i_5_n_0\
    );
\r_ball_pos_x[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55575555"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      I5 => \r_ball_pos_x[7]_i_3_n_0\,
      O => r_ball_pos_x(0)
    );
\r_ball_pos_x[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020002020"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => \r_ball_count1_carry__1_n_0\,
      I3 => \^r_game_state\(0),
      I4 => \^r_game_state\(1),
      I5 => \r_ball_pos_x[7]_i_4_n_0\,
      O => \r_ball_pos_x[7]_i_2_n_0\
    );
\r_ball_pos_x[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A028A8A8A8A"
    )
        port map (
      I0 => \r_ball_pos_x[6]_i_5_n_0\,
      I1 => r_ball_dir_x_reg_n_0,
      I2 => \r_ball_pos_x[6]_i_3_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \r_ball_pos_x[0]_i_2_n_0\,
      O => \r_ball_pos_x[7]_i_3_n_0\
    );
\r_ball_pos_x[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B830B8FCFFFFFF"
    )
        port map (
      I0 => \r_ball_pos_x[6]_i_4_n_0\,
      I1 => r_ball_dir_x_reg_n_0,
      I2 => \r_ball_pos_x[6]_i_3_n_0\,
      I3 => \^q\(5),
      I4 => \r_ball_pos_x[6]_i_2_n_0\,
      I5 => \^q\(6),
      O => \r_ball_pos_x[7]_i_4_n_0\
    );
\r_ball_pos_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[0]_i_1_n_0\,
      Q => \^q\(0),
      R => r_ball_count0
    );
\r_ball_pos_x_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[1]_i_1_n_0\,
      Q => \^q\(1),
      S => r_ball_count0
    );
\r_ball_pos_x_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[2]_i_1_n_0\,
      Q => w_Ball_pos_x(2),
      S => r_ball_count0
    );
\r_ball_pos_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[3]_i_1_n_0\,
      Q => \^q\(2),
      R => r_ball_count0
    );
\r_ball_pos_x_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[4]_i_1_n_0\,
      Q => \^q\(3),
      S => r_ball_count0
    );
\r_ball_pos_x_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[5]_i_1_n_0\,
      Q => \^q\(4),
      S => r_ball_count0
    );
\r_ball_pos_x_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[6]_i_1_n_0\,
      Q => \^q\(5),
      S => r_ball_count0
    );
\r_ball_pos_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_x(0),
      D => \r_ball_pos_x[7]_i_2_n_0\,
      Q => \^q\(6),
      R => r_ball_count0
    );
\r_ball_pos_y[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBF0000FBBFFBBF"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => \r_serve_pattern_reg_n_0_[0]\,
      I3 => \r_serve_pattern_reg_n_0_[1]\,
      I4 => \r_ball_pos_y[5]_i_4_n_0\,
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => \r_ball_pos_y[0]_i_1_n_0\
    );
\r_ball_pos_y[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAEAAAEEA"
    )
        port map (
      I0 => \r_ball_pos_y[1]_i_2_n_0\,
      I1 => \r_ball_pos_y[5]_i_7_n_0\,
      I2 => \r_ball_pos_y[1]_i_3_n_0\,
      I3 => r_ball_dir_y_reg_n_0,
      I4 => \r_ball_pos_y[1]_i_4_n_0\,
      I5 => \r_ball_pos_y[5]_i_5_n_0\,
      O => \r_ball_pos_y[1]_i_1_n_0\
    );
\r_ball_pos_y[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => \r_serve_pattern_reg_n_0_[0]\,
      I3 => \r_serve_pattern_reg_n_0_[1]\,
      O => \r_ball_pos_y[1]_i_2_n_0\
    );
\r_ball_pos_y[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(0),
      I1 => \^r_ball_pos_y_reg[5]_0\(1),
      O => \r_ball_pos_y[1]_i_3_n_0\
    );
\r_ball_pos_y[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => \^r_ball_pos_y_reg[5]_0\(0),
      I2 => \^r_ball_pos_y_reg[5]_0\(2),
      I3 => \^r_ball_pos_y_reg[5]_0\(4),
      I4 => w_Ball_pos_y(2),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \r_ball_pos_y[1]_i_4_n_0\
    );
\r_ball_pos_y[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEABBFEA"
    )
        port map (
      I0 => \r_ball_pos_y[5]_i_4_n_0\,
      I1 => \^r_ball_pos_y_reg[5]_0\(0),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => w_Ball_pos_y(2),
      I4 => r_ball_dir_y_reg_n_0,
      O => \r_ball_pos_y[2]_i_1_n_0\
    );
\r_ball_pos_y[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAABBFFFEAAA"
    )
        port map (
      I0 => \r_ball_pos_y[5]_i_4_n_0\,
      I1 => w_Ball_pos_y(2),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => \^r_ball_pos_y_reg[5]_0\(0),
      I4 => \^r_ball_pos_y_reg[5]_0\(2),
      I5 => r_ball_dir_y_reg_n_0,
      O => \r_ball_pos_y[3]_i_1_n_0\
    );
\r_ball_pos_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88A8A8AA88AA8A8"
    )
        port map (
      I0 => \r_ball_pos_y[4]_i_2_n_0\,
      I1 => \r_ball_pos_y[5]_i_4_n_0\,
      I2 => \^r_ball_pos_y_reg[5]_0\(3),
      I3 => \r_ball_pos_y[4]_i_3_n_0\,
      I4 => r_ball_dir_y_reg_n_0,
      I5 => \r_ball_pos_y[4]_i_4_n_0\,
      O => \r_ball_pos_y[4]_i_1_n_0\
    );
\r_ball_pos_y[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF9F"
    )
        port map (
      I0 => \r_serve_pattern_reg_n_0_[1]\,
      I1 => \r_serve_pattern_reg_n_0_[0]\,
      I2 => r_play_state(1),
      I3 => r_play_state(0),
      O => \r_ball_pos_y[4]_i_2_n_0\
    );
\r_ball_pos_y[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => \^r_ball_pos_y_reg[5]_0\(0),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => w_Ball_pos_y(2),
      O => \r_ball_pos_y[4]_i_3_n_0\
    );
\r_ball_pos_y[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(0),
      I1 => \^r_ball_pos_y_reg[5]_0\(1),
      I2 => w_Ball_pos_y(2),
      I3 => \^r_ball_pos_y_reg[5]_0\(2),
      O => \r_ball_pos_y[4]_i_4_n_0\
    );
\r_ball_pos_y[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBB"
    )
        port map (
      I0 => \r_ball_pos_y[5]_i_3_n_0\,
      I1 => \r_ball_pos_y[5]_i_4_n_0\,
      I2 => r_ball_dir_y_reg_n_0,
      I3 => \r_ball_pos_y[5]_i_5_n_0\,
      O => r_ball_pos_y(0)
    );
\r_ball_pos_y[5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_game_state\(1),
      I1 => \^r_game_state\(0),
      O => \^r_game_state_reg[1]_2\
    );
\r_ball_pos_y[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => \r_serve_pattern_reg_n_0_[1]\,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => \r_serve_pattern_reg_n_0_[0]\,
      I4 => \r_ball_pos_y[5]_i_6_n_0\,
      I5 => \r_ball_pos_y[5]_i_7_n_0\,
      O => \r_ball_pos_y[5]_i_2_n_0\
    );
\r_ball_pos_y[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F02FFFF"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      I2 => r_play_state(0),
      I3 => r_play_state(1),
      I4 => CPU_RESETN_IBUF,
      O => \r_ball_pos_y[5]_i_3_n_0\
    );
\r_ball_pos_y[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => r_ball_dir_y_reg_n_0,
      I1 => \r_ball_pos_y[1]_i_4_n_0\,
      I2 => \r_ball_pos_y[5]_i_7_n_0\,
      O => \r_ball_pos_y[5]_i_4_n_0\
    );
\r_ball_pos_y[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => \^r_ball_pos_y_reg[5]_0\(2),
      I2 => \^r_ball_pos_y_reg[5]_0\(0),
      I3 => \^r_ball_pos_y_reg[5]_0\(1),
      I4 => w_Ball_pos_y(2),
      I5 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \r_ball_pos_y[5]_i_5_n_0\
    );
\r_ball_pos_y[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCDFFCD"
    )
        port map (
      I0 => \r_ball_pos_y[5]_i_8_n_0\,
      I1 => \r_ball_pos_y[1]_i_4_n_0\,
      I2 => \^r_ball_pos_y_reg[5]_0\(4),
      I3 => r_ball_dir_y_reg_n_0,
      I4 => \r_ball_pos_y[5]_i_9_n_0\,
      O => \r_ball_pos_y[5]_i_6_n_0\
    );
\r_ball_pos_y[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000400000"
    )
        port map (
      I0 => r_play_state(1),
      I1 => r_play_state(0),
      I2 => \r_ball_count1_carry__1_n_0\,
      I3 => \^r_game_state_reg[1]_2\,
      I4 => \r_y_step_count_reg_n_0_[0]\,
      I5 => \r_y_step_count_reg_n_0_[2]\,
      O => \r_ball_pos_y[5]_i_7_n_0\
    );
\r_ball_pos_y[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => w_Ball_pos_y(2),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => \^r_ball_pos_y_reg[5]_0\(0),
      I4 => \^r_ball_pos_y_reg[5]_0\(3),
      O => \r_ball_pos_y[5]_i_8_n_0\
    );
\r_ball_pos_y[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(3),
      I1 => w_Ball_pos_y(2),
      I2 => \^r_ball_pos_y_reg[5]_0\(1),
      I3 => \^r_ball_pos_y_reg[5]_0\(0),
      I4 => \^r_ball_pos_y_reg[5]_0\(2),
      O => \r_ball_pos_y[5]_i_9_n_0\
    );
\r_ball_pos_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_y(0),
      D => \r_ball_pos_y[0]_i_1_n_0\,
      Q => \^r_ball_pos_y_reg[5]_0\(0),
      R => '0'
    );
\r_ball_pos_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_y(0),
      D => \r_ball_pos_y[1]_i_1_n_0\,
      Q => \^r_ball_pos_y_reg[5]_0\(1),
      R => '0'
    );
\r_ball_pos_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_y(0),
      D => \r_ball_pos_y[2]_i_1_n_0\,
      Q => w_Ball_pos_y(2),
      R => '0'
    );
\r_ball_pos_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_y(0),
      D => \r_ball_pos_y[3]_i_1_n_0\,
      Q => \^r_ball_pos_y_reg[5]_0\(2),
      R => '0'
    );
\r_ball_pos_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_y(0),
      D => \r_ball_pos_y[4]_i_1_n_0\,
      Q => \^r_ball_pos_y_reg[5]_0\(3),
      R => '0'
    );
\r_ball_pos_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pos_y(0),
      D => \r_ball_pos_y[5]_i_2_n_0\,
      Q => \^r_ball_pos_y_reg[5]_0\(4),
      R => '0'
    );
\r_ball_pre_x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[0]_0\
    );
\r_ball_pre_x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[1]_0\
    );
\r_ball_pre_x[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w_Ball_pos_x(2),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[2]_1\
    );
\r_ball_pre_x[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[3]_2\
    );
\r_ball_pre_x[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[4]_0\
    );
\r_ball_pre_x[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[5]_0\
    );
\r_ball_pre_x[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[6]_0\
    );
\r_ball_pre_x[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_x_reg[7]_0\
    );
\r_ball_pre_y[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(0),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_y_reg[0]_0\
    );
\r_ball_pre_y[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_y_reg[1]_0\
    );
\r_ball_pre_y[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w_Ball_pos_y(2),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_y_reg[2]_0\
    );
\r_ball_pre_y[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(2),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_y_reg[3]_0\
    );
\r_ball_pre_y[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(3),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_y_reg[4]_0\
    );
\r_ball_pre_y[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(4),
      I1 => \r_ball_pre_x_reg[0]\,
      O => \r_ball_pos_y_reg[5]_1\
    );
\r_ball_rate[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555551"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_game_state\(0),
      I2 => \^r_game_state\(1),
      I3 => r_play_state(1),
      I4 => r_play_state(0),
      O => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002FFFF"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      I2 => r_play_state(1),
      I3 => r_play_state(0),
      I4 => CPU_RESETN_IBUF,
      O => \r_ball_rate[23]_i_1_n_0\
    );
\r_ball_rate[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => \^r_game_state\(1),
      I3 => \^r_game_state\(0),
      O => \FSM_sequential_r_play_state_reg[0]_0\
    );
\r_ball_rate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(0),
      Q => \r_ball_rate_reg_n_0_[0]\,
      R => '0'
    );
\r_ball_rate_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(7),
      Q => \r_ball_rate_reg_n_0_[10]\,
      R => '0'
    );
\r_ball_rate_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(8),
      Q => \r_ball_rate_reg_n_0_[11]\,
      R => '0'
    );
\r_ball_rate_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(9),
      Q => \r_ball_rate_reg_n_0_[12]\,
      R => '0'
    );
\r_ball_rate_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(10),
      Q => \r_ball_rate_reg_n_0_[13]\,
      R => '0'
    );
\r_ball_rate_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[14]_0\,
      Q => \r_ball_rate_reg_n_0_[14]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(11),
      Q => \r_ball_rate_reg_n_0_[15]\,
      R => '0'
    );
\r_ball_rate_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(12),
      Q => \r_ball_rate_reg_n_0_[16]\,
      R => '0'
    );
\r_ball_rate_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[17]_0\,
      Q => \r_ball_rate_reg_n_0_[17]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[18]_0\,
      Q => \r_ball_rate_reg_n_0_[18]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[19]_0\,
      Q => \r_ball_rate_reg_n_0_[19]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(1),
      Q => \r_ball_rate_reg_n_0_[1]\,
      R => '0'
    );
\r_ball_rate_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(13),
      Q => \r_ball_rate_reg_n_0_[20]\,
      R => '0'
    );
\r_ball_rate_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(14),
      Q => \r_ball_rate_reg_n_0_[21]\,
      R => '0'
    );
\r_ball_rate_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(15),
      Q => \r_ball_rate_reg_n_0_[22]\,
      R => '0'
    );
\r_ball_rate_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(16),
      Q => \r_ball_rate_reg_n_0_[23]\,
      R => '0'
    );
\r_ball_rate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(2),
      Q => \r_ball_rate_reg_n_0_[2]\,
      R => '0'
    );
\r_ball_rate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(3),
      Q => \r_ball_rate_reg_n_0_[3]\,
      R => '0'
    );
\r_ball_rate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[4]_0\,
      Q => \r_ball_rate_reg_n_0_[4]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(4),
      Q => \r_ball_rate_reg_n_0_[5]\,
      R => '0'
    );
\r_ball_rate_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[6]_0\,
      Q => \r_ball_rate_reg_n_0_[6]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_rate_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(5),
      Q => \r_ball_rate_reg_n_0_[7]\,
      R => '0'
    );
\r_ball_rate_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[23]_0\(6),
      Q => \r_ball_rate_reg_n_0_[8]\,
      R => '0'
    );
\r_ball_rate_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_ball_rate[23]_i_1_n_0\,
      D => \r_ball_rate_reg[9]_0\,
      Q => \r_ball_rate_reg_n_0_[9]\,
      R => \r_ball_rate[19]_i_1_n_0\
    );
\r_ball_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA2"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_game_state\(0),
      I2 => \^r_game_state\(1),
      I3 => r_screen_render_state(1),
      I4 => r_screen_render_state(0),
      O => \r_Game_state_reg[0]_0\
    );
\r_ball_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => r_ball_pre_x(1),
      I2 => w_Ball_pos_x(2),
      I3 => r_ball_pre_x(2),
      I4 => r_ball_pre_x(0),
      I5 => \^q\(0),
      O => \r_ball_pos_x_reg[1]_1\
    );
\r_ball_state[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_ball_pos_y_reg[5]_0\(1),
      I1 => \r_ball_state[0]_i_2\,
      I2 => w_Ball_pos_y(2),
      I3 => \r_ball_state[0]_i_2_0\,
      I4 => \r_ball_state[0]_i_2_1\,
      I5 => \^r_ball_pos_y_reg[5]_0\(0),
      O => \r_ball_pos_y_reg[1]_1\
    );
\r_ball_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \r_ball_state_reg[1]_3\,
      I1 => w_TX_ready,
      I2 => \^r_game_state\(0),
      I3 => \^r_game_state\(1),
      O => r_send_pending_reg
    );
\r_game_value[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBAF0000"
    )
        port map (
      I0 => \FSM_sequential_r_Game_state[0]_i_2_n_0\,
      I1 => w_New_key,
      I2 => \FSM_sequential_r_Game_state_reg[0]_1\,
      I3 => \FSM_sequential_r_Game_state_reg[0]_2\,
      I4 => CPU_RESETN_IBUF,
      I5 => \FSM_sequential_r_Game_state_reg[0]_3\,
      O => o_Received_new_byte_reg
    );
\r_game_value[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAAAFFFF"
    )
        port map (
      I0 => \^r_game_state__0\(0),
      I1 => \FSM_sequential_r_Game_state_reg[0]_1\,
      I2 => w_New_key,
      I3 => \FSM_sequential_r_Game_state_reg[0]_2\,
      I4 => CPU_RESETN_IBUF,
      I5 => \FSM_sequential_r_Game_state_reg[0]_3\,
      O => r_game_value(0)
    );
\r_game_value[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444400040004000"
    )
        port map (
      I0 => \FSM_sequential_r_Game_state_reg[0]_2\,
      I1 => \FSM_sequential_r_Game_state_reg[0]_1\,
      I2 => \^w_p1_score\(0),
      I3 => \^w_p1_score\(1),
      I4 => \^w_p2_score\(0),
      I5 => \^w_p2_score\(1),
      O => \^r_game_state__0\(0)
    );
\r_message_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D0FFFFFFFF"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      I2 => \r_message_index_reg[1]\,
      I3 => r_screen_render_state(0),
      I4 => r_screen_render_state(1),
      I5 => CPU_RESETN_IBUF,
      O => E(0)
    );
\r_p1_paddle_pos[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I1 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(2),
      O => \r_p1_paddle_pos_reg[1]_1\
    );
\r_p1_paddle_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBABABBBBBAB"
    )
        port map (
      I0 => \r_p1_paddle_pos_reg[5]_0\,
      I1 => \r_p1_paddle_pos[4]_i_2_n_0\,
      I2 => \r_p1_paddle_pos_reg[4]_0\,
      I3 => w_P1_paddle(4),
      I4 => \^r_p1_paddle_pos_reg[1]_0\,
      I5 => \^r_p1_paddle_pos_reg[3]_0\(3),
      O => \r_p1_paddle_pos[4]_i_1_n_0\
    );
\r_p1_paddle_pos[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000002AAAAAAA"
    )
        port map (
      I0 => \r_p1_paddle_pos_reg[5]_1\,
      I1 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I5 => w_P1_paddle(4),
      O => \r_p1_paddle_pos[4]_i_2_n_0\
    );
\r_p1_paddle_pos[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I1 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(2),
      O => \^r_p1_paddle_pos_reg[1]_0\
    );
\r_p1_paddle_pos[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002F00F00002002"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I1 => w_Paddle_size(0),
      I2 => w_Paddle_size(2),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I4 => w_Paddle_size(1),
      I5 => \^r_p1_paddle_pos_reg[3]_0\(1),
      O => \r_p1_paddle_pos_reg[0]_1\
    );
\r_p1_paddle_pos[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => w_Paddle_size(2),
      I1 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I3 => w_P1_paddle(4),
      I4 => w_P1_paddle(5),
      O => \r_Paddle_size_reg[2]_0\
    );
\r_p1_paddle_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55575555FFFFFFFF"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      I5 => \r_p1_paddle_pos_reg[0]_2\,
      O => r_p1_paddle_pos(0)
    );
\r_p1_paddle_pos[5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => w_P1_paddle(4),
      I1 => w_P1_paddle(5),
      O => \r_p1_paddle_pos[5]_i_10_n_0\
    );
\r_p1_paddle_pos[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BC88"
    )
        port map (
      I0 => \r_p1_paddle_pos[5]_i_4_n_0\,
      I1 => w_P1_paddle(5),
      I2 => \r_p1_paddle_pos[5]_i_5_n_0\,
      I3 => \r_p1_paddle_pos_reg[5]_1\,
      I4 => \r_p1_paddle_pos_reg[5]_0\,
      O => \r_p1_paddle_pos[5]_i_2_n_0\
    );
\r_p1_paddle_pos[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \r_p1_paddle_pos_reg[4]_0\,
      I1 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I2 => w_P1_paddle(4),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I5 => \^r_p1_paddle_pos_reg[3]_0\(2),
      O => \r_p1_paddle_pos[5]_i_4_n_0\
    );
\r_p1_paddle_pos[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I1 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I2 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I4 => w_P1_paddle(4),
      O => \r_p1_paddle_pos[5]_i_5_n_0\
    );
\r_p1_paddle_pos[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEECC000"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I1 => \r_p1_paddle_pos[5]_i_6\,
      I2 => w_Paddle_size(2),
      I3 => w_Paddle_size(1),
      I4 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I5 => \r_p1_paddle_pos[5]_i_10_n_0\,
      O => \r_p1_paddle_pos_reg[2]_0\
    );
\r_p1_paddle_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p1_paddle_pos(0),
      D => \r_p1_paddle_pos_reg[3]_1\(0),
      Q => \^r_p1_paddle_pos_reg[3]_0\(0),
      R => '0'
    );
\r_p1_paddle_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p1_paddle_pos(0),
      D => \r_p1_paddle_pos_reg[3]_1\(1),
      Q => \^r_p1_paddle_pos_reg[3]_0\(1),
      R => '0'
    );
\r_p1_paddle_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p1_paddle_pos(0),
      D => \r_p1_paddle_pos_reg[3]_1\(2),
      Q => \^r_p1_paddle_pos_reg[3]_0\(2),
      R => '0'
    );
\r_p1_paddle_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p1_paddle_pos(0),
      D => \r_p1_paddle_pos_reg[3]_1\(3),
      Q => \^r_p1_paddle_pos_reg[3]_0\(3),
      R => '0'
    );
\r_p1_paddle_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p1_paddle_pos(0),
      D => \r_p1_paddle_pos[4]_i_1_n_0\,
      Q => w_P1_paddle(4),
      R => '0'
    );
\r_p1_paddle_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p1_paddle_pos(0),
      D => \r_p1_paddle_pos[5]_i_2_n_0\,
      Q => w_P1_paddle(5),
      R => '0'
    );
\r_p1_score[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA02200000F00"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_game_state_reg[0]_1\,
      I2 => r_point_p2_reg_n_0,
      I3 => r_play_state(1),
      I4 => r_play_state(0),
      I5 => \^w_p1_score\(0),
      O => \r_p1_score[0]_i_1_n_0\
    );
\r_p1_score[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFAFFFEFEFA00"
    )
        port map (
      I0 => \r_p2_score[1]_i_2_n_0\,
      I1 => \^w_p1_score\(0),
      I2 => \r_p1_score[1]_i_2_n_0\,
      I3 => \r_ball_rate[23]_i_1_n_0\,
      I4 => \r_p1_score[1]_i_3_n_0\,
      I5 => \^w_p1_score\(1),
      O => \r_p1_score[1]_i_1_n_0\
    );
\r_p1_score[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => r_play_state(1),
      I1 => r_play_state(0),
      I2 => r_point_p2_reg_n_0,
      I3 => CPU_RESETN_IBUF,
      O => \r_p1_score[1]_i_2_n_0\
    );
\r_p1_score[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_play_state(0),
      I1 => r_play_state(1),
      I2 => r_point_p2_reg_n_0,
      O => \r_p1_score[1]_i_3_n_0\
    );
\r_p1_score_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_p1_score[0]_i_1_n_0\,
      Q => \^w_p1_score\(0),
      R => '0'
    );
\r_p1_score_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_p1_score[1]_i_1_n_0\,
      Q => \^w_p1_score\(1),
      R => '0'
    );
\r_p2_paddle_pos[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(2),
      O => \r_p2_paddle_pos_reg[1]_1\
    );
\r_p2_paddle_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBABABBBBBAB"
    )
        port map (
      I0 => \r_p2_paddle_pos_reg[5]_1\,
      I1 => \r_p2_paddle_pos[4]_i_2_n_0\,
      I2 => \r_p2_paddle_pos_reg[4]_0\,
      I3 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I4 => \^r_p2_paddle_pos_reg[1]_0\,
      I5 => \^r_p2_paddle_pos_reg[5]_0\(3),
      O => \r_p2_paddle_pos[4]_i_1_n_0\
    );
\r_p2_paddle_pos[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000002AAAAAAA"
    )
        port map (
      I0 => \r_p2_paddle_pos_reg[5]_2\,
      I1 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I5 => \^r_p2_paddle_pos_reg[5]_0\(4),
      O => \r_p2_paddle_pos[4]_i_2_n_0\
    );
\r_p2_paddle_pos[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(2),
      O => \^r_p2_paddle_pos_reg[1]_0\
    );
\r_p2_paddle_pos[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002F00F00002002"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I1 => w_Paddle_size(0),
      I2 => w_Paddle_size(2),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I4 => w_Paddle_size(1),
      I5 => \^r_p2_paddle_pos_reg[5]_0\(1),
      O => \r_p2_paddle_pos_reg[0]_1\
    );
\r_p2_paddle_pos[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => w_Paddle_size(2),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(5),
      O => \r_Paddle_size_reg[2]\
    );
\r_p2_paddle_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55575555FFFFFFFF"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      I5 => \r_p2_paddle_pos_reg[0]_2\,
      O => r_p2_paddle_pos(0)
    );
\r_p2_paddle_pos[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(5),
      O => \r_p2_paddle_pos[5]_i_11_n_0\
    );
\r_p2_paddle_pos[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BC88"
    )
        port map (
      I0 => \r_p2_paddle_pos[5]_i_4_n_0\,
      I1 => \^r_p2_paddle_pos_reg[5]_0\(5),
      I2 => \r_p2_paddle_pos[5]_i_5_n_0\,
      I3 => \r_p2_paddle_pos_reg[5]_2\,
      I4 => \r_p2_paddle_pos_reg[5]_1\,
      O => \r_p2_paddle_pos[5]_i_2_n_0\
    );
\r_p2_paddle_pos[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \r_p2_paddle_pos_reg[4]_0\,
      I1 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I5 => \^r_p2_paddle_pos_reg[5]_0\(2),
      O => \r_p2_paddle_pos[5]_i_4_n_0\
    );
\r_p2_paddle_pos[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I1 => \^r_p2_paddle_pos_reg[5]_0\(1),
      I2 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(4),
      O => \r_p2_paddle_pos[5]_i_5_n_0\
    );
\r_p2_paddle_pos[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEECC000"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I1 => \r_p2_paddle_pos[5]_i_6\,
      I2 => w_Paddle_size(2),
      I3 => w_Paddle_size(1),
      I4 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I5 => \r_p2_paddle_pos[5]_i_11_n_0\,
      O => \r_p2_paddle_pos_reg[2]_0\
    );
\r_p2_paddle_pos[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
        port map (
      I0 => \r_p2_paddle_pos[5]_i_7\,
      I1 => \^r_game_state\(1),
      I2 => \^r_game_state\(0),
      I3 => r_play_state(0),
      I4 => r_play_state(1),
      O => \r_Game_state_reg[1]_3\
    );
\r_p2_paddle_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p2_paddle_pos(0),
      D => \r_p2_paddle_pos_reg[3]_1\(0),
      Q => \^r_p2_paddle_pos_reg[5]_0\(0),
      R => '0'
    );
\r_p2_paddle_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p2_paddle_pos(0),
      D => \r_p2_paddle_pos_reg[3]_1\(1),
      Q => \^r_p2_paddle_pos_reg[5]_0\(1),
      R => '0'
    );
\r_p2_paddle_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p2_paddle_pos(0),
      D => \r_p2_paddle_pos_reg[3]_1\(2),
      Q => \^r_p2_paddle_pos_reg[5]_0\(2),
      R => '0'
    );
\r_p2_paddle_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p2_paddle_pos(0),
      D => \r_p2_paddle_pos_reg[3]_1\(3),
      Q => \^r_p2_paddle_pos_reg[5]_0\(3),
      R => '0'
    );
\r_p2_paddle_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p2_paddle_pos(0),
      D => \r_p2_paddle_pos[4]_i_1_n_0\,
      Q => \^r_p2_paddle_pos_reg[5]_0\(4),
      R => '0'
    );
\r_p2_paddle_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_p2_paddle_pos(0),
      D => \r_p2_paddle_pos[5]_i_2_n_0\,
      Q => \^r_p2_paddle_pos_reg[5]_0\(5),
      R => '0'
    );
\r_p2_score[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA02AAA200F00000"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_game_state_reg[0]_1\,
      I2 => r_play_state(1),
      I3 => r_play_state(0),
      I4 => r_point_p2_reg_n_0,
      I5 => \^w_p2_score\(0),
      O => \r_p2_score[0]_i_1_n_0\
    );
\r_p2_score[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEEFFFEFEEE00"
    )
        port map (
      I0 => \r_p2_score[1]_i_2_n_0\,
      I1 => \r_p2_score[1]_i_3_n_0\,
      I2 => \^w_p2_score\(0),
      I3 => \r_ball_rate[23]_i_1_n_0\,
      I4 => \r_p2_score[1]_i_4_n_0\,
      I5 => \^w_p2_score\(1),
      O => \r_p2_score[1]_i_1_n_0\
    );
\r_p2_score[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A0A2A2"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(1),
      I2 => r_play_state(0),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      O => \r_p2_score[1]_i_2_n_0\
    );
\r_p2_score[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => r_point_p2_reg_n_0,
      I1 => r_play_state(1),
      I2 => r_play_state(0),
      I3 => CPU_RESETN_IBUF,
      O => \r_p2_score[1]_i_3_n_0\
    );
\r_p2_score[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => r_point_p2_reg_n_0,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      O => \r_p2_score[1]_i_4_n_0\
    );
\r_p2_score_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_p2_score[0]_i_1_n_0\,
      Q => \^w_p2_score\(0),
      R => '0'
    );
\r_p2_score_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_p2_score[1]_i_1_n_0\,
      Q => \^w_p2_score\(1),
      R => '0'
    );
\r_pad1_new_pos[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I3 => CPU_RESETN_IBUF,
      O => D(0)
    );
\r_pad1_new_pos[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => \^r_p1_paddle_pos_reg[3]_0\(1),
      I3 => CPU_RESETN_IBUF,
      O => D(1)
    );
\r_pad1_new_pos[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I3 => CPU_RESETN_IBUF,
      O => D(2)
    );
\r_pad1_new_pos[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I3 => CPU_RESETN_IBUF,
      O => D(3)
    );
\r_pad1_new_pos[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => w_P1_paddle(4),
      I3 => CPU_RESETN_IBUF,
      O => D(4)
    );
\r_pad1_new_pos[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => CPU_RESETN_IBUF,
      O => \r_pad1_state_reg[0]\(0)
    );
\r_pad1_new_pos[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[0]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => w_P1_paddle(5),
      I3 => CPU_RESETN_IBUF,
      O => D(5)
    );
\r_pad1_new_pos[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_pad1_new_pos[5]_i_5_n_0\,
      I1 => \r_pad1_new_pos[5]_i_6_n_0\,
      O => \^r_p1_paddle_pos_reg[0]_0\
    );
\r_pad1_new_pos[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(0),
      I1 => \r_pad1_new_pos[5]_i_3_0\(0),
      I2 => \r_pad1_new_pos[5]_i_3_0\(2),
      I3 => \^r_p1_paddle_pos_reg[3]_0\(2),
      I4 => \r_pad1_new_pos[5]_i_3_0\(1),
      I5 => \^r_p1_paddle_pos_reg[3]_0\(1),
      O => \r_pad1_new_pos[5]_i_5_n_0\
    );
\r_pad1_new_pos[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_p1_paddle_pos_reg[3]_0\(3),
      I1 => \r_pad1_new_pos[5]_i_3_0\(3),
      I2 => \r_pad1_new_pos[5]_i_3_0\(4),
      I3 => w_P1_paddle(4),
      I4 => \r_pad1_new_pos[5]_i_3_0\(5),
      I5 => w_P1_paddle(5),
      O => \r_pad1_new_pos[5]_i_6_n_0\
    );
\r_pad2_new_pos[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^r_pad2_state_reg[1]_0\,
      I1 => \r_pad2_new_pos_reg[0]\,
      I2 => CPU_RESETN_IBUF,
      O => \r_pad2_state_reg[1]\
    );
\r_pad2_new_pos[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF2"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[0]_0\,
      I1 => \^r_p2_paddle_pos_reg[3]_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_new_pos_reg[5]\,
      O => \^r_pad2_state_reg[1]_0\
    );
\r_pad2_new_pos[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[0]_0\,
      I1 => \^r_p2_paddle_pos_reg[3]_0\,
      I2 => \r_pad2_new_pos_reg[5]\,
      I3 => \r_pad2_new_pos_reg[5]_0\,
      I4 => CPU_RESETN_IBUF,
      O => \r_pad2_state_reg[0]\
    );
\r_pad2_step[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(0),
      I1 => \r_old2_pos__0\(0),
      I2 => \r_old2_pos__0\(2),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(2),
      I4 => \r_old2_pos__0\(1),
      I5 => \^r_p2_paddle_pos_reg[5]_0\(1),
      O => \^r_p2_paddle_pos_reg[0]_0\
    );
\r_pad2_step[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^r_p2_paddle_pos_reg[5]_0\(3),
      I1 => \r_old2_pos__0\(3),
      I2 => \r_old2_pos__0\(4),
      I3 => \^r_p2_paddle_pos_reg[5]_0\(4),
      I4 => \r_old2_pos__0\(5),
      I5 => \^r_p2_paddle_pos_reg[5]_0\(5),
      O => \^r_p2_paddle_pos_reg[3]_0\
    );
r_point_p2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC4444000C4444"
    )
        port map (
      I0 => r_point_p2_i_2_n_0,
      I1 => r_point_p2_i_3_n_0,
      I2 => r_point_p2_i_4_n_0,
      I3 => \FSM_sequential_r_play_state[1]_i_4_n_0\,
      I4 => CPU_RESETN_IBUF,
      I5 => r_point_p2_reg_n_0,
      O => r_point_p2_i_1_n_0
    );
r_point_p2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFBFFFFFFFF"
    )
        port map (
      I0 => \^r_game_state_reg[1]_2\,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => r_ball_dir_x23_in,
      I4 => r_ball_dir_x24_in,
      I5 => \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3\,
      O => r_point_p2_i_2_n_0
    );
r_point_p2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \r_ball_pos_x[0]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => r_point_p2_i_3_n_0
    );
r_point_p2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
        port map (
      I0 => \FSM_sequential_r_play_state[1]_i_3_n_0\,
      I1 => \^r_game_state\(1),
      I2 => \^r_game_state\(0),
      I3 => r_play_state(0),
      I4 => r_play_state(1),
      O => r_point_p2_i_4_n_0
    );
r_point_p2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_point_p2_i_1_n_0,
      Q => r_point_p2_reg_n_0,
      R => '0'
    );
\r_serve_pattern[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FD00000F000F00"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      I2 => r_play_state(0),
      I3 => r_play_state(1),
      I4 => CPU_RESETN_IBUF,
      I5 => \r_serve_pattern_reg_n_0_[0]\,
      O => \r_serve_pattern[0]_i_1_n_0\
    );
\r_serve_pattern[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F305000A000A00"
    )
        port map (
      I0 => \r_serve_pattern_reg_n_0_[0]\,
      I1 => \^r_game_state_reg[0]_1\,
      I2 => r_play_state(0),
      I3 => r_play_state(1),
      I4 => CPU_RESETN_IBUF,
      I5 => \r_serve_pattern_reg_n_0_[1]\,
      O => \r_serve_pattern[1]_i_1_n_0\
    );
\r_serve_pattern[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      O => \^r_game_state_reg[0]_1\
    );
\r_serve_pattern_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_serve_pattern[0]_i_1_n_0\,
      Q => \r_serve_pattern_reg_n_0_[0]\,
      R => '0'
    );
\r_serve_pattern_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_serve_pattern[1]_i_1_n_0\,
      Q => \r_serve_pattern_reg_n_0_[1]\,
      R => '0'
    );
r_winner_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F7F007F7F"
    )
        port map (
      I0 => r_winner_reg,
      I1 => \^w_p1_score\(1),
      I2 => \^w_p1_score\(0),
      I3 => \^r_game_state__0\(0),
      I4 => CPU_RESETN_IBUF,
      I5 => r_winner_reg_0,
      O => \r_p1_score_reg[1]_1\
    );
\r_y_step_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE20000EEE2EEE2"
    )
        port map (
      I0 => \r_y_step_count_reg_n_0_[0]\,
      I1 => r_y_step_count(0),
      I2 => \r_y_step_count[0]_i_3_n_0\,
      I3 => \r_y_step_count[0]_i_4_n_0\,
      I4 => r_play_state(0),
      I5 => r_play_state(1),
      O => \r_y_step_count[0]_i_1_n_0\
    );
\r_y_step_count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D00044FFFFFFFF"
    )
        port map (
      I0 => \^r_game_state\(1),
      I1 => \^r_game_state\(0),
      I2 => \r_ball_count1_carry__1_n_0\,
      I3 => r_play_state(1),
      I4 => r_play_state(0),
      I5 => CPU_RESETN_IBUF,
      O => r_y_step_count(0)
    );
\r_y_step_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FF000001000000"
    )
        port map (
      I0 => \r_y_step_count_reg_n_0_[0]\,
      I1 => \r_y_step_count_reg_n_0_[2]\,
      I2 => \^r_game_state_reg[1]_2\,
      I3 => \r_ball_count1_carry__1_n_0\,
      I4 => r_ball_dir_x_i_3_n_0,
      I5 => CPU_RESETN_IBUF,
      O => \r_y_step_count[0]_i_3_n_0\
    );
\r_y_step_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A0A2A2"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_play_state(0),
      I2 => r_play_state(1),
      I3 => \^r_game_state\(1),
      I4 => \^r_game_state\(0),
      O => \r_y_step_count[0]_i_4_n_0\
    );
\r_y_step_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000008080088"
    )
        port map (
      I0 => \r_y_step_count_reg_n_0_[2]\,
      I1 => CPU_RESETN_IBUF,
      I2 => \r_y_step_count[2]_i_2_n_0\,
      I3 => \^r_game_state_reg[0]_1\,
      I4 => r_play_state(0),
      I5 => r_play_state(1),
      O => \r_y_step_count[2]_i_1_n_0\
    );
\r_y_step_count[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \r_ball_count1_carry__1_n_0\,
      I1 => \^r_game_state\(0),
      I2 => \^r_game_state\(1),
      O => \r_y_step_count[2]_i_2_n_0\
    );
\r_y_step_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_y_step_count[0]_i_1_n_0\,
      Q => \r_y_step_count_reg_n_0_[0]\,
      R => '0'
    );
\r_y_step_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_y_step_count[2]_i_1_n_0\,
      Q => \r_y_step_count_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity message_prep is
  port (
    w_TX_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_wait_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_send_pending_reg_0 : out STD_LOGIC;
    \r_pad2_state_reg[1]_0\ : out STD_LOGIC;
    \r_ball_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_screen_render_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_ball_pre_x_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_ball_state_reg[1]_1\ : out STD_LOGIC;
    r_send_pending_reg_1 : out STD_LOGIC;
    r_send_pending_reg_2 : out STD_LOGIC;
    \r_pad2_state_reg[1]_1\ : out STD_LOGIC;
    \r_pad2_state_reg[0]_0\ : out STD_LOGIC;
    \r_ball_state_reg[0]_0\ : out STD_LOGIC;
    \r_pad1_new_pos_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_Game_state_reg[1]\ : out STD_LOGIC;
    \r_pad1_state_reg[0]_0\ : out STD_LOGIC;
    \r_ball_state_reg[0]_1\ : out STD_LOGIC;
    \r_pad1_state_reg[1]_0\ : out STD_LOGIC;
    \r_pad2_state_reg[1]_2\ : out STD_LOGIC;
    \r_ball_pre_y_reg[0]_0\ : out STD_LOGIC;
    \r_old2_pos__0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_ball_pre_y_reg[1]_0\ : out STD_LOGIC;
    \r_ball_pre_y_reg[2]_0\ : out STD_LOGIC;
    \r_old1_pos_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \o_uart_buffer_reg[78]_0\ : out STD_LOGIC_VECTOR ( 69 downto 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    \r_wait_state_reg[0]_0\ : in STD_LOGIC;
    r_send_pending_reg_3 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CPU_RESETN_IBUF : in STD_LOGIC;
    \o_uart_buffer_reg[17]_0\ : in STD_LOGIC;
    w_TX_ready : in STD_LOGIC;
    \o_uart_buffer_reg[54]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[27]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[32]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[26]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[25]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[27]_1\ : in STD_LOGIC;
    \o_uart_buffer_reg[19]_0\ : in STD_LOGIC;
    r_Game_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_ball_pre_x_reg[0]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[16]_0\ : in STD_LOGIC;
    \r_ball_state_reg[1]_2\ : in STD_LOGIC;
    r_send_pending_reg_4 : in STD_LOGIC;
    \o_uart_buffer_reg[51]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[50]_0\ : in STD_LOGIC;
    \r_ball_state_reg[0]_2\ : in STD_LOGIC;
    \r_pad1_step_reg[0]_0\ : in STD_LOGIC;
    \r_ball_state[0]_i_2_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_Pad_chars_reg[3]_0\ : in STD_LOGIC;
    \r_pad2_new_pos_reg[5]_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_uart_buffer_reg[49]_0\ : in STD_LOGIC;
    \o_uart_buffer[57]_i_2_0\ : in STD_LOGIC;
    \o_uart_buffer[58]_i_2_0\ : in STD_LOGIC;
    \r_ball_state_reg[0]_3\ : in STD_LOGIC;
    \r_ball_state_reg[0]_4\ : in STD_LOGIC;
    w_Paddle_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_uart_buffer[49]_i_13_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[18]_0\ : in STD_LOGIC;
    \o_uart_buffer_reg[4]_0\ : in STD_LOGIC;
    \r_pad2_state_reg[0]_1\ : in STD_LOGIC;
    \r_pad2_new_pos_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_pad2_step_reg[0]_0\ : in STD_LOGIC;
    \r_pad2_step_reg[0]_1\ : in STD_LOGIC;
    \r_ball_pre_y_reg[5]_0\ : in STD_LOGIC;
    \r_ball_pre_y_reg[4]_0\ : in STD_LOGIC;
    \r_ball_pre_y_reg[3]_0\ : in STD_LOGIC;
    \r_ball_pre_y_reg[2]_1\ : in STD_LOGIC;
    \r_ball_pre_y_reg[1]_1\ : in STD_LOGIC;
    \r_ball_pre_y_reg[0]_1\ : in STD_LOGIC;
    \r_ball_pre_x_reg[7]_0\ : in STD_LOGIC;
    \r_ball_pre_x_reg[6]_0\ : in STD_LOGIC;
    \r_ball_pre_x_reg[5]_0\ : in STD_LOGIC;
    \r_ball_pre_x_reg[4]_0\ : in STD_LOGIC;
    \r_ball_pre_x_reg[3]_0\ : in STD_LOGIC;
    \r_ball_pre_x_reg[2]_1\ : in STD_LOGIC;
    \r_ball_pre_x_reg[1]_0\ : in STD_LOGIC;
    \r_ball_pre_x_reg[0]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_pad2_new_pos_reg[0]_0\ : in STD_LOGIC;
    \r_message_index_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end message_prep;

architecture STRUCTURE of message_prep is
  signal \o_uart_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[11]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[12]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[13]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[14]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[16]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[16]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[16]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[16]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[16]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[17]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[18]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[18]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[18]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[19]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[20]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[20]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[21]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[21]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[22]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[22]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[24]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[24]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[24]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[24]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[24]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[24]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[25]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[25]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[25]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[25]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[25]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[26]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[26]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[26]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[26]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[27]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[28]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[28]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[29]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[29]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[30]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[30]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[32]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[32]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_20_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_21_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_22_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_23_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_24_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_25_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[33]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[34]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[34]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[35]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[35]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[36]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[36]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[36]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[37]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[37]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[38]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[38]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[38]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[40]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[40]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[41]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[41]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[42]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[42]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[43]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[43]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[43]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[44]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[44]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[45]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[45]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[46]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[46]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[46]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[46]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[48]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_15_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_16_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_19_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_20_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_21_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_22_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[49]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[4]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_14_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_15_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_16_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[50]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_14_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_16_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_19_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_20_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_21_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_22_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_23_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_24_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_25_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_26_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_27_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_28_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_29_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[51]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[52]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[52]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[52]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[52]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[53]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[53]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[53]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[54]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[54]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_14_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_15_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_16_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_19_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_20_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[56]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_14_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_15_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_16_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_19_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_20_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_21_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_22_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_24_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_25_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_26_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_27_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_28_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_29_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_30_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_31_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_32_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_33_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_34_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_35_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_36_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[57]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_10_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_12_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_13_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_14_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_15_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_17_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_18_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_19_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_20_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_21_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_22_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_23_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_24_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_25_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_26_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_27_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_28_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[58]_i_9_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[59]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[59]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[5]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[5]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[5]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[60]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[60]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[61]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[61]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[62]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[62]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[64]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[64]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[65]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[65]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[66]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[66]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[66]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[67]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[67]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[68]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[68]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[69]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[6]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[70]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[70]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[72]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[72]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[73]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[73]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[73]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[74]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[74]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[74]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[74]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[75]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[75]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[75]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[76]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[76]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[77]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[78]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[78]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[78]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_buffer[9]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_buffer_reg[33]_i_11_n_0\ : STD_LOGIC;
  signal \o_uart_buffer_reg[33]_i_7_n_3\ : STD_LOGIC;
  signal \o_uart_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_6_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_7_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_8_n_0\ : STD_LOGIC;
  signal \o_uart_count[3]_i_9_n_0\ : STD_LOGIC;
  signal \^r_game_state_reg[1]\ : STD_LOGIC;
  signal \r_Pad_chars[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Pad_chars[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Pad_chars[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Pad_chars_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Pad_chars_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Pad_chars_reg_n_0_[3]\ : STD_LOGIC;
  signal r_ball_pre_x : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \^r_ball_pre_x_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_ball_pre_y : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_ball_pre_y[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_pre_y[5]_i_5_n_0\ : STD_LOGIC;
  signal \^r_ball_pre_y_reg[0]_0\ : STD_LOGIC;
  signal \^r_ball_pre_y_reg[1]_0\ : STD_LOGIC;
  signal \^r_ball_pre_y_reg[2]_0\ : STD_LOGIC;
  signal \r_ball_pre_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_ball_pre_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_ball_pre_y_reg_n_0_[5]\ : STD_LOGIC;
  signal r_ball_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_ball_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_ball_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_ball_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_ball_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \r_ball_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \r_ball_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_ball_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^r_ball_state_reg[0]_0\ : STD_LOGIC;
  signal \^r_ball_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_message_index : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_message_index[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_message_index[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_message_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_message_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_message_index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_message_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_message_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_message_index[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_old1_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_old1_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_old1_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_old1_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_old1_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_old1_pos[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_old1_pos[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_old1_pos[5]_i_3_n_0\ : STD_LOGIC;
  signal \^r_old1_pos_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r_old2_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_old2_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_old2_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_old2_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_old2_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_old2_pos[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_old2_pos[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_old2_pos[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_old2_pos[5]_i_4_n_0\ : STD_LOGIC;
  signal \^r_old2_pos__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r_over_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_over_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_over_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_over_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_over_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^r_pad1_new_pos_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_pad1_new_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_pad1_new_pos_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_pad1_new_pos_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_pad1_new_pos_reg_n_0_[5]\ : STD_LOGIC;
  signal r_pad1_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_pad1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad1_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_pad1_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_pad1_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_pad1_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \^r_pad1_state_reg[0]_0\ : STD_LOGIC;
  signal \r_pad1_step[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad1_step[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad1_step[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_10_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_6_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_7_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_8_n_0\ : STD_LOGIC;
  signal \r_pad1_step[3]_i_9_n_0\ : STD_LOGIC;
  signal \r_pad1_step__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_pad2_new_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[5]_i_5_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[5]_i_6_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos[5]_i_8_n_0\ : STD_LOGIC;
  signal \r_pad2_new_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_pad2_new_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_pad2_new_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_pad2_new_pos_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_pad2_new_pos_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_pad2_new_pos_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_pad2_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_pad2_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_pad2_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_pad2_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \r_pad2_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \^r_pad2_state_reg[0]_0\ : STD_LOGIC;
  signal \^r_pad2_state_reg[1]_0\ : STD_LOGIC;
  signal \^r_pad2_state_reg[1]_1\ : STD_LOGIC;
  signal \^r_pad2_state_reg[1]_2\ : STD_LOGIC;
  signal \r_pad2_step[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_step[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_step[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_step[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_pad2_step[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_pad2_step[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_pad2_step[3]_i_5_n_0\ : STD_LOGIC;
  signal \r_pad2_step__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_screen_render_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_screen_render_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_screen_render_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_screen_render_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_screen_render_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_screen_render_state[1]_i_4_n_0\ : STD_LOGIC;
  signal r_send_pending_i_6_n_0 : STD_LOGIC;
  signal r_send_pending_i_7_n_0 : STD_LOGIC;
  signal \^r_send_pending_reg_0\ : STD_LOGIC;
  signal \^r_wait_state\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_o_uart_buffer_reg[33]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_o_uart_buffer_reg[33]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_uart_buffer_reg[33]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_uart_buffer_reg[33]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_uart_buffer[12]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \o_uart_buffer[19]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \o_uart_buffer[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \o_uart_buffer[22]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \o_uart_buffer[28]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \o_uart_buffer[29]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \o_uart_buffer[30]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \o_uart_buffer[34]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \o_uart_buffer[35]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \o_uart_buffer[37]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \o_uart_buffer[3]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \o_uart_buffer[41]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \o_uart_buffer[42]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \o_uart_buffer[43]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \o_uart_buffer[53]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \o_uart_buffer[59]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \o_uart_buffer[66]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \o_uart_buffer[6]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \o_uart_buffer[72]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \o_uart_buffer[73]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \o_uart_buffer[74]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \o_uart_buffer[9]_i_1\ : label is "soft_lutpair98";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_uart_buffer_reg[33]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \o_uart_buffer_reg[33]_i_7\ : label is 35;
  attribute SOFT_HLUTNM of \r_old1_pos[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \r_old1_pos[2]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \r_old1_pos[3]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \r_old1_pos[4]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \r_pad1_step[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \r_pad1_step[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \r_pad2_step[0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \r_pad2_step[1]_i_1\ : label is "soft_lutpair103";
begin
  \r_Game_state_reg[1]\ <= \^r_game_state_reg[1]\;
  \r_ball_pre_x_reg[2]_0\(2 downto 0) <= \^r_ball_pre_x_reg[2]_0\(2 downto 0);
  \r_ball_pre_y_reg[0]_0\ <= \^r_ball_pre_y_reg[0]_0\;
  \r_ball_pre_y_reg[1]_0\ <= \^r_ball_pre_y_reg[1]_0\;
  \r_ball_pre_y_reg[2]_0\ <= \^r_ball_pre_y_reg[2]_0\;
  \r_ball_state_reg[0]_0\ <= \^r_ball_state_reg[0]_0\;
  \r_ball_state_reg[1]_0\(0) <= \^r_ball_state_reg[1]_0\(0);
  \r_old1_pos_reg[5]_0\(5 downto 0) <= \^r_old1_pos_reg[5]_0\(5 downto 0);
  \r_old2_pos__0\(5 downto 0) <= \^r_old2_pos__0\(5 downto 0);
  \r_pad1_new_pos_reg[1]_0\(1 downto 0) <= \^r_pad1_new_pos_reg[1]_0\(1 downto 0);
  \r_pad1_state_reg[0]_0\ <= \^r_pad1_state_reg[0]_0\;
  \r_pad2_state_reg[0]_0\ <= \^r_pad2_state_reg[0]_0\;
  \r_pad2_state_reg[1]_0\ <= \^r_pad2_state_reg[1]_0\;
  \r_pad2_state_reg[1]_1\ <= \^r_pad2_state_reg[1]_1\;
  \r_pad2_state_reg[1]_2\ <= \^r_pad2_state_reg[1]_2\;
  r_screen_render_state(1 downto 0) <= \^r_screen_render_state\(1 downto 0);
  r_send_pending_reg_0 <= \^r_send_pending_reg_0\;
  r_wait_state(0) <= \^r_wait_state\(0);
\o_uart_buffer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \o_uart_buffer[1]_i_2_n_0\,
      I1 => \o_uart_buffer[0]_i_2_n_0\,
      I2 => \^r_screen_render_state\(1),
      I3 => \^r_screen_render_state\(0),
      I4 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[0]_i_1_n_0\
    );
\o_uart_buffer[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555F5E0"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(0),
      I2 => r_message_index(2),
      I3 => r_message_index(1),
      I4 => r_message_index(3),
      O => \o_uart_buffer[0]_i_2_n_0\
    );
\o_uart_buffer[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F0FE52A"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[10]_i_1_n_0\
    );
\o_uart_buffer[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \o_uart_count[3]_i_7_n_0\,
      I1 => \r_message_index[2]_i_2_n_0\,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => \o_uart_buffer[11]_i_2_n_0\,
      O => \o_uart_buffer[11]_i_1_n_0\
    );
\o_uart_buffer[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"435B4C2E"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(3),
      I3 => r_message_index(0),
      I4 => r_message_index(1),
      O => \o_uart_buffer[11]_i_2_n_0\
    );
\o_uart_buffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_buffer[12]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[12]_i_1_n_0\
    );
\o_uart_buffer[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ECDAB7FE"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[12]_i_2_n_0\
    );
\o_uart_buffer[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAEAEA"
    )
        port map (
      I0 => \o_uart_count[3]_i_6_n_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(1),
      I3 => \o_uart_buffer[13]_i_2_n_0\,
      I4 => \r_message_index[2]_i_2_n_0\,
      I5 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[13]_i_1_n_0\
    );
\o_uart_buffer[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E4C7A7B"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(3),
      I3 => r_message_index(0),
      I4 => r_message_index(1),
      O => \o_uart_buffer[13]_i_2_n_0\
    );
\o_uart_buffer[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \o_uart_count[3]_i_7_n_0\,
      I1 => \r_message_index[2]_i_2_n_0\,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => \o_uart_buffer[14]_i_2_n_0\,
      O => \o_uart_buffer[14]_i_1_n_0\
    );
\o_uart_buffer[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09130624"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(3),
      I3 => r_message_index(0),
      I4 => r_message_index(1),
      O => \o_uart_buffer[14]_i_2_n_0\
    );
\o_uart_buffer[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAEAA"
    )
        port map (
      I0 => \o_uart_buffer[16]_i_2_n_0\,
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => \r_pad2_new_pos[5]_i_5_n_0\,
      I3 => Q(0),
      I4 => \o_uart_buffer[16]_i_3_n_0\,
      I5 => \o_uart_buffer[16]_i_4_n_0\,
      O => \o_uart_buffer[16]_i_1_n_0\
    );
\o_uart_buffer[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010001010F0F0F0F"
    )
        port map (
      I0 => \o_uart_buffer[5]_i_3_n_0\,
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => \r_pad2_new_pos[5]_i_5_n_0\,
      I3 => \^r_ball_pre_x_reg[2]_0\(0),
      I4 => r_ball_state(0),
      I5 => \^r_pad2_state_reg[1]_0\,
      O => \o_uart_buffer[16]_i_2_n_0\
    );
\o_uart_buffer[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000AAAA8088AAAA"
    )
        port map (
      I0 => \o_uart_buffer[17]_i_10_n_0\,
      I1 => \r_over_state_reg_n_0_[0]\,
      I2 => CPU_RESETN_IBUF,
      I3 => \r_over_state_reg_n_0_[1]\,
      I4 => \o_uart_buffer_reg[54]_0\,
      I5 => \o_uart_buffer_reg[16]_0\,
      O => \o_uart_buffer[16]_i_3_n_0\
    );
\o_uart_buffer[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAEAAAC000"
    )
        port map (
      I0 => \o_uart_count[3]_i_3_n_0\,
      I1 => \^r_screen_render_state\(0),
      I2 => CPU_RESETN_IBUF,
      I3 => \^r_screen_render_state\(1),
      I4 => \r_message_index[2]_i_2_n_0\,
      I5 => \o_uart_buffer[16]_i_5_n_0\,
      O => \o_uart_buffer[16]_i_4_n_0\
    );
\o_uart_buffer[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45485289"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(0),
      I3 => r_message_index(3),
      I4 => r_message_index(1),
      O => \o_uart_buffer[16]_i_5_n_0\
    );
\o_uart_buffer[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF007D0055"
    )
        port map (
      I0 => \o_uart_buffer[17]_i_2_n_0\,
      I1 => \o_uart_buffer_reg[17]_0\,
      I2 => Q(1),
      I3 => \r_pad2_new_pos[5]_i_5_n_0\,
      I4 => \^r_ball_state_reg[1]_0\(0),
      I5 => \o_uart_buffer[17]_i_4_n_0\,
      O => \o_uart_buffer[17]_i_1_n_0\
    );
\o_uart_buffer[17]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44440040"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      I2 => w_TX_ready,
      I3 => \^r_send_pending_reg_0\,
      I4 => CPU_RESETN_IBUF,
      O => \o_uart_buffer[17]_i_10_n_0\
    );
\o_uart_buffer[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA28AAAA"
    )
        port map (
      I0 => \o_uart_buffer[33]_i_2_n_0\,
      I1 => \o_uart_buffer[24]_i_2_n_0\,
      I2 => \^r_ball_pre_x_reg[2]_0\(1),
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => r_ball_state(0),
      O => \o_uart_buffer[17]_i_2_n_0\
    );
\o_uart_buffer[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF0FFFFFEF0FEF0"
    )
        port map (
      I0 => \o_uart_buffer[17]_i_7_n_0\,
      I1 => \r_message_index[2]_i_2_n_0\,
      I2 => \o_uart_buffer[17]_i_8_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      I4 => \o_uart_buffer[17]_i_9_n_0\,
      I5 => \o_uart_buffer[17]_i_10_n_0\,
      O => \o_uart_buffer[17]_i_4_n_0\
    );
\o_uart_buffer[17]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01C01001"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(0),
      I3 => r_message_index(3),
      I4 => r_message_index(1),
      O => \o_uart_buffer[17]_i_7_n_0\
    );
\o_uart_buffer[17]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(0),
      O => \o_uart_buffer[17]_i_8_n_0\
    );
\o_uart_buffer[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010301030303030"
    )
        port map (
      I0 => \o_uart_buffer_reg[16]_0\,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \r_over_state_reg_n_0_[1]\,
      I4 => CPU_RESETN_IBUF,
      I5 => \r_over_state_reg_n_0_[0]\,
      O => \o_uart_buffer[17]_i_9_n_0\
    );
\o_uart_buffer[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF007F"
    )
        port map (
      I0 => \o_uart_buffer_reg[18]_0\,
      I1 => \o_uart_buffer[18]_i_3_n_0\,
      I2 => \o_uart_buffer[33]_i_2_n_0\,
      I3 => \r_pad2_new_pos[5]_i_5_n_0\,
      I4 => \o_uart_buffer[18]_i_4_n_0\,
      O => \o_uart_buffer[18]_i_1_n_0\
    );
\o_uart_buffer[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDFFDDFFDDFDFFD"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => \^r_ball_pre_x_reg[2]_0\(2),
      I3 => \o_uart_buffer[25]_i_5_n_0\,
      I4 => \^r_ball_pre_x_reg[2]_0\(1),
      I5 => \o_uart_buffer[24]_i_2_n_0\,
      O => \o_uart_buffer[18]_i_3_n_0\
    );
\o_uart_buffer[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001304E848"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[18]_i_4_n_0\
    );
\o_uart_buffer[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[19]_i_2_n_0\,
      I1 => \o_uart_buffer[53]_i_3_n_0\,
      I2 => \o_uart_buffer[19]_i_3_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[19]_i_1_n_0\
    );
\o_uart_buffer[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => \o_uart_buffer[19]_i_4_n_0\,
      I1 => \o_uart_buffer_reg[19]_0\,
      I2 => \^r_pad2_state_reg[1]_0\,
      I3 => \^r_screen_render_state\(0),
      I4 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[19]_i_2_n_0\
    );
\o_uart_buffer[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ECFF17B6"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[19]_i_3_n_0\
    );
\o_uart_buffer[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"541701C000000000"
    )
        port map (
      I0 => \o_uart_buffer[24]_i_2_n_0\,
      I1 => \o_uart_buffer[25]_i_5_n_0\,
      I2 => \^r_ball_pre_x_reg[2]_0\(2),
      I3 => \^r_ball_pre_x_reg[2]_0\(1),
      I4 => \o_uart_buffer[19]_i_6_n_0\,
      I5 => \o_uart_buffer[19]_i_7_n_0\,
      O => \o_uart_buffer[19]_i_4_n_0\
    );
\o_uart_buffer[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D3CB6D392C3492C"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(7),
      I2 => r_ball_pre_x(5),
      I3 => r_ball_pre_x(6),
      I4 => r_ball_pre_x(3),
      I5 => \^r_ball_pre_x_reg[2]_0\(2),
      O => \o_uart_buffer[19]_i_6_n_0\
    );
\o_uart_buffer[19]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      O => \o_uart_buffer[19]_i_7_n_0\
    );
\o_uart_buffer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \o_uart_buffer[1]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_3_n_0\,
      I2 => \o_uart_buffer[1]_i_3_n_0\,
      I3 => \o_uart_buffer[53]_i_3_n_0\,
      O => \o_uart_buffer[1]_i_1_n_0\
    );
\o_uart_buffer[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00008880"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \^r_pad2_state_reg[1]_0\,
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => \o_uart_count[3]_i_8_n_0\,
      I4 => r_ball_state(0),
      I5 => \o_uart_buffer_reg[27]_0\,
      O => \o_uart_buffer[1]_i_2_n_0\
    );
\o_uart_buffer[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFEF2918"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[1]_i_3_n_0\
    );
\o_uart_buffer[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[66]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[20]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[20]_i_1_n_0\
    );
\o_uart_buffer[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCFF37FE"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[20]_i_2_n_0\
    );
\o_uart_buffer[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFCC04"
    )
        port map (
      I0 => \o_uart_buffer_reg[54]_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => \o_uart_count[3]_i_6_n_0\,
      I5 => \o_uart_buffer[21]_i_2_n_0\,
      O => \o_uart_buffer[21]_i_1_n_0\
    );
\o_uart_buffer[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003377DFA6"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[21]_i_2_n_0\
    );
\o_uart_buffer[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_buffer[22]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[22]_i_1_n_0\
    );
\o_uart_buffer[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFBDFB6"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[22]_i_2_n_0\
    );
\o_uart_buffer[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00005575"
    )
        port map (
      I0 => \o_uart_buffer[33]_i_2_n_0\,
      I1 => \o_uart_buffer[24]_i_2_n_0\,
      I2 => r_ball_state(0),
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \r_pad2_new_pos[5]_i_5_n_0\,
      I5 => \o_uart_buffer[24]_i_3_n_0\,
      O => \o_uart_buffer[24]_i_1_n_0\
    );
\o_uart_buffer[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42145614D795D7BD"
    )
        port map (
      I0 => \o_uart_buffer[24]_i_4_n_0\,
      I1 => \o_uart_buffer[24]_i_5_n_0\,
      I2 => r_ball_pre_x(3),
      I3 => \^r_ball_pre_x_reg[2]_0\(2),
      I4 => \^r_ball_pre_x_reg[2]_0\(1),
      I5 => \o_uart_buffer[25]_i_5_n_0\,
      O => \o_uart_buffer[24]_i_2_n_0\
    );
\o_uart_buffer[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FFF2F2F2F2F2"
    )
        port map (
      I0 => \o_uart_count[3]_i_3_n_0\,
      I1 => \o_uart_buffer[24]_i_6_n_0\,
      I2 => \o_uart_buffer[53]_i_3_n_0\,
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \r_pad2_new_pos[5]_i_5_n_0\,
      I5 => \o_uart_buffer_reg[17]_0\,
      O => \o_uart_buffer[24]_i_3_n_0\
    );
\o_uart_buffer[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D96D2692"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(6),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(5),
      I4 => r_ball_pre_x(3),
      O => \o_uart_buffer[24]_i_4_n_0\
    );
\o_uart_buffer[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C34B692"
    )
        port map (
      I0 => r_ball_pre_x(6),
      I1 => r_ball_pre_x(5),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(3),
      I4 => r_ball_pre_x(4),
      O => \o_uart_buffer[24]_i_5_n_0\
    );
\o_uart_buffer[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE840E9E"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(2),
      I3 => r_message_index(3),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[24]_i_6_n_0\
    );
\o_uart_buffer[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF11F1"
    )
        port map (
      I0 => \o_uart_buffer[25]_i_2_n_0\,
      I1 => \r_pad2_new_pos[5]_i_5_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      I3 => \o_uart_buffer[25]_i_3_n_0\,
      I4 => \o_uart_buffer[74]_i_4_n_0\,
      O => \o_uart_buffer[25]_i_1_n_0\
    );
\o_uart_buffer[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CC880C880C88CC"
    )
        port map (
      I0 => \o_uart_buffer_reg[25]_0\,
      I1 => \o_uart_buffer[33]_i_2_n_0\,
      I2 => r_ball_state(0),
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \o_uart_buffer[25]_i_5_n_0\,
      I5 => \o_uart_buffer[25]_i_6_n_0\,
      O => \o_uart_buffer[25]_i_2_n_0\
    );
\o_uart_buffer[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEF2EE9E"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(2),
      I3 => r_message_index(3),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[25]_i_3_n_0\
    );
\o_uart_buffer[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59AE759A518A6518"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(7),
      I2 => r_ball_pre_x(5),
      I3 => r_ball_pre_x(6),
      I4 => r_ball_pre_x(3),
      I5 => \^r_ball_pre_x_reg[2]_0\(2),
      O => \o_uart_buffer[25]_i_5_n_0\
    );
\o_uart_buffer[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C303C703C303870"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(6),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(5),
      I4 => r_ball_pre_x(3),
      I5 => \^r_ball_pre_x_reg[2]_0\(2),
      O => \o_uart_buffer[25]_i_6_n_0\
    );
\o_uart_buffer[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF400"
    )
        port map (
      I0 => \r_ball_state_reg[1]_2\,
      I1 => CPU_RESETN_IBUF,
      I2 => \o_uart_buffer[26]_i_2_n_0\,
      I3 => \r_ball_state[0]_i_3_n_0\,
      I4 => \o_uart_buffer[26]_i_3_n_0\,
      O => \o_uart_buffer[26]_i_1_n_0\
    );
\o_uart_buffer[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808C8C8C808C80"
    )
        port map (
      I0 => \o_uart_buffer_reg[26]_0\,
      I1 => \^r_pad2_state_reg[1]_0\,
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => \o_uart_count[3]_i_8_n_0\,
      I4 => \o_uart_buffer[26]_i_5_n_0\,
      I5 => r_ball_state(0),
      O => \o_uart_buffer[26]_i_2_n_0\
    );
\o_uart_buffer[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000003BAA20"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(3),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[26]_i_3_n_0\
    );
\o_uart_buffer[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCB6DDB6CDB4DDB"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(6),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(5),
      I4 => r_ball_pre_x(3),
      I5 => \^r_ball_pre_x_reg[2]_0\(2),
      O => \o_uart_buffer[26]_i_5_n_0\
    );
\o_uart_buffer[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0E0FFE0"
    )
        port map (
      I0 => \o_uart_buffer_reg[27]_0\,
      I1 => \o_uart_buffer[27]_i_3_n_0\,
      I2 => \r_ball_state[0]_i_3_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      I4 => \o_uart_buffer[27]_i_4_n_0\,
      I5 => \o_uart_buffer[73]_i_2_n_0\,
      O => \o_uart_buffer[27]_i_1_n_0\
    );
\o_uart_buffer[27]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38FFF3FF"
    )
        port map (
      I0 => r_ball_pre_x(3),
      I1 => r_ball_pre_x(5),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(6),
      I4 => r_ball_pre_x(4),
      O => \o_uart_buffer[27]_i_10_n_0\
    );
\o_uart_buffer[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8C8C8C80808C80"
    )
        port map (
      I0 => \o_uart_buffer_reg[27]_1\,
      I1 => \^r_pad2_state_reg[1]_0\,
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => \o_uart_count[3]_i_8_n_0\,
      I4 => r_ball_state(0),
      I5 => \o_uart_buffer[27]_i_6_n_0\,
      O => \o_uart_buffer[27]_i_3_n_0\
    );
\o_uart_buffer[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE810E9E"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(2),
      I3 => r_message_index(3),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[27]_i_4_n_0\
    );
\o_uart_buffer[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2000000AA00000A"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \o_uart_buffer[27]_i_7_n_0\,
      I2 => \o_uart_buffer[27]_i_8_n_0\,
      I3 => \o_uart_buffer[27]_i_9_n_0\,
      I4 => \o_uart_buffer[25]_i_5_n_0\,
      I5 => \o_uart_buffer[27]_i_10_n_0\,
      O => \o_uart_buffer[27]_i_6_n_0\
    );
\o_uart_buffer[27]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"73C7"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(6),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(5),
      O => \o_uart_buffer[27]_i_7_n_0\
    );
\o_uart_buffer[27]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F10F"
    )
        port map (
      I0 => r_ball_pre_x(4),
      I1 => r_ball_pre_x(3),
      I2 => r_ball_pre_x(7),
      I3 => r_ball_pre_x(5),
      I4 => r_ball_pre_x(6),
      O => \o_uart_buffer[27]_i_8_n_0\
    );
\o_uart_buffer[27]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => r_ball_pre_x(7),
      I1 => r_ball_pre_x(6),
      I2 => r_ball_pre_x(5),
      O => \o_uart_buffer[27]_i_9_n_0\
    );
\o_uart_buffer[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[28]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[28]_i_1_n_0\
    );
\o_uart_buffer[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCEC37FE"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[28]_i_2_n_0\
    );
\o_uart_buffer[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \o_uart_buffer[66]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[29]_i_2_n_0\,
      I3 => \o_uart_buffer[74]_i_2_n_0\,
      O => \o_uart_buffer[29]_i_1_n_0\
    );
\o_uart_buffer[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000756E9EA"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[29]_i_2_n_0\
    );
\o_uart_buffer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \o_uart_buffer[6]_i_2_n_0\,
      I1 => \o_uart_buffer[2]_i_2_n_0\,
      I2 => \^r_screen_render_state\(1),
      I3 => \^r_screen_render_state\(0),
      I4 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[2]_i_1_n_0\
    );
\o_uart_buffer[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"155575E8"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(0),
      I2 => r_message_index(2),
      I3 => r_message_index(1),
      I4 => r_message_index(3),
      O => \o_uart_buffer[2]_i_2_n_0\
    );
\o_uart_buffer[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \o_uart_buffer[74]_i_2_n_0\,
      I1 => \o_uart_buffer[30]_i_2_n_0\,
      I2 => \o_uart_buffer[43]_i_2_n_0\,
      O => \o_uart_buffer[30]_i_1_n_0\
    );
\o_uart_buffer[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C110028"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(1),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[30]_i_2_n_0\
    );
\o_uart_buffer[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF04"
    )
        port map (
      I0 => \o_uart_buffer_reg[32]_0\,
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      I3 => \o_uart_buffer[74]_i_2_n_0\,
      I4 => \o_uart_buffer[32]_i_3_n_0\,
      I5 => \o_uart_buffer[73]_i_2_n_0\,
      O => \o_uart_buffer[32]_i_1_n_0\
    );
\o_uart_buffer[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001200CB24"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[32]_i_3_n_0\
    );
\o_uart_buffer[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFD782D782"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \o_uart_buffer_reg[33]_i_7_n_3\,
      I2 => r_ball_pre_x(7),
      I3 => \o_uart_count[3]_i_8_n_0\,
      I4 => CO(0),
      I5 => \^r_ball_state_reg[1]_0\(0),
      O => \r_ball_state_reg[0]_1\
    );
\o_uart_buffer[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF0D"
    )
        port map (
      I0 => \o_uart_buffer[33]_i_2_n_0\,
      I1 => \o_uart_buffer[33]_i_3_n_0\,
      I2 => \r_pad2_new_pos[5]_i_5_n_0\,
      I3 => \o_uart_buffer[33]_i_4_n_0\,
      I4 => \o_uart_buffer[33]_i_5_n_0\,
      O => \o_uart_buffer[33]_i_1_n_0\
    );
\o_uart_buffer[33]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_ball_pre_x(7),
      I1 => r_ball_pre_x(6),
      O => \o_uart_buffer[33]_i_12_n_0\
    );
\o_uart_buffer[33]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_ball_pre_x(6),
      I1 => r_ball_pre_x(7),
      O => \o_uart_buffer[33]_i_13_n_0\
    );
\o_uart_buffer[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAAAAAA8AA"
    )
        port map (
      I0 => \^r_pad2_state_reg[1]_0\,
      I1 => r_ball_state(0),
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => CPU_RESETN_IBUF,
      I4 => r_pad1_state(0),
      I5 => r_pad1_state(1),
      O => \o_uart_buffer[33]_i_2_n_0\
    );
\o_uart_buffer[33]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_ball_pre_x(7),
      I1 => r_ball_pre_x(5),
      O => \o_uart_buffer[33]_i_20_n_0\
    );
\o_uart_buffer[33]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ball_pre_x(3),
      O => \o_uart_buffer[33]_i_21_n_0\
    );
\o_uart_buffer[33]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => r_ball_pre_x(5),
      I1 => r_ball_pre_x(6),
      I2 => r_ball_pre_x(7),
      O => \o_uart_buffer[33]_i_22_n_0\
    );
\o_uart_buffer[33]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ball_pre_x(5),
      I1 => r_ball_pre_x(7),
      O => \o_uart_buffer[33]_i_23_n_0\
    );
\o_uart_buffer[33]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ball_pre_x(4),
      O => \o_uart_buffer[33]_i_24_n_0\
    );
\o_uart_buffer[33]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^r_ball_pre_x_reg[2]_0\(2),
      I1 => r_ball_pre_x(7),
      I2 => r_ball_pre_x(3),
      O => \o_uart_buffer[33]_i_25_n_0\
    );
\o_uart_buffer[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222200F00000"
    )
        port map (
      I0 => Q(6),
      I1 => CO(0),
      I2 => r_ball_pre_x(7),
      I3 => \o_uart_buffer_reg[33]_i_7_n_3\,
      I4 => r_ball_state(0),
      I5 => \^r_ball_state_reg[1]_0\(0),
      O => \o_uart_buffer[33]_i_3_n_0\
    );
\o_uart_buffer[33]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040108"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[33]_i_4_n_0\
    );
\o_uart_buffer[33]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888C808C8A8C8A8C"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(0),
      I3 => \o_uart_buffer_reg[54]_0\,
      I4 => \r_over_state_reg_n_0_[0]\,
      I5 => \r_over_state_reg_n_0_[1]\,
      O => \o_uart_buffer[33]_i_5_n_0\
    );
\o_uart_buffer[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[74]_i_4_n_0\,
      I1 => \o_uart_buffer[34]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[34]_i_1_n_0\
    );
\o_uart_buffer[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F9FF1DE6"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[34]_i_2_n_0\
    );
\o_uart_buffer[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[73]_i_2_n_0\,
      I1 => \o_uart_buffer[35]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[35]_i_1_n_0\
    );
\o_uart_buffer[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F9FF1CE6"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[35]_i_2_n_0\
    );
\o_uart_buffer[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBAAABAAABAAA"
    )
        port map (
      I0 => \o_uart_buffer[33]_i_5_n_0\,
      I1 => \r_message_index[4]_i_2_n_0\,
      I2 => \o_uart_buffer[36]_i_2_n_0\,
      I3 => r_message_index(4),
      I4 => \o_uart_buffer[36]_i_3_n_0\,
      I5 => r_message_index(2),
      O => \o_uart_buffer[36]_i_1_n_0\
    );
\o_uart_buffer[36]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(0),
      O => \o_uart_buffer[36]_i_2_n_0\
    );
\o_uart_buffer[36]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      O => \o_uart_buffer[36]_i_3_n_0\
    );
\o_uart_buffer[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[37]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[37]_i_1_n_0\
    );
\o_uart_buffer[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA880552"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[37]_i_2_n_0\
    );
\o_uart_buffer[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAABAAAAAAAAA"
    )
        port map (
      I0 => \o_uart_buffer[38]_i_2_n_0\,
      I1 => r_message_index(4),
      I2 => \o_uart_buffer[38]_i_3_n_0\,
      I3 => r_message_index(2),
      I4 => \r_message_index[2]_i_2_n_0\,
      I5 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[38]_i_1_n_0\
    );
\o_uart_buffer[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF005000000000"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[1]\,
      I1 => \r_over_state_reg_n_0_[0]\,
      I2 => \o_uart_buffer_reg[54]_0\,
      I3 => \^r_screen_render_state\(0),
      I4 => CPU_RESETN_IBUF,
      I5 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[38]_i_2_n_0\
    );
\o_uart_buffer[38]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      O => \o_uart_buffer[38]_i_3_n_0\
    );
\o_uart_buffer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_buffer[6]_i_2_n_0\,
      I2 => \o_uart_buffer[3]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[3]_i_1_n_0\
    );
\o_uart_buffer[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8FD0102"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[3]_i_2_n_0\
    );
\o_uart_buffer[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[40]_i_2_n_0\,
      O => \o_uart_buffer[40]_i_1_n_0\
    );
\o_uart_buffer[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EDF91EA2"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[40]_i_2_n_0\
    );
\o_uart_buffer[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \o_uart_count[3]_i_7_n_0\,
      I1 => \o_uart_buffer[43]_i_2_n_0\,
      I2 => \o_uart_buffer[74]_i_2_n_0\,
      I3 => \o_uart_buffer[41]_i_2_n_0\,
      O => \o_uart_buffer[41]_i_1_n_0\
    );
\o_uart_buffer[41]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004011402E"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[41]_i_2_n_0\
    );
\o_uart_buffer[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[66]_i_2_n_0\,
      I1 => \o_uart_buffer[42]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[42]_i_1_n_0\
    );
\o_uart_buffer[42]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDFF1EA2"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[42]_i_2_n_0\
    );
\o_uart_buffer[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \o_uart_count[3]_i_7_n_0\,
      I1 => \o_uart_buffer[43]_i_2_n_0\,
      I2 => \o_uart_buffer[74]_i_2_n_0\,
      I3 => \o_uart_buffer[43]_i_3_n_0\,
      O => \o_uart_buffer[43]_i_1_n_0\
    );
\o_uart_buffer[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808880888A88"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(0),
      I3 => \o_uart_buffer_reg[54]_0\,
      I4 => \r_over_state_reg_n_0_[1]\,
      I5 => \r_over_state_reg_n_0_[0]\,
      O => \o_uart_buffer[43]_i_2_n_0\
    );
\o_uart_buffer[43]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005403C92E"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[43]_i_3_n_0\
    );
\o_uart_buffer[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[44]_i_2_n_0\,
      O => \o_uart_buffer[44]_i_1_n_0\
    );
\o_uart_buffer[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDE83FFE"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[44]_i_2_n_0\
    );
\o_uart_buffer[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[74]_i_4_n_0\,
      I1 => \o_uart_buffer[45]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[45]_i_1_n_0\
    );
\o_uart_buffer[45]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC9A215E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[45]_i_2_n_0\
    );
\o_uart_buffer[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAABAAAAA"
    )
        port map (
      I0 => \o_uart_buffer[46]_i_2_n_0\,
      I1 => \r_message_index[4]_i_2_n_0\,
      I2 => \o_uart_buffer[46]_i_3_n_0\,
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \o_uart_buffer[46]_i_4_n_0\,
      O => \o_uart_buffer[46]_i_1_n_0\
    );
\o_uart_buffer[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0004"
    )
        port map (
      I0 => \o_uart_buffer_reg[54]_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => \o_uart_count[3]_i_4_n_0\,
      I5 => \o_uart_buffer[66]_i_2_n_0\,
      O => \o_uart_buffer[46]_i_2_n_0\
    );
\o_uart_buffer[46]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"16"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      O => \o_uart_buffer[46]_i_3_n_0\
    );
\o_uart_buffer[46]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1590"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(0),
      I2 => r_message_index(1),
      I3 => r_message_index(3),
      O => \o_uart_buffer[46]_i_4_n_0\
    );
\o_uart_buffer[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00F1"
    )
        port map (
      I0 => \o_uart_buffer[48]_i_2_n_0\,
      I1 => \o_uart_buffer[48]_i_3_n_0\,
      I2 => \o_uart_buffer[48]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_5_n_0\,
      I4 => \o_uart_buffer[48]_i_5_n_0\,
      I5 => \o_uart_buffer[78]_i_3_n_0\,
      O => \o_uart_buffer[48]_i_1_n_0\
    );
\o_uart_buffer[48]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF28FF28FFFFFF28"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_8_n_0\,
      I1 => \^r_pad2_state_reg[0]_0\,
      I2 => \^r_pad2_state_reg[1]_1\,
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => r_ball_state(0),
      I5 => \^r_ball_pre_y_reg[0]_0\,
      O => \o_uart_buffer[48]_i_2_n_0\
    );
\o_uart_buffer[48]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004340000C7F7"
    )
        port map (
      I0 => \o_uart_buffer[48]_i_6_n_0\,
      I1 => r_pad1_state(1),
      I2 => r_pad1_state(0),
      I3 => \o_uart_buffer[49]_i_11_n_0\,
      I4 => r_ball_state(0),
      I5 => CPU_RESETN_IBUF,
      O => \o_uart_buffer[48]_i_3_n_0\
    );
\o_uart_buffer[48]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBBBFBBBFBBB"
    )
        port map (
      I0 => \o_uart_buffer[48]_i_7_n_0\,
      I1 => \r_ball_state_reg[1]_2\,
      I2 => \r_ball_state[0]_i_2_0\(0),
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \o_uart_buffer[51]_i_2_n_0\,
      I5 => \o_uart_buffer[51]_i_7_n_0\,
      O => \o_uart_buffer[48]_i_4_n_0\
    );
\o_uart_buffer[48]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015219E84"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[48]_i_5_n_0\
    );
\o_uart_buffer[48]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \r_pad1_step__0\(0),
      I1 => \^r_pad1_new_pos_reg[1]_0\(0),
      I2 => w_Paddle_size(0),
      O => \o_uart_buffer[48]_i_6_n_0\
    );
\o_uart_buffer[48]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000004000404000"
    )
        port map (
      I0 => \^r_pad2_state_reg[1]_1\,
      I1 => \^r_pad2_state_reg[0]_0\,
      I2 => \r_pad2_new_pos[5]_i_8_n_0\,
      I3 => w_Paddle_size(0),
      I4 => \^r_old2_pos__0\(0),
      I5 => \r_pad2_step__0\(0),
      O => \o_uart_buffer[48]_i_7_n_0\
    );
\o_uart_buffer[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000DDFD"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_2_n_0\,
      I1 => \o_uart_buffer[49]_i_3_n_0\,
      I2 => \o_uart_buffer[49]_i_4_n_0\,
      I3 => \o_uart_buffer[49]_i_5_n_0\,
      I4 => \r_pad2_new_pos[5]_i_5_n_0\,
      I5 => \o_uart_buffer[49]_i_6_n_0\,
      O => \o_uart_buffer[49]_i_1_n_0\
    );
\o_uart_buffer[49]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_20_n_0\,
      I1 => \o_uart_buffer[56]_i_12_n_0\,
      O => \o_uart_buffer[49]_i_10_n_0\
    );
\o_uart_buffer[49]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \r_pad1_step__0\(0),
      I1 => \^r_old1_pos_reg[5]_0\(0),
      I2 => w_Paddle_size(0),
      O => \o_uart_buffer[49]_i_11_n_0\
    );
\o_uart_buffer[49]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(5),
      I1 => \o_uart_buffer[49]_i_21_n_0\,
      I2 => \o_uart_buffer[49]_i_22_n_0\,
      O => \o_uart_buffer[49]_i_12_n_0\
    );
\o_uart_buffer[49]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002200220020220"
    )
        port map (
      I0 => r_pad1_state(1),
      I1 => r_pad1_state(0),
      I2 => \o_uart_buffer[56]_i_13_n_0\,
      I3 => \o_uart_buffer[50]_i_17_n_0\,
      I4 => \o_uart_buffer[48]_i_6_n_0\,
      I5 => \o_uart_buffer[51]_i_26_n_0\,
      O => \o_uart_buffer[49]_i_13_n_0\
    );
\o_uart_buffer[49]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92499692"
    )
        port map (
      I0 => \^r_ball_pre_y_reg[1]_0\,
      I1 => \r_ball_pre_y_reg_n_0_[3]\,
      I2 => \r_ball_pre_y_reg_n_0_[5]\,
      I3 => \^r_ball_pre_y_reg[2]_0\,
      I4 => \r_ball_pre_y_reg_n_0_[4]\,
      O => \o_uart_buffer[49]_i_15_n_0\
    );
\o_uart_buffer[49]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010000"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => r_pad1_state(1),
      I3 => r_pad1_state(0),
      I4 => \^r_pad2_state_reg[0]_0\,
      I5 => \^r_pad2_state_reg[1]_1\,
      O => \o_uart_buffer[49]_i_16_n_0\
    );
\o_uart_buffer[49]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BEF5E96E"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(0),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[49]_i_17_n_0\
    );
\o_uart_buffer[49]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7171007100FF71"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_27_n_0\,
      I1 => \o_uart_buffer[58]_i_28_n_0\,
      I2 => \r_pad2_step__0\(2),
      I3 => \r_pad2_step__0\(3),
      I4 => \o_uart_buffer[58]_i_20_n_0\,
      I5 => \^r_old2_pos__0\(3),
      O => \o_uart_buffer[49]_i_18_n_0\
    );
\o_uart_buffer[49]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_old2_pos__0\(3),
      I1 => \o_uart_buffer[58]_i_20_n_0\,
      O => \o_uart_buffer[49]_i_19_n_0\
    );
\o_uart_buffer[49]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00F1FFFFFFFFFF"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_14_n_0\,
      I1 => \o_uart_buffer[51]_i_13_n_0\,
      I2 => \o_uart_buffer[49]_i_7_n_0\,
      I3 => \o_uart_buffer[49]_i_8_n_0\,
      I4 => \o_uart_buffer[49]_i_9_n_0\,
      I5 => \^r_ball_state_reg[0]_0\,
      O => \o_uart_buffer[49]_i_2_n_0\
    );
\o_uart_buffer[49]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6996AAAA"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_25_n_0\,
      I1 => \r_pad1_step__0\(0),
      I2 => \^r_old1_pos_reg[5]_0\(0),
      I3 => w_Paddle_size(0),
      I4 => \o_uart_buffer[49]_i_12_n_0\,
      O => \o_uart_buffer[49]_i_20_n_0\
    );
\o_uart_buffer[49]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(4),
      I1 => \o_uart_buffer[58]_i_12_n_0\,
      I2 => \^r_old1_pos_reg[5]_0\(3),
      O => \o_uart_buffer[49]_i_21_n_0\
    );
\o_uart_buffer[49]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4D4D004D00FF4D"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_21_n_0\,
      I1 => \r_pad1_step__0\(2),
      I2 => \o_uart_buffer[58]_i_22_n_0\,
      I3 => \r_pad1_step__0\(3),
      I4 => \o_uart_buffer[58]_i_12_n_0\,
      I5 => \^r_old1_pos_reg[5]_0\(3),
      O => \o_uart_buffer[49]_i_22_n_0\
    );
\o_uart_buffer[49]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6900FFFF"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_4_n_0\,
      I1 => \o_uart_buffer[50]_i_6_n_0\,
      I2 => \o_uart_buffer[50]_i_7_n_0\,
      I3 => \o_uart_buffer[51]_i_2_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      O => \o_uart_buffer[49]_i_3_n_0\
    );
\o_uart_buffer[49]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6500"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_10_n_0\,
      I1 => \o_uart_buffer[49]_i_11_n_0\,
      I2 => \o_uart_buffer[49]_i_12_n_0\,
      I3 => \o_uart_buffer[51]_i_18_n_0\,
      I4 => \o_uart_buffer[49]_i_13_n_0\,
      I5 => \o_uart_buffer[58]_i_5_n_0\,
      O => \o_uart_buffer[49]_i_4_n_0\
    );
\o_uart_buffer[49]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF60606F60"
    )
        port map (
      I0 => \r_ball_state[0]_i_2_0\(1),
      I1 => \o_uart_buffer_reg[49]_0\,
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => r_ball_state(0),
      I4 => \o_uart_buffer[49]_i_15_n_0\,
      I5 => \o_uart_buffer[49]_i_16_n_0\,
      O => \o_uart_buffer[49]_i_5_n_0\
    );
\o_uart_buffer[49]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[73]_i_2_n_0\,
      I1 => \o_uart_buffer[49]_i_17_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[49]_i_6_n_0\
    );
\o_uart_buffer[49]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \r_pad2_step__0\(0),
      I1 => \^r_old2_pos__0\(0),
      I2 => w_Paddle_size(0),
      O => \o_uart_buffer[49]_i_7_n_0\
    );
\o_uart_buffer[49]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_18_n_0\,
      I1 => \^r_old2_pos__0\(4),
      I2 => \o_uart_buffer[49]_i_19_n_0\,
      I3 => \^r_old2_pos__0\(5),
      O => \o_uart_buffer[49]_i_8_n_0\
    );
\o_uart_buffer[49]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_10_n_0\,
      I1 => \o_uart_buffer[56]_i_5_n_0\,
      O => \o_uart_buffer[49]_i_9_n_0\
    );
\o_uart_buffer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBA00"
    )
        port map (
      I0 => \o_uart_buffer_reg[27]_0\,
      I1 => \o_uart_buffer[4]_i_2_n_0\,
      I2 => \o_uart_buffer_reg[4]_0\,
      I3 => \r_ball_state[0]_i_3_n_0\,
      I4 => \o_uart_buffer[4]_i_4_n_0\,
      O => \o_uart_buffer[4]_i_1_n_0\
    );
\o_uart_buffer[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555551051"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_2_n_0\,
      I1 => r_pad1_state(1),
      I2 => r_pad1_state(0),
      I3 => CPU_RESETN_IBUF,
      I4 => r_ball_state(0),
      I5 => \^r_ball_state_reg[1]_0\(0),
      O => \o_uart_buffer[4]_i_2_n_0\
    );
\o_uart_buffer[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000080A2080"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(1),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[4]_i_4_n_0\
    );
\o_uart_buffer[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00FD"
    )
        port map (
      I0 => \o_uart_buffer[50]_i_2_n_0\,
      I1 => \o_uart_buffer[50]_i_3_n_0\,
      I2 => \o_uart_buffer[50]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_5_n_0\,
      I4 => \o_uart_buffer[50]_i_5_n_0\,
      O => \o_uart_buffer[50]_i_1_n_0\
    );
\o_uart_buffer[50]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0280A880A82A02"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_18_n_0\,
      I1 => \o_uart_buffer[56]_i_12_n_0\,
      I2 => \o_uart_buffer[51]_i_25_n_0\,
      I3 => \o_uart_buffer[50]_i_15_n_0\,
      I4 => \o_uart_buffer[57]_i_6_n_0\,
      I5 => \o_uart_buffer[57]_i_16_n_0\,
      O => \o_uart_buffer[50]_i_10_n_0\
    );
\o_uart_buffer[50]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0AA0820A0A28"
    )
        port map (
      I0 => r_pad1_state(1),
      I1 => \o_uart_buffer[48]_i_6_n_0\,
      I2 => \o_uart_buffer[50]_i_16_n_0\,
      I3 => \o_uart_buffer[50]_i_17_n_0\,
      I4 => \o_uart_buffer[56]_i_13_n_0\,
      I5 => \o_uart_buffer[51]_i_26_n_0\,
      O => \o_uart_buffer[50]_i_11_n_0\
    );
\o_uart_buffer[50]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA8A080820A2AA"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_pre_y_reg[1]_0\,
      I2 => \r_ball_pre_y_reg_n_0_[3]\,
      I3 => \r_ball_pre_y_reg_n_0_[5]\,
      I4 => \^r_ball_pre_y_reg[2]_0\,
      I5 => \r_ball_pre_y_reg_n_0_[4]\,
      O => \o_uart_buffer[50]_i_12_n_0\
    );
\o_uart_buffer[50]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"150140547F57D5FD"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_17_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[2]\,
      I2 => \o_uart_buffer[50]_i_18_n_0\,
      I3 => w_Paddle_size(2),
      I4 => \r_pad2_new_pos_reg_n_0_[3]\,
      I5 => \r_pad2_step__0\(3),
      O => \o_uart_buffer[50]_i_13_n_0\
    );
\o_uart_buffer[50]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000071"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[2]\,
      I1 => \o_uart_buffer[50]_i_18_n_0\,
      I2 => w_Paddle_size(2),
      I3 => \r_pad2_new_pos_reg_n_0_[3]\,
      I4 => \r_pad2_new_pos_reg_n_0_[4]\,
      O => \o_uart_buffer[50]_i_14_n_0\
    );
\o_uart_buffer[50]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_12_n_0\,
      I1 => w_Paddle_size(0),
      I2 => \^r_old1_pos_reg[5]_0\(0),
      I3 => \r_pad1_step__0\(0),
      O => \o_uart_buffer[50]_i_15_n_0\
    );
\o_uart_buffer[50]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_10_n_0\,
      I1 => \o_uart_buffer[57]_i_5_n_0\,
      O => \o_uart_buffer[50]_i_16_n_0\
    );
\o_uart_buffer[50]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C3C96C39696C3"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_26_n_0\,
      I1 => \r_pad1_step__0\(1),
      I2 => \o_uart_buffer[49]_i_13_0\,
      I3 => \^r_pad1_new_pos_reg[1]_0\(0),
      I4 => w_Paddle_size(0),
      I5 => \r_pad1_step__0\(0),
      O => \o_uart_buffer[50]_i_17_n_0\
    );
\o_uart_buffer[50]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB2B"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[1]\,
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \r_pad2_new_pos_reg_n_0_[0]\,
      O => \o_uart_buffer[50]_i_18_n_0\
    );
\o_uart_buffer[50]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EEE7111FFFFFFFF"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_4_n_0\,
      I1 => \o_uart_buffer[50]_i_6_n_0\,
      I2 => \o_uart_buffer[51]_i_7_n_0\,
      I3 => \o_uart_buffer[50]_i_7_n_0\,
      I4 => \o_uart_buffer[51]_i_11_n_0\,
      I5 => \o_uart_buffer[51]_i_2_n_0\,
      O => \o_uart_buffer[50]_i_2_n_0\
    );
\o_uart_buffer[50]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2000FFFF"
    )
        port map (
      I0 => \^r_pad2_state_reg[0]_0\,
      I1 => \^r_pad2_state_reg[1]_1\,
      I2 => \o_uart_buffer[50]_i_8_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => \o_uart_buffer_reg[50]_0\,
      O => \o_uart_buffer[50]_i_3_n_0\
    );
\o_uart_buffer[50]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_16_n_0\,
      I1 => \o_uart_buffer[50]_i_10_n_0\,
      I2 => \o_uart_buffer[51]_i_19_n_0\,
      I3 => \o_uart_buffer[50]_i_11_n_0\,
      I4 => \^r_pad2_state_reg[1]_2\,
      I5 => \o_uart_buffer[50]_i_12_n_0\,
      O => \o_uart_buffer[50]_i_4_n_0\
    );
\o_uart_buffer[50]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054029E84"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[50]_i_5_n_0\
    );
\o_uart_buffer[50]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969969966966966"
    )
        port map (
      I0 => w_Paddle_size(1),
      I1 => \r_pad2_new_pos_reg_n_0_[1]\,
      I2 => \r_pad2_new_pos_reg_n_0_[0]\,
      I3 => w_Paddle_size(0),
      I4 => \r_pad2_step__0\(0),
      I5 => \r_pad2_step__0\(1),
      O => \o_uart_buffer[50]_i_6_n_0\
    );
\o_uart_buffer[50]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \o_uart_buffer[50]_i_13_n_0\,
      I1 => \o_uart_buffer[50]_i_14_n_0\,
      I2 => \r_pad2_new_pos_reg_n_0_[5]\,
      O => \o_uart_buffer[50]_i_7_n_0\
    );
\o_uart_buffer[50]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFBFBBF40040440"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_23_n_0\,
      I1 => \o_uart_buffer[49]_i_8_n_0\,
      I2 => w_Paddle_size(0),
      I3 => \^r_old2_pos__0\(0),
      I4 => \r_pad2_step__0\(0),
      I5 => \o_uart_buffer[51]_i_13_n_0\,
      O => \o_uart_buffer[50]_i_8_n_0\
    );
\o_uart_buffer[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FFF2"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_2_n_0\,
      I1 => \o_uart_buffer[51]_i_3_n_0\,
      I2 => \o_uart_buffer[51]_i_4_n_0\,
      I3 => \o_uart_buffer[51]_i_5_n_0\,
      I4 => \r_pad2_new_pos[5]_i_5_n_0\,
      I5 => \o_uart_buffer[51]_i_6_n_0\,
      O => \o_uart_buffer[51]_i_1_n_0\
    );
\o_uart_buffer[51]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6996AAAA"
    )
        port map (
      I0 => \o_uart_buffer[50]_i_6_n_0\,
      I1 => \r_pad2_step__0\(0),
      I2 => \r_pad2_new_pos_reg_n_0_[0]\,
      I3 => w_Paddle_size(0),
      I4 => \o_uart_buffer[50]_i_7_n_0\,
      O => \o_uart_buffer[51]_i_10_n_0\
    );
\o_uart_buffer[51]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_25_n_0\,
      I1 => \o_uart_buffer[57]_i_8_n_0\,
      O => \o_uart_buffer[51]_i_11_n_0\
    );
\o_uart_buffer[51]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0069006900FF00"
    )
        port map (
      I0 => \r_pad2_step__0\(0),
      I1 => \^r_old2_pos__0\(0),
      I2 => w_Paddle_size(0),
      I3 => \o_uart_buffer[49]_i_8_n_0\,
      I4 => \o_uart_buffer[51]_i_23_n_0\,
      I5 => \o_uart_buffer[56]_i_5_n_0\,
      O => \o_uart_buffer[51]_i_12_n_0\
    );
\o_uart_buffer[51]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8400420039FFDE"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_30_n_0\,
      I1 => \o_uart_buffer[56]_i_9_n_0\,
      I2 => \o_uart_buffer[58]_i_10_n_0\,
      I3 => \o_uart_buffer[56]_i_10_n_0\,
      I4 => \o_uart_buffer[57]_i_9_n_0\,
      I5 => \o_uart_buffer[57]_i_29_n_0\,
      O => \o_uart_buffer[51]_i_13_n_0\
    );
\o_uart_buffer[51]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C036419C6B1C030"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_10_n_0\,
      I1 => \o_uart_buffer[58]_i_10_n_0\,
      I2 => \o_uart_buffer[56]_i_9_n_0\,
      I3 => \o_uart_buffer[57]_i_30_n_0\,
      I4 => \o_uart_buffer[57]_i_29_n_0\,
      I5 => \o_uart_buffer[57]_i_9_n_0\,
      O => \o_uart_buffer[51]_i_14_n_0\
    );
\o_uart_buffer[51]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => CPU_RESETN_IBUF,
      I2 => r_pad1_state(1),
      I3 => r_pad1_state(0),
      O => \o_uart_buffer[51]_i_16_n_0\
    );
\o_uart_buffer[51]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA280AAAAA"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_24_n_0\,
      I1 => \o_uart_buffer[56]_i_12_n_0\,
      I2 => \o_uart_buffer[51]_i_25_n_0\,
      I3 => \o_uart_buffer[49]_i_11_n_0\,
      I4 => \o_uart_buffer[49]_i_12_n_0\,
      I5 => \o_uart_buffer[57]_i_21_n_0\,
      O => \o_uart_buffer[51]_i_17_n_0\
    );
\o_uart_buffer[51]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pad1_state(0),
      I1 => r_pad1_state(1),
      O => \o_uart_buffer[51]_i_18_n_0\
    );
\o_uart_buffer[51]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_pad1_state(0),
      I2 => r_pad1_state(1),
      O => \o_uart_buffer[51]_i_19_n_0\
    );
\o_uart_buffer[51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => r_pad1_state(1),
      I3 => r_pad1_state(0),
      I4 => \^r_pad2_state_reg[1]_1\,
      I5 => \^r_pad2_state_reg[0]_0\,
      O => \o_uart_buffer[51]_i_2_n_0\
    );
\o_uart_buffer[51]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFDCEF"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_13_n_0\,
      I1 => \o_uart_buffer[51]_i_26_n_0\,
      I2 => \o_uart_buffer[48]_i_6_n_0\,
      I3 => \o_uart_buffer[51]_i_27_n_0\,
      I4 => \o_uart_buffer[57]_i_15_n_0\,
      I5 => \o_uart_buffer[51]_i_28_n_0\,
      O => \o_uart_buffer[51]_i_20_n_0\
    );
\o_uart_buffer[51]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEEA"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_29_n_0\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \^r_pad2_state_reg[0]_0\,
      I3 => \^r_pad2_state_reg[1]_1\,
      I4 => \^r_ball_state_reg[1]_0\(0),
      O => \o_uart_buffer[51]_i_21_n_0\
    );
\o_uart_buffer[51]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54268DC8"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(0),
      I3 => r_message_index(1),
      I4 => r_message_index(3),
      O => \o_uart_buffer[51]_i_22_n_0\
    );
\o_uart_buffer[51]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969969966966966"
    )
        port map (
      I0 => w_Paddle_size(1),
      I1 => \^r_old2_pos__0\(1),
      I2 => \^r_old2_pos__0\(0),
      I3 => w_Paddle_size(0),
      I4 => \r_pad2_step__0\(0),
      I5 => \r_pad2_step__0\(1),
      O => \o_uart_buffer[51]_i_23_n_0\
    );
\o_uart_buffer[51]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A5FFED7BB796A5"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_6_n_0\,
      I1 => \o_uart_buffer[57]_i_16_n_0\,
      I2 => \o_uart_buffer[57]_i_17_n_0\,
      I3 => \o_uart_buffer[49]_i_20_n_0\,
      I4 => \o_uart_buffer[57]_i_6_n_0\,
      I5 => \o_uart_buffer[56]_i_17_n_0\,
      O => \o_uart_buffer[51]_i_24_n_0\
    );
\o_uart_buffer[51]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB2424DB24DBDB24"
    )
        port map (
      I0 => \r_pad1_step__0\(0),
      I1 => w_Paddle_size(0),
      I2 => \^r_old1_pos_reg[5]_0\(0),
      I3 => \^r_old1_pos_reg[5]_0\(1),
      I4 => w_Paddle_size(1),
      I5 => \r_pad1_step__0\(1),
      O => \o_uart_buffer[51]_i_25_n_0\
    );
\o_uart_buffer[51]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_34_n_0\,
      I1 => \o_uart_buffer[57]_i_35_n_0\,
      I2 => \r_pad1_new_pos_reg_n_0_[5]\,
      O => \o_uart_buffer[51]_i_26_n_0\
    );
\o_uart_buffer[51]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB2424DB24DBDB24"
    )
        port map (
      I0 => \r_pad1_step__0\(0),
      I1 => w_Paddle_size(0),
      I2 => \^r_pad1_new_pos_reg[1]_0\(0),
      I3 => \^r_pad1_new_pos_reg[1]_0\(1),
      I4 => w_Paddle_size(1),
      I5 => \r_pad1_step__0\(1),
      O => \o_uart_buffer[51]_i_27_n_0\
    );
\o_uart_buffer[51]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81B0490DFFFFFFFF"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_18_n_0\,
      I1 => \o_uart_buffer[57]_i_5_n_0\,
      I2 => \o_uart_buffer[56]_i_19_n_0\,
      I3 => \o_uart_buffer[50]_i_17_n_0\,
      I4 => \o_uart_buffer[57]_i_10_n_0\,
      I5 => r_pad1_state(1),
      O => \o_uart_buffer[51]_i_28_n_0\
    );
\o_uart_buffer[51]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A28AAAA8A8A22AAA"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_pre_y_reg[1]_0\,
      I2 => \^r_ball_pre_y_reg[2]_0\,
      I3 => \r_ball_pre_y_reg_n_0_[5]\,
      I4 => \r_ball_pre_y_reg_n_0_[4]\,
      I5 => \r_ball_pre_y_reg_n_0_[3]\,
      O => \o_uart_buffer[51]_i_29_n_0\
    );
\o_uart_buffer[51]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00C0C0EE00CC00E"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_7_n_0\,
      I1 => \o_uart_buffer[51]_i_8_n_0\,
      I2 => \o_uart_buffer[51]_i_9_n_0\,
      I3 => \o_uart_buffer[56]_i_4_n_0\,
      I4 => \o_uart_buffer[51]_i_10_n_0\,
      I5 => \o_uart_buffer[51]_i_11_n_0\,
      O => \o_uart_buffer[51]_i_3_n_0\
    );
\o_uart_buffer[51]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF200FFFF"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_12_n_0\,
      I1 => \o_uart_buffer[51]_i_13_n_0\,
      I2 => \o_uart_buffer[51]_i_14_n_0\,
      I3 => \^r_ball_state_reg[0]_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => \o_uart_buffer_reg[51]_0\,
      O => \o_uart_buffer[51]_i_4_n_0\
    );
\o_uart_buffer[51]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_16_n_0\,
      I1 => \o_uart_buffer[51]_i_17_n_0\,
      I2 => \o_uart_buffer[51]_i_18_n_0\,
      I3 => \o_uart_buffer[51]_i_19_n_0\,
      I4 => \o_uart_buffer[51]_i_20_n_0\,
      I5 => \o_uart_buffer[51]_i_21_n_0\,
      O => \o_uart_buffer[51]_i_5_n_0\
    );
\o_uart_buffer[51]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \o_uart_buffer[33]_i_5_n_0\,
      I1 => \r_message_index[2]_i_2_n_0\,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => \o_uart_buffer[51]_i_22_n_0\,
      O => \o_uart_buffer[51]_i_6_n_0\
    );
\o_uart_buffer[51]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \r_pad2_step__0\(0),
      I1 => \r_pad2_new_pos_reg_n_0_[0]\,
      I2 => w_Paddle_size(0),
      O => \o_uart_buffer[51]_i_7_n_0\
    );
\o_uart_buffer[51]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557DD7FFFFFFFF"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_27_n_0\,
      I1 => w_Paddle_size(0),
      I2 => \r_pad2_new_pos_reg_n_0_[0]\,
      I3 => \r_pad2_step__0\(0),
      I4 => \o_uart_buffer[50]_i_6_n_0\,
      I5 => \o_uart_buffer[50]_i_7_n_0\,
      O => \o_uart_buffer[51]_i_8_n_0\
    );
\o_uart_buffer[51]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A596965A"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_9_n_0\,
      I1 => \o_uart_buffer[57]_i_25_n_0\,
      I2 => \o_uart_buffer[57]_i_28_n_0\,
      I3 => \o_uart_buffer[51]_i_10_n_0\,
      I4 => \o_uart_buffer[57]_i_8_n_0\,
      O => \o_uart_buffer[51]_i_9_n_0\
    );
\o_uart_buffer[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \o_uart_count[3]_i_4_n_0\,
      I1 => \o_uart_count[3]_i_5_n_0\,
      I2 => \o_uart_count[3]_i_7_n_0\,
      O => \o_uart_buffer[52]_i_1_n_0\
    );
\o_uart_buffer[52]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFFFFAAEAAAEA"
    )
        port map (
      I0 => \o_uart_buffer[74]_i_4_n_0\,
      I1 => \o_uart_buffer[52]_i_3_n_0\,
      I2 => \r_over_state_reg_n_0_[0]\,
      I3 => \r_over_state_reg_n_0_[1]\,
      I4 => \o_uart_buffer[52]_i_4_n_0\,
      I5 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[52]_i_2_n_0\
    );
\o_uart_buffer[52]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^r_send_pending_reg_0\,
      I1 => w_TX_ready,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[52]_i_3_n_0\
    );
\o_uart_buffer[52]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDDE3FFE"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[52]_i_4_n_0\
    );
\o_uart_buffer[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_3_n_0\,
      I2 => \o_uart_buffer[53]_i_3_n_0\,
      I3 => \o_uart_count[3]_i_7_n_0\,
      O => \o_uart_buffer[53]_i_1_n_0\
    );
\o_uart_buffer[53]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC81692"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[53]_i_2_n_0\
    );
\o_uart_buffer[53]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880008888"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => CPU_RESETN_IBUF,
      I2 => \r_over_state_reg_n_0_[0]\,
      I3 => \r_over_state_reg_n_0_[1]\,
      I4 => \o_uart_buffer_reg[54]_0\,
      I5 => \^r_screen_render_state\(0),
      O => \o_uart_buffer[53]_i_3_n_0\
    );
\o_uart_buffer[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAFAAABA"
    )
        port map (
      I0 => \o_uart_buffer[54]_i_2_n_0\,
      I1 => \o_uart_buffer_reg[54]_0\,
      I2 => CPU_RESETN_IBUF,
      I3 => \^r_screen_render_state\(0),
      I4 => \^r_screen_render_state\(1),
      I5 => \o_uart_count[3]_i_6_n_0\,
      O => \o_uart_buffer[54]_i_1_n_0\
    );
\o_uart_buffer[54]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000421684"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[54]_i_2_n_0\
    );
\o_uart_buffer[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF11F1"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_2_n_0\,
      I1 => \r_pad2_new_pos[5]_i_5_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      I3 => \o_uart_buffer[56]_i_3_n_0\,
      I4 => \o_uart_buffer[66]_i_2_n_0\,
      O => \o_uart_buffer[56]_i_1_n_0\
    );
\o_uart_buffer[56]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA6AAAA"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_23_n_0\,
      I1 => \o_uart_buffer[49]_i_7_n_0\,
      I2 => \o_uart_buffer[49]_i_18_n_0\,
      I3 => \^r_old2_pos__0\(4),
      I4 => \o_uart_buffer[49]_i_19_n_0\,
      I5 => \^r_old2_pos__0\(5),
      O => \o_uart_buffer[56]_i_10_n_0\
    );
\o_uart_buffer[56]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C30C33C34C34C34C"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_33_n_0\,
      I1 => \^r_old2_pos__0\(5),
      I2 => \^r_old2_pos__0\(4),
      I3 => \o_uart_buffer[49]_i_19_n_0\,
      I4 => \o_uart_buffer[49]_i_18_n_0\,
      I5 => \o_uart_buffer[56]_i_16_n_0\,
      O => \o_uart_buffer[56]_i_11_n_0\
    );
\o_uart_buffer[56]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF216900FF697B00"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_6_n_0\,
      I1 => \o_uart_buffer[57]_i_16_n_0\,
      I2 => \o_uart_buffer[57]_i_17_n_0\,
      I3 => \o_uart_buffer[56]_i_17_n_0\,
      I4 => \o_uart_buffer[57]_i_6_n_0\,
      I5 => \o_uart_buffer[49]_i_20_n_0\,
      O => \o_uart_buffer[56]_i_12_n_0\
    );
\o_uart_buffer[56]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EAE8A8E"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_18_n_0\,
      I1 => \o_uart_buffer[57]_i_5_n_0\,
      I2 => \o_uart_buffer[56]_i_19_n_0\,
      I3 => \o_uart_buffer[50]_i_17_n_0\,
      I4 => \o_uart_buffer[57]_i_10_n_0\,
      O => \o_uart_buffer[56]_i_13_n_0\
    );
\o_uart_buffer[56]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF044"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_20_n_0\,
      I1 => r_ball_state(0),
      I2 => \o_uart_buffer_reg[49]_0\,
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \o_uart_buffer[49]_i_16_n_0\,
      O => \o_uart_buffer[56]_i_14_n_0\
    );
\o_uart_buffer[56]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81177EE8"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_17_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[3]\,
      I2 => \o_uart_buffer[58]_i_18_n_0\,
      I3 => \r_pad2_step__0\(3),
      I4 => \r_pad2_new_pos_reg_n_0_[4]\,
      O => \o_uart_buffer[56]_i_15_n_0\
    );
\o_uart_buffer[56]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \r_pad2_step__0\(2),
      I1 => \o_uart_buffer[58]_i_28_n_0\,
      I2 => \o_uart_buffer[58]_i_27_n_0\,
      I3 => \^r_old2_pos__0\(3),
      I4 => \o_uart_buffer[58]_i_20_n_0\,
      I5 => \r_pad2_step__0\(3),
      O => \o_uart_buffer[56]_i_16_n_0\
    );
\o_uart_buffer[56]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"599959AA"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_18_n_0\,
      I1 => \o_uart_buffer[58]_i_6_n_0\,
      I2 => \o_uart_buffer[57]_i_16_n_0\,
      I3 => \o_uart_buffer[57]_i_17_n_0\,
      I4 => \o_uart_buffer[57]_i_21_n_0\,
      O => \o_uart_buffer[56]_i_17_n_0\
    );
\o_uart_buffer[56]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9995A9A5"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_11_n_0\,
      I1 => \o_uart_buffer[58]_i_7_n_0\,
      I2 => \o_uart_buffer[57]_i_12_n_0\,
      I3 => \o_uart_buffer[57]_i_10_n_0\,
      I4 => \o_uart_buffer[57]_i_15_n_0\,
      O => \o_uart_buffer[56]_i_18_n_0\
    );
\o_uart_buffer[56]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_7_n_0\,
      I1 => \o_uart_buffer[57]_i_10_n_0\,
      I2 => \o_uart_buffer[57]_i_12_n_0\,
      O => \o_uart_buffer[56]_i_19_n_0\
    );
\o_uart_buffer[56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0DD0000"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_2_n_0\,
      I1 => \o_uart_buffer[56]_i_4_n_0\,
      I2 => \o_uart_buffer[56]_i_5_n_0\,
      I3 => \^r_ball_state_reg[0]_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => \o_uart_buffer[56]_i_7_n_0\,
      O => \o_uart_buffer[56]_i_2_n_0\
    );
\o_uart_buffer[56]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DF224D2"
    )
        port map (
      I0 => \r_ball_pre_y_reg_n_0_[4]\,
      I1 => \^r_ball_pre_y_reg[2]_0\,
      I2 => \r_ball_pre_y_reg_n_0_[5]\,
      I3 => \r_ball_pre_y_reg_n_0_[3]\,
      I4 => \^r_ball_pre_y_reg[1]_0\,
      O => \o_uart_buffer[56]_i_20_n_0\
    );
\o_uart_buffer[56]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8C71FA2"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[56]_i_3_n_0\
    );
\o_uart_buffer[56]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"84960000FFFF96DE"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_9_n_0\,
      I1 => \o_uart_buffer[57]_i_25_n_0\,
      I2 => \o_uart_buffer[57]_i_28_n_0\,
      I3 => \o_uart_buffer[51]_i_10_n_0\,
      I4 => \o_uart_buffer[57]_i_8_n_0\,
      I5 => \o_uart_buffer[56]_i_8_n_0\,
      O => \o_uart_buffer[56]_i_4_n_0\
    );
\o_uart_buffer[56]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3F4DBF69024D036"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_29_n_0\,
      I1 => \o_uart_buffer[57]_i_30_n_0\,
      I2 => \o_uart_buffer[56]_i_9_n_0\,
      I3 => \o_uart_buffer[58]_i_10_n_0\,
      I4 => \o_uart_buffer[56]_i_10_n_0\,
      I5 => \o_uart_buffer[56]_i_11_n_0\,
      O => \o_uart_buffer[56]_i_5_n_0\
    );
\o_uart_buffer[56]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => r_pad1_state(1),
      I3 => r_pad1_state(0),
      I4 => \^r_pad2_state_reg[0]_0\,
      I5 => \^r_pad2_state_reg[1]_1\,
      O => \^r_ball_state_reg[0]_0\
    );
\o_uart_buffer[56]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAAFBA"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_5_n_0\,
      I1 => \o_uart_buffer[56]_i_12_n_0\,
      I2 => r_pad1_state(0),
      I3 => r_pad1_state(1),
      I4 => \o_uart_buffer[56]_i_13_n_0\,
      I5 => \o_uart_buffer[56]_i_14_n_0\,
      O => \o_uart_buffer[56]_i_7_n_0\
    );
\o_uart_buffer[56]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AA9AAA9"
    )
        port map (
      I0 => \o_uart_buffer[56]_i_15_n_0\,
      I1 => \o_uart_buffer[57]_i_27_n_0\,
      I2 => \o_uart_buffer[57]_i_28_n_0\,
      I3 => \o_uart_buffer[58]_i_9_n_0\,
      I4 => \o_uart_buffer[57]_i_25_n_0\,
      O => \o_uart_buffer[56]_i_8_n_0\
    );
\o_uart_buffer[56]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BDD4422B"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_19_n_0\,
      I1 => \^r_old2_pos__0\(3),
      I2 => \o_uart_buffer[58]_i_20_n_0\,
      I3 => \r_pad2_step__0\(3),
      I4 => \^r_old2_pos__0\(4),
      O => \o_uart_buffer[56]_i_9_n_0\
    );
\o_uart_buffer[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0D0DFF0D"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_2_n_0\,
      I1 => \o_uart_buffer[57]_i_3_n_0\,
      I2 => \r_pad2_new_pos[5]_i_5_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      I4 => \o_uart_buffer[57]_i_4_n_0\,
      I5 => \o_uart_buffer[73]_i_2_n_0\,
      O => \o_uart_buffer[57]_i_1_n_0\
    );
\o_uart_buffer[57]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000EFFFFFFF1"
    )
        port map (
      I0 => \o_uart_buffer[48]_i_6_n_0\,
      I1 => \o_uart_buffer[51]_i_27_n_0\,
      I2 => \o_uart_buffer[57]_i_34_n_0\,
      I3 => \o_uart_buffer[57]_i_35_n_0\,
      I4 => \r_pad1_new_pos_reg_n_0_[5]\,
      I5 => \o_uart_buffer[57]_i_15_n_0\,
      O => \o_uart_buffer[57]_i_10_n_0\
    );
\o_uart_buffer[57]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333CCCC2"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[5]\,
      I1 => \r_pad1_new_pos_reg_n_0_[4]\,
      I2 => \o_uart_buffer[58]_i_14_n_0\,
      I3 => \r_pad1_new_pos_reg_n_0_[3]\,
      I4 => \o_uart_buffer[57]_i_34_n_0\,
      O => \o_uart_buffer[57]_i_11_n_0\
    );
\o_uart_buffer[57]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0F00EF00F0FF0"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[5]\,
      I1 => \r_pad1_new_pos_reg_n_0_[4]\,
      I2 => \r_pad1_step__0\(3),
      I3 => \o_uart_buffer[58]_i_14_n_0\,
      I4 => \r_pad1_new_pos_reg_n_0_[3]\,
      I5 => \o_uart_buffer[58]_i_13_n_0\,
      O => \o_uart_buffer[57]_i_12_n_0\
    );
\o_uart_buffer[57]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56AAAAA8"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[5]\,
      I1 => \r_pad1_new_pos_reg_n_0_[3]\,
      I2 => \o_uart_buffer[58]_i_14_n_0\,
      I3 => \r_pad1_new_pos_reg_n_0_[4]\,
      I4 => \o_uart_buffer[57]_i_34_n_0\,
      O => \o_uart_buffer[57]_i_13_n_0\
    );
\o_uart_buffer[57]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFFFF"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[5]\,
      I1 => \r_pad1_new_pos_reg_n_0_[4]\,
      I2 => \o_uart_buffer[58]_i_14_n_0\,
      I3 => \r_pad1_new_pos_reg_n_0_[3]\,
      I4 => \o_uart_buffer[57]_i_34_n_0\,
      O => \o_uart_buffer[57]_i_14_n_0\
    );
\o_uart_buffer[57]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_23_n_0\,
      I1 => \o_uart_buffer[58]_i_24_n_0\,
      I2 => \r_pad1_step__0\(2),
      O => \o_uart_buffer[57]_i_15_n_0\
    );
\o_uart_buffer[57]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFF04040400"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(5),
      I1 => \o_uart_buffer[49]_i_21_n_0\,
      I2 => \o_uart_buffer[49]_i_22_n_0\,
      I3 => \o_uart_buffer[49]_i_11_n_0\,
      I4 => \o_uart_buffer[51]_i_25_n_0\,
      I5 => \o_uart_buffer[57]_i_21_n_0\,
      O => \o_uart_buffer[57]_i_16_n_0\
    );
\o_uart_buffer[57]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0FF10FF0F00F"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(4),
      I1 => \^r_old1_pos_reg[5]_0\(5),
      I2 => \r_pad1_step__0\(3),
      I3 => \o_uart_buffer[58]_i_12_n_0\,
      I4 => \^r_old1_pos_reg[5]_0\(3),
      I5 => \o_uart_buffer[58]_i_11_n_0\,
      O => \o_uart_buffer[57]_i_17_n_0\
    );
\o_uart_buffer[57]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333CCCC2"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(5),
      I1 => \^r_old1_pos_reg[5]_0\(4),
      I2 => \o_uart_buffer[58]_i_12_n_0\,
      I3 => \^r_old1_pos_reg[5]_0\(3),
      I4 => \o_uart_buffer[49]_i_22_n_0\,
      O => \o_uart_buffer[57]_i_18_n_0\
    );
\o_uart_buffer[57]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56AAAAA8"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(5),
      I1 => \^r_old1_pos_reg[5]_0\(3),
      I2 => \o_uart_buffer[58]_i_12_n_0\,
      I3 => \^r_old1_pos_reg[5]_0\(4),
      I4 => \o_uart_buffer[49]_i_22_n_0\,
      O => \o_uart_buffer[57]_i_19_n_0\
    );
\o_uart_buffer[57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55455045"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_5_n_0\,
      I1 => \o_uart_buffer[57]_i_5_n_0\,
      I2 => r_pad1_state(1),
      I3 => r_pad1_state(0),
      I4 => \o_uart_buffer[57]_i_6_n_0\,
      I5 => \o_uart_buffer[57]_i_7_n_0\,
      O => \o_uart_buffer[57]_i_2_n_0\
    );
\o_uart_buffer[57]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFFFF"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(5),
      I1 => \^r_old1_pos_reg[5]_0\(4),
      I2 => \o_uart_buffer[58]_i_12_n_0\,
      I3 => \^r_old1_pos_reg[5]_0\(3),
      I4 => \o_uart_buffer[49]_i_22_n_0\,
      O => \o_uart_buffer[57]_i_20_n_0\
    );
\o_uart_buffer[57]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_21_n_0\,
      I1 => \o_uart_buffer[58]_i_22_n_0\,
      I2 => \r_pad1_step__0\(2),
      O => \o_uart_buffer[57]_i_21_n_0\
    );
\o_uart_buffer[57]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"73C7"
    )
        port map (
      I0 => \^r_ball_pre_y_reg[2]_0\,
      I1 => \r_ball_pre_y_reg_n_0_[4]\,
      I2 => \r_ball_pre_y_reg_n_0_[5]\,
      I3 => \r_ball_pre_y_reg_n_0_[3]\,
      O => \o_uart_buffer[57]_i_22_n_0\
    );
\o_uart_buffer[57]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555655565666"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[5]\,
      I1 => \r_pad2_new_pos_reg_n_0_[4]\,
      I2 => \r_pad2_new_pos_reg_n_0_[3]\,
      I3 => \o_uart_buffer[58]_i_18_n_0\,
      I4 => \o_uart_buffer[58]_i_17_n_0\,
      I5 => \r_pad2_step__0\(3),
      O => \o_uart_buffer[57]_i_24_n_0\
    );
\o_uart_buffer[57]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA56AAAAAA"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_27_n_0\,
      I1 => \o_uart_buffer[51]_i_7_n_0\,
      I2 => \o_uart_buffer[50]_i_6_n_0\,
      I3 => \o_uart_buffer[50]_i_13_n_0\,
      I4 => \o_uart_buffer[50]_i_14_n_0\,
      I5 => \r_pad2_new_pos_reg_n_0_[5]\,
      O => \o_uart_buffer[57]_i_25_n_0\
    );
\o_uart_buffer[57]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C333333D333D3DDD"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[5]\,
      I1 => \r_pad2_new_pos_reg_n_0_[4]\,
      I2 => \r_pad2_new_pos_reg_n_0_[3]\,
      I3 => \o_uart_buffer[58]_i_18_n_0\,
      I4 => \o_uart_buffer[58]_i_17_n_0\,
      I5 => \r_pad2_step__0\(3),
      O => \o_uart_buffer[57]_i_26_n_0\
    );
\o_uart_buffer[57]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_26_n_0\,
      I1 => \o_uart_buffer[58]_i_25_n_0\,
      I2 => \r_pad2_step__0\(2),
      O => \o_uart_buffer[57]_i_27_n_0\
    );
\o_uart_buffer[57]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0F00FF00F0FF1"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[5]\,
      I1 => \r_pad2_new_pos_reg_n_0_[4]\,
      I2 => \r_pad2_step__0\(3),
      I3 => \o_uart_buffer[58]_i_18_n_0\,
      I4 => \r_pad2_new_pos_reg_n_0_[3]\,
      I5 => \o_uart_buffer[58]_i_17_n_0\,
      O => \o_uart_buffer[57]_i_28_n_0\
    );
\o_uart_buffer[57]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555555555A9"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_33_n_0\,
      I1 => \o_uart_buffer[49]_i_7_n_0\,
      I2 => \o_uart_buffer[51]_i_23_n_0\,
      I3 => \o_uart_buffer[49]_i_18_n_0\,
      I4 => \o_uart_buffer[57]_i_36_n_0\,
      I5 => \^r_old2_pos__0\(5),
      O => \o_uart_buffer[57]_i_29_n_0\
    );
\o_uart_buffer[57]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F73333333733333"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_8_n_0\,
      I1 => \r_ball_state_reg[1]_2\,
      I2 => \^r_pad2_state_reg[1]_1\,
      I3 => \^r_pad2_state_reg[0]_0\,
      I4 => \r_pad2_new_pos[5]_i_8_n_0\,
      I5 => \o_uart_buffer[57]_i_9_n_0\,
      O => \o_uart_buffer[57]_i_3_n_0\
    );
\o_uart_buffer[57]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0FF10FF0F00F"
    )
        port map (
      I0 => \^r_old2_pos__0\(5),
      I1 => \^r_old2_pos__0\(4),
      I2 => \r_pad2_step__0\(3),
      I3 => \o_uart_buffer[58]_i_20_n_0\,
      I4 => \^r_old2_pos__0\(3),
      I5 => \o_uart_buffer[58]_i_19_n_0\,
      O => \o_uart_buffer[57]_i_30_n_0\
    );
\o_uart_buffer[57]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CD3"
    )
        port map (
      I0 => \^r_old2_pos__0\(5),
      I1 => \^r_old2_pos__0\(4),
      I2 => \o_uart_buffer[49]_i_19_n_0\,
      I3 => \o_uart_buffer[49]_i_18_n_0\,
      O => \o_uart_buffer[57]_i_31_n_0\
    );
\o_uart_buffer[57]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_18_n_0\,
      I1 => \o_uart_buffer[49]_i_19_n_0\,
      I2 => \^r_old2_pos__0\(4),
      O => \o_uart_buffer[57]_i_32_n_0\
    );
\o_uart_buffer[57]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_27_n_0\,
      I1 => \o_uart_buffer[58]_i_28_n_0\,
      I2 => \r_pad2_step__0\(2),
      O => \o_uart_buffer[57]_i_33_n_0\
    );
\o_uart_buffer[57]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4D4D004D00FF4D"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_23_n_0\,
      I1 => \r_pad1_step__0\(2),
      I2 => \o_uart_buffer[58]_i_24_n_0\,
      I3 => \r_pad1_step__0\(3),
      I4 => \o_uart_buffer[58]_i_14_n_0\,
      I5 => \r_pad1_new_pos_reg_n_0_[3]\,
      O => \o_uart_buffer[57]_i_34_n_0\
    );
\o_uart_buffer[57]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[4]\,
      I1 => \o_uart_buffer[58]_i_14_n_0\,
      I2 => \r_pad1_new_pos_reg_n_0_[3]\,
      O => \o_uart_buffer[57]_i_35_n_0\
    );
\o_uart_buffer[57]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^r_old2_pos__0\(4),
      I1 => \o_uart_buffer[58]_i_20_n_0\,
      I2 => \^r_old2_pos__0\(3),
      O => \o_uart_buffer[57]_i_36_n_0\
    );
\o_uart_buffer[57]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEBFEEEE"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(2),
      I2 => r_message_index(3),
      I3 => r_message_index(1),
      I4 => r_message_index(0),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[57]_i_4_n_0\
    );
\o_uart_buffer[57]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC37FC003C373C00"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_10_n_0\,
      I1 => \o_uart_buffer[57]_i_11_n_0\,
      I2 => \o_uart_buffer[57]_i_12_n_0\,
      I3 => \o_uart_buffer[57]_i_13_n_0\,
      I4 => \o_uart_buffer[57]_i_14_n_0\,
      I5 => \o_uart_buffer[57]_i_15_n_0\,
      O => \o_uart_buffer[57]_i_5_n_0\
    );
\o_uart_buffer[57]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F38FF300C38FC300"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_16_n_0\,
      I1 => \o_uart_buffer[57]_i_17_n_0\,
      I2 => \o_uart_buffer[57]_i_18_n_0\,
      I3 => \o_uart_buffer[57]_i_19_n_0\,
      I4 => \o_uart_buffer[57]_i_20_n_0\,
      I5 => \o_uart_buffer[57]_i_21_n_0\,
      O => \o_uart_buffer[57]_i_6_n_0\
    );
\o_uart_buffer[57]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF088"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \o_uart_buffer[57]_i_22_n_0\,
      I2 => \o_uart_buffer[57]_i_2_0\,
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \o_uart_buffer[49]_i_16_n_0\,
      O => \o_uart_buffer[57]_i_7_n_0\
    );
\o_uart_buffer[57]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70507050F050F055"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_24_n_0\,
      I1 => \o_uart_buffer[57]_i_25_n_0\,
      I2 => \o_uart_buffer[57]_i_26_n_0\,
      I3 => \o_uart_buffer[58]_i_9_n_0\,
      I4 => \o_uart_buffer[57]_i_27_n_0\,
      I5 => \o_uart_buffer[57]_i_28_n_0\,
      O => \o_uart_buffer[57]_i_8_n_0\
    );
\o_uart_buffer[57]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3C7C700F0C7C700"
    )
        port map (
      I0 => \o_uart_buffer[57]_i_29_n_0\,
      I1 => \o_uart_buffer[57]_i_30_n_0\,
      I2 => \o_uart_buffer[57]_i_31_n_0\,
      I3 => \o_uart_buffer[57]_i_32_n_0\,
      I4 => \^r_old2_pos__0\(5),
      I5 => \o_uart_buffer[57]_i_33_n_0\,
      O => \o_uart_buffer[57]_i_9_n_0\
    );
\o_uart_buffer[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0D0DFF0D"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_2_n_0\,
      I1 => \o_uart_buffer[58]_i_3_n_0\,
      I2 => \r_pad2_new_pos[5]_i_5_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      I4 => \o_uart_buffer[58]_i_4_n_0\,
      I5 => \o_uart_buffer[74]_i_4_n_0\,
      O => \o_uart_buffer[58]_i_1_n_0\
    );
\o_uart_buffer[58]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDD440000000"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_19_n_0\,
      I1 => \^r_old2_pos__0\(3),
      I2 => \o_uart_buffer[58]_i_20_n_0\,
      I3 => \r_pad2_step__0\(3),
      I4 => \^r_old2_pos__0\(4),
      I5 => \^r_old2_pos__0\(5),
      O => \o_uart_buffer[58]_i_10_n_0\
    );
\o_uart_buffer[58]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_21_n_0\,
      I1 => \r_pad1_step__0\(2),
      I2 => \o_uart_buffer[58]_i_22_n_0\,
      O => \o_uart_buffer[58]_i_11_n_0\
    );
\o_uart_buffer[58]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BBBBBB2222B2BB"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(2),
      I1 => w_Paddle_size(2),
      I2 => \^r_old1_pos_reg[5]_0\(0),
      I3 => w_Paddle_size(0),
      I4 => w_Paddle_size(1),
      I5 => \^r_old1_pos_reg[5]_0\(1),
      O => \o_uart_buffer[58]_i_12_n_0\
    );
\o_uart_buffer[58]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_23_n_0\,
      I1 => \r_pad1_step__0\(2),
      I2 => \o_uart_buffer[58]_i_24_n_0\,
      O => \o_uart_buffer[58]_i_13_n_0\
    );
\o_uart_buffer[58]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BBBBBB2222B2BB"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[2]\,
      I1 => w_Paddle_size(2),
      I2 => \^r_pad1_new_pos_reg[1]_0\(0),
      I3 => w_Paddle_size(0),
      I4 => w_Paddle_size(1),
      I5 => \^r_pad1_new_pos_reg[1]_0\(1),
      O => \o_uart_buffer[58]_i_14_n_0\
    );
\o_uart_buffer[58]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \r_ball_pre_y_reg_n_0_[5]\,
      I1 => \r_ball_pre_y_reg_n_0_[4]\,
      I2 => \r_ball_pre_y_reg_n_0_[3]\,
      O => \o_uart_buffer[58]_i_15_n_0\
    );
\o_uart_buffer[58]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_25_n_0\,
      I1 => \r_pad2_step__0\(2),
      I2 => \o_uart_buffer[58]_i_26_n_0\,
      O => \o_uart_buffer[58]_i_17_n_0\
    );
\o_uart_buffer[58]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAA008AEFFFAAEF"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[2]\,
      I1 => \r_pad2_new_pos_reg_n_0_[0]\,
      I2 => w_Paddle_size(0),
      I3 => w_Paddle_size(1),
      I4 => \r_pad2_new_pos_reg_n_0_[1]\,
      I5 => w_Paddle_size(2),
      O => \o_uart_buffer[58]_i_18_n_0\
    );
\o_uart_buffer[58]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_27_n_0\,
      I1 => \o_uart_buffer[58]_i_28_n_0\,
      I2 => \r_pad2_step__0\(2),
      O => \o_uart_buffer[58]_i_19_n_0\
    );
\o_uart_buffer[58]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55455045"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_5_n_0\,
      I1 => \o_uart_buffer[58]_i_6_n_0\,
      I2 => r_pad1_state(0),
      I3 => r_pad1_state(1),
      I4 => \o_uart_buffer[58]_i_7_n_0\,
      I5 => \o_uart_buffer[58]_i_8_n_0\,
      O => \o_uart_buffer[58]_i_2_n_0\
    );
\o_uart_buffer[58]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2BBBBB2222BB2B"
    )
        port map (
      I0 => \^r_old2_pos__0\(2),
      I1 => w_Paddle_size(2),
      I2 => w_Paddle_size(0),
      I3 => \^r_old2_pos__0\(0),
      I4 => w_Paddle_size(1),
      I5 => \^r_old2_pos__0\(1),
      O => \o_uart_buffer[58]_i_20_n_0\
    );
\o_uart_buffer[58]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009F69F9699FFFF"
    )
        port map (
      I0 => w_Paddle_size(1),
      I1 => \^r_old1_pos_reg[5]_0\(1),
      I2 => \^r_old1_pos_reg[5]_0\(0),
      I3 => w_Paddle_size(0),
      I4 => \r_pad1_step__0\(1),
      I5 => \r_pad1_step__0\(0),
      O => \o_uart_buffer[58]_i_21_n_0\
    );
\o_uart_buffer[58]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B44D444D4BB2B"
    )
        port map (
      I0 => \^r_old1_pos_reg[5]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \^r_old1_pos_reg[5]_0\(0),
      I4 => \^r_old1_pos_reg[5]_0\(2),
      I5 => w_Paddle_size(2),
      O => \o_uart_buffer[58]_i_22_n_0\
    );
\o_uart_buffer[58]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009F69F9699FFFF"
    )
        port map (
      I0 => w_Paddle_size(1),
      I1 => \^r_pad1_new_pos_reg[1]_0\(1),
      I2 => \^r_pad1_new_pos_reg[1]_0\(0),
      I3 => w_Paddle_size(0),
      I4 => \r_pad1_step__0\(1),
      I5 => \r_pad1_step__0\(0),
      O => \o_uart_buffer[58]_i_23_n_0\
    );
\o_uart_buffer[58]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B44D444D4BB2B"
    )
        port map (
      I0 => \^r_pad1_new_pos_reg[1]_0\(1),
      I1 => w_Paddle_size(1),
      I2 => w_Paddle_size(0),
      I3 => \^r_pad1_new_pos_reg[1]_0\(0),
      I4 => \r_pad1_new_pos_reg_n_0_[2]\,
      I5 => w_Paddle_size(2),
      O => \o_uart_buffer[58]_i_24_n_0\
    );
\o_uart_buffer[58]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF0B40F440F4BF0B"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[0]\,
      I1 => w_Paddle_size(0),
      I2 => w_Paddle_size(1),
      I3 => \r_pad2_new_pos_reg_n_0_[1]\,
      I4 => \r_pad2_new_pos_reg_n_0_[2]\,
      I5 => w_Paddle_size(2),
      O => \o_uart_buffer[58]_i_25_n_0\
    );
\o_uart_buffer[58]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF64BB442240000"
    )
        port map (
      I0 => \r_pad2_new_pos_reg_n_0_[0]\,
      I1 => w_Paddle_size(0),
      I2 => \r_pad2_new_pos_reg_n_0_[1]\,
      I3 => w_Paddle_size(1),
      I4 => \r_pad2_step__0\(0),
      I5 => \r_pad2_step__0\(1),
      O => \o_uart_buffer[58]_i_26_n_0\
    );
\o_uart_buffer[58]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009B44BBDDBFFFF"
    )
        port map (
      I0 => \^r_old2_pos__0\(0),
      I1 => w_Paddle_size(0),
      I2 => \^r_old2_pos__0\(1),
      I3 => w_Paddle_size(1),
      I4 => \r_pad2_step__0\(0),
      I5 => \r_pad2_step__0\(1),
      O => \o_uart_buffer[58]_i_27_n_0\
    );
\o_uart_buffer[58]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BB4D444D44B2BB"
    )
        port map (
      I0 => \^r_old2_pos__0\(1),
      I1 => w_Paddle_size(1),
      I2 => \^r_old2_pos__0\(0),
      I3 => w_Paddle_size(0),
      I4 => \^r_old2_pos__0\(2),
      I5 => w_Paddle_size(2),
      O => \o_uart_buffer[58]_i_28_n_0\
    );
\o_uart_buffer[58]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F73333333733333"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_9_n_0\,
      I1 => \r_ball_state_reg[1]_2\,
      I2 => \^r_pad2_state_reg[1]_1\,
      I3 => \^r_pad2_state_reg[0]_0\,
      I4 => \r_pad2_new_pos[5]_i_8_n_0\,
      I5 => \o_uart_buffer[58]_i_10_n_0\,
      O => \o_uart_buffer[58]_i_3_n_0\
    );
\o_uart_buffer[58]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8D73FA2"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[58]_i_4_n_0\
    );
\o_uart_buffer[58]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAE"
    )
        port map (
      I0 => \^r_ball_state_reg[1]_0\(0),
      I1 => CPU_RESETN_IBUF,
      I2 => r_pad1_state(0),
      I3 => r_pad1_state(1),
      I4 => r_ball_state(0),
      O => \o_uart_buffer[58]_i_5_n_0\
    );
\o_uart_buffer[58]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044DDFFFFFFF"
    )
        port map (
      I0 => \r_pad1_step__0\(3),
      I1 => \o_uart_buffer[58]_i_11_n_0\,
      I2 => \^r_old1_pos_reg[5]_0\(3),
      I3 => \o_uart_buffer[58]_i_12_n_0\,
      I4 => \^r_old1_pos_reg[5]_0\(4),
      I5 => \^r_old1_pos_reg[5]_0\(5),
      O => \o_uart_buffer[58]_i_6_n_0\
    );
\o_uart_buffer[58]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044DDFFFFFFF"
    )
        port map (
      I0 => \r_pad1_step__0\(3),
      I1 => \o_uart_buffer[58]_i_13_n_0\,
      I2 => \r_pad1_new_pos_reg_n_0_[3]\,
      I3 => \o_uart_buffer[58]_i_14_n_0\,
      I4 => \r_pad1_new_pos_reg_n_0_[4]\,
      I5 => \r_pad1_new_pos_reg_n_0_[5]\,
      O => \o_uart_buffer[58]_i_7_n_0\
    );
\o_uart_buffer[58]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAEEFE"
    )
        port map (
      I0 => \o_uart_buffer[49]_i_16_n_0\,
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => r_ball_state(0),
      I3 => \o_uart_buffer[58]_i_15_n_0\,
      I4 => \o_uart_buffer[58]_i_2_0\,
      O => \o_uart_buffer[58]_i_8_n_0\
    );
\o_uart_buffer[58]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001177FFFFFFF"
    )
        port map (
      I0 => \o_uart_buffer[58]_i_17_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[3]\,
      I2 => \o_uart_buffer[58]_i_18_n_0\,
      I3 => \r_pad2_step__0\(3),
      I4 => \r_pad2_new_pos_reg_n_0_[4]\,
      I5 => \r_pad2_new_pos_reg_n_0_[5]\,
      O => \o_uart_buffer[58]_i_9_n_0\
    );
\o_uart_buffer[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \o_uart_buffer[59]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_3_n_0\,
      I2 => \o_uart_buffer[74]_i_4_n_0\,
      O => \o_uart_buffer[59]_i_1_n_0\
    );
\o_uart_buffer[59]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFC73878"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(2),
      I3 => r_message_index(1),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[59]_i_2_n_0\
    );
\o_uart_buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0057"
    )
        port map (
      I0 => \^r_pad2_state_reg[1]_0\,
      I1 => \o_uart_buffer[5]_i_3_n_0\,
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => \r_pad2_new_pos[5]_i_5_n_0\,
      I4 => \o_uart_buffer[5]_i_4_n_0\,
      I5 => \o_uart_buffer[5]_i_5_n_0\,
      O => \o_uart_buffer[5]_i_1_n_0\
    );
\o_uart_buffer[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"82AA"
    )
        port map (
      I0 => \r_ball_state_reg[1]_2\,
      I1 => \^r_pad2_state_reg[1]_1\,
      I2 => \^r_pad2_state_reg[0]_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      O => \^r_pad2_state_reg[1]_0\
    );
\o_uart_buffer[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_pad1_state(1),
      I2 => r_pad1_state(0),
      I3 => r_ball_state(0),
      O => \o_uart_buffer[5]_i_3_n_0\
    );
\o_uart_buffer[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D5F2082"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(1),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[5]_i_4_n_0\
    );
\o_uart_buffer[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00070F0FF0000"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[1]\,
      I1 => \r_over_state_reg_n_0_[0]\,
      I2 => \^r_screen_render_state\(1),
      I3 => \^r_screen_render_state\(0),
      I4 => CPU_RESETN_IBUF,
      I5 => \o_uart_buffer_reg[54]_0\,
      O => \o_uart_buffer[5]_i_5_n_0\
    );
\o_uart_buffer[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[60]_i_2_n_0\,
      O => \o_uart_buffer[60]_i_1_n_0\
    );
\o_uart_buffer[60]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EDDE3FFE"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[60]_i_2_n_0\
    );
\o_uart_buffer[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[61]_i_2_n_0\,
      O => \o_uart_buffer[61]_i_1_n_0\
    );
\o_uart_buffer[61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC9403E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[61]_i_2_n_0\
    );
\o_uart_buffer[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \o_uart_buffer[78]_i_3_n_0\,
      I1 => \r_message_index[2]_i_2_n_0\,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => \o_uart_buffer[62]_i_2_n_0\,
      O => \o_uart_buffer[62]_i_1_n_0\
    );
\o_uart_buffer[62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000315E"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(0),
      I4 => r_message_index(2),
      O => \o_uart_buffer[62]_i_2_n_0\
    );
\o_uart_buffer[64]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[73]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[64]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[64]_i_1_n_0\
    );
\o_uart_buffer[64]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F9FD11EA"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[64]_i_2_n_0\
    );
\o_uart_buffer[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[65]_i_2_n_0\,
      O => \o_uart_buffer[65]_i_1_n_0\
    );
\o_uart_buffer[65]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFDF1EA"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[65]_i_2_n_0\
    );
\o_uart_buffer[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \o_uart_buffer[66]_i_2_n_0\,
      I1 => \o_uart_buffer[74]_i_2_n_0\,
      I2 => \o_uart_buffer[66]_i_3_n_0\,
      O => \o_uart_buffer[66]_i_1_n_0\
    );
\o_uart_buffer[66]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCF004000000000"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[1]\,
      I1 => \r_over_state_reg_n_0_[0]\,
      I2 => \o_uart_buffer_reg[54]_0\,
      I3 => \^r_screen_render_state\(0),
      I4 => CPU_RESETN_IBUF,
      I5 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[66]_i_2_n_0\
    );
\o_uart_buffer[66]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001308FA04"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(3),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[66]_i_3_n_0\
    );
\o_uart_buffer[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[67]_i_2_n_0\,
      O => \o_uart_buffer[67]_i_1_n_0\
    );
\o_uart_buffer[67]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8BD11EA"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[67]_i_2_n_0\
    );
\o_uart_buffer[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[68]_i_2_n_0\,
      O => \o_uart_buffer[68]_i_1_n_0\
    );
\o_uart_buffer[68]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA7EDF7E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(2),
      I3 => r_message_index(4),
      I4 => r_message_index(0),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[68]_i_2_n_0\
    );
\o_uart_buffer[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F5DB1EA"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[69]_i_1_n_0\
    );
\o_uart_buffer[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_buffer[6]_i_2_n_0\,
      I2 => \o_uart_buffer[6]_i_3_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[6]_i_1_n_0\
    );
\o_uart_buffer[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044044400000400"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_ball_state_reg[0]_0\,
      I3 => \r_ball_state_reg[1]_2\,
      I4 => \o_uart_buffer[6]_i_4_n_0\,
      I5 => CPU_RESETN_IBUF,
      O => \o_uart_buffer[6]_i_2_n_0\
    );
\o_uart_buffer[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFEFA918"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[6]_i_3_n_0\
    );
\o_uart_buffer[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500001051"
    )
        port map (
      I0 => \o_uart_buffer[51]_i_2_n_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => r_pad1_state(0),
      I3 => r_pad1_state(1),
      I4 => \^r_ball_state_reg[1]_0\(0),
      I5 => r_ball_state(0),
      O => \o_uart_buffer[6]_i_4_n_0\
    );
\o_uart_buffer[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[70]_i_2_n_0\,
      O => \o_uart_buffer[70]_i_1_n_0\
    );
\o_uart_buffer[70]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFBF1EA"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[70]_i_2_n_0\
    );
\o_uart_buffer[72]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[73]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[72]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[72]_i_1_n_0\
    );
\o_uart_buffer[72]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDC9136E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[72]_i_2_n_0\
    );
\o_uart_buffer[73]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \o_uart_buffer[73]_i_2_n_0\,
      I1 => \o_uart_count[3]_i_7_n_0\,
      I2 => \o_uart_buffer[73]_i_3_n_0\,
      I3 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[73]_i_1_n_0\
    );
\o_uart_buffer[73]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCD5CC00000000"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[0]\,
      I1 => CPU_RESETN_IBUF,
      I2 => \r_over_state_reg_n_0_[1]\,
      I3 => \o_uart_buffer_reg[54]_0\,
      I4 => \^r_screen_render_state\(0),
      I5 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[73]_i_2_n_0\
    );
\o_uart_buffer[73]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFB9B6E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[73]_i_3_n_0\
    );
\o_uart_buffer[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \o_uart_buffer[74]_i_2_n_0\,
      I1 => \o_uart_buffer[74]_i_3_n_0\,
      I2 => \o_uart_buffer[74]_i_4_n_0\,
      O => \o_uart_buffer[74]_i_1_n_0\
    );
\o_uart_buffer[74]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => w_TX_ready,
      I1 => \^r_send_pending_reg_0\,
      I2 => CPU_RESETN_IBUF,
      I3 => \^r_screen_render_state\(0),
      I4 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[74]_i_2_n_0\
    );
\o_uart_buffer[74]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000107EAA80"
    )
        port map (
      I0 => r_message_index(2),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(3),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[74]_i_3_n_0\
    );
\o_uart_buffer[74]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCD0CC00000000"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[0]\,
      I1 => CPU_RESETN_IBUF,
      I2 => \r_over_state_reg_n_0_[1]\,
      I3 => \o_uart_buffer_reg[54]_0\,
      I4 => \^r_screen_render_state\(0),
      I5 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[74]_i_4_n_0\
    );
\o_uart_buffer[75]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \o_uart_count[3]_i_4_n_0\,
      I1 => \o_uart_count[3]_i_5_n_0\,
      I2 => \o_uart_buffer[43]_i_2_n_0\,
      I3 => \o_uart_count[3]_i_7_n_0\,
      O => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer[75]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[75]_i_3_n_0\,
      O => \o_uart_buffer[75]_i_2_n_0\
    );
\o_uart_buffer[75]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CD9D136E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[75]_i_3_n_0\
    );
\o_uart_buffer[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000BA"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^r_send_pending_reg_0\,
      I2 => w_TX_ready,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \o_uart_buffer[76]_i_2_n_0\,
      O => \o_uart_buffer[76]_i_1_n_0\
    );
\o_uart_buffer[76]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E87EDB7E"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(3),
      I2 => r_message_index(2),
      I3 => r_message_index(4),
      I4 => r_message_index(0),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[76]_i_2_n_0\
    );
\o_uart_buffer[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015739D6E"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[77]_i_1_n_0\
    );
\o_uart_buffer[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \r_message_index[2]_i_2_n_0\,
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      I3 => \o_uart_buffer[78]_i_2_n_0\,
      I4 => \o_uart_buffer[78]_i_3_n_0\,
      O => \o_uart_buffer[78]_i_1_n_0\
    );
\o_uart_buffer[78]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14120220"
    )
        port map (
      I0 => r_message_index(4),
      I1 => r_message_index(1),
      I2 => r_message_index(3),
      I3 => r_message_index(0),
      I4 => r_message_index(2),
      O => \o_uart_buffer[78]_i_2_n_0\
    );
\o_uart_buffer[78]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCDACC000000CC"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[0]\,
      I1 => CPU_RESETN_IBUF,
      I2 => \r_over_state_reg_n_0_[1]\,
      I3 => \o_uart_buffer_reg[54]_0\,
      I4 => \^r_screen_render_state\(0),
      I5 => \^r_screen_render_state\(1),
      O => \o_uart_buffer[78]_i_3_n_0\
    );
\o_uart_buffer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F1BE52A"
    )
        port map (
      I0 => r_message_index(1),
      I1 => r_message_index(0),
      I2 => r_message_index(3),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[4]_i_2_n_0\,
      O => \o_uart_buffer[8]_i_1_n_0\
    );
\o_uart_buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \o_uart_buffer[53]_i_3_n_0\,
      I1 => \o_uart_buffer[9]_i_2_n_0\,
      I2 => \o_uart_count[3]_i_3_n_0\,
      O => \o_uart_buffer[9]_i_1_n_0\
    );
\o_uart_buffer[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFBEEB2"
    )
        port map (
      I0 => r_message_index(3),
      I1 => r_message_index(1),
      I2 => r_message_index(0),
      I3 => r_message_index(2),
      I4 => r_message_index(4),
      I5 => \r_message_index[2]_i_2_n_0\,
      O => \o_uart_buffer[9]_i_2_n_0\
    );
\o_uart_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[0]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(0),
      R => '0'
    );
\o_uart_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[10]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(9),
      R => '0'
    );
\o_uart_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[11]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(10),
      R => '0'
    );
\o_uart_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[12]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(11),
      R => '0'
    );
\o_uart_buffer_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[13]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(12),
      S => '0'
    );
\o_uart_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[14]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(13),
      R => '0'
    );
\o_uart_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[16]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(14),
      R => '0'
    );
\o_uart_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[17]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(15),
      R => '0'
    );
\o_uart_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[18]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(16),
      R => '0'
    );
\o_uart_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[19]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(17),
      R => '0'
    );
\o_uart_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[1]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(1),
      R => '0'
    );
\o_uart_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[20]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(18),
      R => '0'
    );
\o_uart_buffer_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[21]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(19),
      S => \o_uart_buffer[52]_i_1_n_0\
    );
\o_uart_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[22]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(20),
      R => '0'
    );
\o_uart_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[24]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(21),
      R => '0'
    );
\o_uart_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[25]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(22),
      R => '0'
    );
\o_uart_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[26]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(23),
      R => '0'
    );
\o_uart_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[27]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(24),
      R => '0'
    );
\o_uart_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[28]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(25),
      R => '0'
    );
\o_uart_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[29]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(26),
      R => '0'
    );
\o_uart_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[2]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(2),
      R => '0'
    );
\o_uart_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[30]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(27),
      R => '0'
    );
\o_uart_buffer_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[32]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(28),
      R => '0'
    );
\o_uart_buffer_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[33]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(29),
      R => '0'
    );
\o_uart_buffer_reg[33]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_uart_buffer_reg[33]_i_11_n_0\,
      CO(2 downto 0) => \NLW_o_uart_buffer_reg[33]_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \o_uart_buffer[33]_i_20_n_0\,
      DI(2 downto 1) => B"00",
      DI(0) => \o_uart_buffer[33]_i_21_n_0\,
      O(3 downto 0) => \NLW_o_uart_buffer_reg[33]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_uart_buffer[33]_i_22_n_0\,
      S(2) => \o_uart_buffer[33]_i_23_n_0\,
      S(1) => \o_uart_buffer[33]_i_24_n_0\,
      S(0) => \o_uart_buffer[33]_i_25_n_0\
    );
\o_uart_buffer_reg[33]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_uart_buffer_reg[33]_i_11_n_0\,
      CO(3 downto 1) => \NLW_o_uart_buffer_reg[33]_i_7_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \o_uart_buffer_reg[33]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \o_uart_buffer[33]_i_12_n_0\,
      O(3 downto 0) => \NLW_o_uart_buffer_reg[33]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \o_uart_buffer[33]_i_13_n_0\
    );
\o_uart_buffer_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[34]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(30),
      R => '0'
    );
\o_uart_buffer_reg[35]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[35]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(31),
      S => '0'
    );
\o_uart_buffer_reg[36]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[36]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(32),
      S => \o_uart_buffer[52]_i_1_n_0\
    );
\o_uart_buffer_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[37]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(33),
      R => '0'
    );
\o_uart_buffer_reg[38]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[38]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(34),
      S => '0'
    );
\o_uart_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[3]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(3),
      R => '0'
    );
\o_uart_buffer_reg[40]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[40]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(35),
      S => \o_uart_count[3]_i_1_n_0\
    );
\o_uart_buffer_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[41]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(36),
      R => '0'
    );
\o_uart_buffer_reg[42]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[42]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(37),
      S => '0'
    );
\o_uart_buffer_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[43]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(38),
      R => '0'
    );
\o_uart_buffer_reg[44]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[44]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(39),
      S => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer_reg[45]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[45]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(40),
      S => \o_uart_buffer[52]_i_1_n_0\
    );
\o_uart_buffer_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[46]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(41),
      R => '0'
    );
\o_uart_buffer_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[48]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(42),
      R => '0'
    );
\o_uart_buffer_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[49]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(43),
      R => '0'
    );
\o_uart_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[4]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(4),
      R => '0'
    );
\o_uart_buffer_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[50]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(44),
      R => '0'
    );
\o_uart_buffer_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[51]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(45),
      R => '0'
    );
\o_uart_buffer_reg[52]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[52]_i_2_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(46),
      S => \o_uart_buffer[52]_i_1_n_0\
    );
\o_uart_buffer_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[53]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(47),
      R => '0'
    );
\o_uart_buffer_reg[54]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[54]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(48),
      S => '0'
    );
\o_uart_buffer_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[56]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(49),
      R => '0'
    );
\o_uart_buffer_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[57]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(50),
      R => '0'
    );
\o_uart_buffer_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[58]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(51),
      R => '0'
    );
\o_uart_buffer_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[59]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(52),
      R => '0'
    );
\o_uart_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[5]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(5),
      R => '0'
    );
\o_uart_buffer_reg[60]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[60]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(53),
      S => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer_reg[61]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[61]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(54),
      S => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[62]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(55),
      R => '0'
    );
\o_uart_buffer_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[64]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(56),
      R => '0'
    );
\o_uart_buffer_reg[65]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[65]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(57),
      S => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[66]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(58),
      R => '0'
    );
\o_uart_buffer_reg[67]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[67]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(59),
      S => \o_uart_count[3]_i_1_n_0\
    );
\o_uart_buffer_reg[68]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[68]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(60),
      S => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[69]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(61),
      R => '0'
    );
\o_uart_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[6]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(6),
      R => '0'
    );
\o_uart_buffer_reg[70]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[70]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(62),
      S => \o_uart_count[3]_i_1_n_0\
    );
\o_uart_buffer_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[72]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(63),
      R => '0'
    );
\o_uart_buffer_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[73]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(64),
      R => '0'
    );
\o_uart_buffer_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[74]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(65),
      R => '0'
    );
\o_uart_buffer_reg[75]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[75]_i_2_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(66),
      S => \o_uart_buffer[75]_i_1_n_0\
    );
\o_uart_buffer_reg[76]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[76]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(67),
      S => \o_uart_count[3]_i_1_n_0\
    );
\o_uart_buffer_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[77]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(68),
      R => '0'
    );
\o_uart_buffer_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[78]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(69),
      R => '0'
    );
\o_uart_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[8]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(7),
      R => '0'
    );
\o_uart_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_buffer[9]_i_1_n_0\,
      Q => \o_uart_buffer_reg[78]_0\(8),
      R => '0'
    );
\o_uart_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111000"
    )
        port map (
      I0 => \o_uart_count[3]_i_4_n_0\,
      I1 => \o_uart_count[3]_i_5_n_0\,
      I2 => \^r_screen_render_state\(1),
      I3 => CPU_RESETN_IBUF,
      I4 => \o_uart_count[3]_i_6_n_0\,
      I5 => \o_uart_count[3]_i_7_n_0\,
      O => \o_uart_count[3]_i_1_n_0\
    );
\o_uart_count[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \o_uart_count[3]_i_4_n_0\,
      I1 => \o_uart_count[3]_i_5_n_0\,
      O => \o_uart_count[3]_i_2_n_0\
    );
\o_uart_count[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110010"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      I2 => w_TX_ready,
      I3 => \^r_send_pending_reg_0\,
      I4 => CPU_RESETN_IBUF,
      O => \o_uart_count[3]_i_3_n_0\
    );
\o_uart_count[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888888888888"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \o_uart_buffer_reg[27]_0\,
      I2 => r_ball_state(0),
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => \o_uart_count[3]_i_8_n_0\,
      I5 => \^r_pad2_state_reg[1]_0\,
      O => \o_uart_count[3]_i_4_n_0\
    );
\o_uart_count[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0800000F0FF0000"
    )
        port map (
      I0 => \r_over_state_reg_n_0_[1]\,
      I1 => \r_over_state_reg_n_0_[0]\,
      I2 => \^r_screen_render_state\(1),
      I3 => \^r_screen_render_state\(0),
      I4 => CPU_RESETN_IBUF,
      I5 => \o_uart_buffer_reg[54]_0\,
      O => \o_uart_count[3]_i_5_n_0\
    );
\o_uart_count[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000400040"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      I2 => w_TX_ready,
      I3 => \^r_send_pending_reg_0\,
      I4 => \r_over_state_reg_n_0_[1]\,
      I5 => \r_over_state_reg_n_0_[0]\,
      O => \o_uart_count[3]_i_6_n_0\
    );
\o_uart_count[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_ball_pre_x_reg[0]_0\,
      I2 => r_ball_state(0),
      I3 => \o_uart_count[3]_i_9_n_0\,
      I4 => CPU_RESETN_IBUF,
      I5 => \^r_pad2_state_reg[1]_2\,
      O => \o_uart_count[3]_i_7_n_0\
    );
\o_uart_count[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => r_pad1_state(0),
      I2 => r_pad1_state(1),
      O => \o_uart_count[3]_i_8_n_0\
    );
\o_uart_count[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_pad1_state(1),
      I1 => r_pad1_state(0),
      O => \o_uart_count[3]_i_9_n_0\
    );
\o_uart_count_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_uart_count[3]_i_2_n_0\,
      D => \o_uart_count[3]_i_3_n_0\,
      Q => w_TX_count(0),
      S => \o_uart_count[3]_i_1_n_0\
    );
\r_Pad_chars[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => w_Paddle_size(0),
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      I3 => \r_Pad_chars_reg[3]_0\,
      I4 => CPU_RESETN_IBUF,
      I5 => \r_Pad_chars_reg_n_0_[1]\,
      O => \r_Pad_chars[1]_i_1_n_0\
    );
\r_Pad_chars[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => w_Paddle_size(1),
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      I3 => \r_Pad_chars_reg[3]_0\,
      I4 => CPU_RESETN_IBUF,
      I5 => \r_Pad_chars_reg_n_0_[2]\,
      O => \r_Pad_chars[2]_i_1_n_0\
    );
\r_Pad_chars[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => w_Paddle_size(2),
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      I3 => \r_Pad_chars_reg[3]_0\,
      I4 => CPU_RESETN_IBUF,
      I5 => \r_Pad_chars_reg_n_0_[3]\,
      O => \r_Pad_chars[3]_i_1_n_0\
    );
\r_Pad_chars_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Pad_chars[1]_i_1_n_0\,
      Q => \r_Pad_chars_reg_n_0_[1]\,
      R => '0'
    );
\r_Pad_chars_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Pad_chars[2]_i_1_n_0\,
      Q => \r_Pad_chars_reg_n_0_[2]\,
      R => '0'
    );
\r_Pad_chars_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Pad_chars[3]_i_1_n_0\,
      Q => \r_Pad_chars_reg_n_0_[3]\,
      R => '0'
    );
\r_ball_pre_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[0]_1\,
      Q => \^r_ball_pre_x_reg[2]_0\(0),
      R => '0'
    );
\r_ball_pre_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[1]_0\,
      Q => \^r_ball_pre_x_reg[2]_0\(1),
      R => '0'
    );
\r_ball_pre_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[2]_1\,
      Q => \^r_ball_pre_x_reg[2]_0\(2),
      R => '0'
    );
\r_ball_pre_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[3]_0\,
      Q => r_ball_pre_x(3),
      R => '0'
    );
\r_ball_pre_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[4]_0\,
      Q => r_ball_pre_x(4),
      R => '0'
    );
\r_ball_pre_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[5]_0\,
      Q => r_ball_pre_x(5),
      R => '0'
    );
\r_ball_pre_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[6]_0\,
      Q => r_ball_pre_x(6),
      R => '0'
    );
\r_ball_pre_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_x_reg[7]_0\,
      Q => r_ball_pre_x(7),
      R => '0'
    );
\r_ball_pre_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A000CFFFFFFFF"
    )
        port map (
      I0 => \r_ball_pre_y[5]_i_3_n_0\,
      I1 => r_Game_state(0),
      I2 => r_Game_state(1),
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => CPU_RESETN_IBUF,
      O => r_ball_pre_y(0)
    );
\r_ball_pre_y[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r_send_pending_reg_0\,
      I1 => w_TX_ready,
      I2 => \^r_ball_state_reg[1]_0\(0),
      O => \r_ball_pre_y[5]_i_3_n_0\
    );
\r_ball_pre_y[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F77FFFF"
    )
        port map (
      I0 => \o_uart_buffer_reg[54]_0\,
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => CPU_RESETN_IBUF,
      I3 => \r_ball_pre_x_reg[0]_0\,
      I4 => \r_ball_state[0]_i_3_n_0\,
      I5 => \r_ball_pre_y[5]_i_5_n_0\,
      O => \r_ball_state_reg[1]_1\
    );
\r_ball_pre_y[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      I2 => r_Game_state(1),
      I3 => r_Game_state(0),
      O => \r_ball_pre_y[5]_i_5_n_0\
    );
\r_ball_pre_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_y_reg[0]_1\,
      Q => \^r_ball_pre_y_reg[0]_0\,
      R => '0'
    );
\r_ball_pre_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_y_reg[1]_1\,
      Q => \^r_ball_pre_y_reg[1]_0\,
      R => '0'
    );
\r_ball_pre_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_y_reg[2]_1\,
      Q => \^r_ball_pre_y_reg[2]_0\,
      R => '0'
    );
\r_ball_pre_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_y_reg[3]_0\,
      Q => \r_ball_pre_y_reg_n_0_[3]\,
      R => '0'
    );
\r_ball_pre_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_y_reg[4]_0\,
      Q => \r_ball_pre_y_reg_n_0_[4]\,
      R => '0'
    );
\r_ball_pre_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_ball_pre_y(0),
      D => \r_ball_pre_y_reg[5]_0\,
      Q => \r_ball_pre_y_reg_n_0_[5]\,
      R => '0'
    );
\r_ball_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10CCCCCC10000000"
    )
        port map (
      I0 => \^r_ball_state_reg[1]_0\(0),
      I1 => r_ball_state(0),
      I2 => \r_ball_state[0]_i_2_n_0\,
      I3 => \r_ball_state_reg[1]_2\,
      I4 => \r_ball_state[0]_i_3_n_0\,
      I5 => \r_ball_state_reg[0]_2\,
      O => \r_ball_state[0]_i_1_n_0\
    );
\r_ball_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_ball_state_reg[0]_3\,
      I1 => \r_ball_state[0]_i_6_n_0\,
      I2 => \r_ball_state[0]_i_7_n_0\,
      I3 => \r_ball_state[0]_i_8_n_0\,
      I4 => \r_ball_state_reg[0]_4\,
      O => \r_ball_state[0]_i_2_n_0\
    );
\r_ball_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      O => \r_ball_state[0]_i_3_n_0\
    );
\r_ball_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_ball_pre_x(3),
      I1 => Q(2),
      I2 => Q(4),
      I3 => r_ball_pre_x(5),
      I4 => Q(3),
      I5 => r_ball_pre_x(4),
      O => \r_ball_state[0]_i_6_n_0\
    );
\r_ball_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => r_ball_pre_x(7),
      I1 => Q(6),
      I2 => r_ball_pre_x(6),
      I3 => Q(5),
      O => \r_ball_state[0]_i_7_n_0\
    );
\r_ball_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \r_ball_pre_y_reg_n_0_[3]\,
      I1 => \r_ball_state[0]_i_2_0\(2),
      I2 => \r_ball_state[0]_i_2_0\(3),
      I3 => \r_ball_pre_y_reg_n_0_[4]\,
      I4 => \r_ball_state[0]_i_2_0\(4),
      I5 => \r_ball_pre_y_reg_n_0_[5]\,
      O => \r_ball_state[0]_i_8_n_0\
    );
\r_ball_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      I2 => \r_ball_state_reg[1]_2\,
      I3 => r_ball_state(0),
      I4 => \r_ball_state[1]_i_3_n_0\,
      I5 => \^r_ball_state_reg[1]_0\(0),
      O => \r_ball_state[1]_i_1_n_0\
    );
\r_ball_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000FFFFFFFF"
    )
        port map (
      I0 => \^r_ball_state_reg[1]_0\(0),
      I1 => r_ball_state(0),
      I2 => \r_ball_state[0]_i_2_n_0\,
      I3 => \r_ball_state_reg[1]_2\,
      I4 => \r_ball_state[0]_i_3_n_0\,
      I5 => \r_ball_state_reg[0]_2\,
      O => \r_ball_state[1]_i_3_n_0\
    );
\r_ball_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_ball_state[0]_i_1_n_0\,
      Q => r_ball_state(0),
      R => '0'
    );
\r_ball_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_ball_state[1]_i_1_n_0\,
      Q => \^r_ball_state_reg[1]_0\(0),
      R => '0'
    );
\r_message_index[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F70007070"
    )
        port map (
      I0 => \^r_wait_state\(0),
      I1 => r_message_index(0),
      I2 => \r_message_index[0]_i_3_n_0\,
      I3 => r_Game_state(1),
      I4 => r_Game_state(0),
      I5 => CPU_RESETN_IBUF,
      O => \r_message_index[0]_i_2_n_0\
    );
\r_message_index[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^r_send_pending_reg_0\,
      I1 => w_TX_ready,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      O => \r_message_index[0]_i_3_n_0\
    );
\r_message_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000006"
    )
        port map (
      I0 => r_message_index(0),
      I1 => r_message_index(1),
      I2 => \^r_screen_render_state\(1),
      I3 => \^r_screen_render_state\(0),
      I4 => \r_message_index[2]_i_2_n_0\,
      O => \r_message_index[1]_i_1_n_0\
    );
\r_message_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010101000000"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => \^r_screen_render_state\(0),
      I2 => \r_message_index[2]_i_2_n_0\,
      I3 => r_message_index(1),
      I4 => r_message_index(0),
      I5 => r_message_index(2),
      O => \r_message_index[2]_i_1_n_0\
    );
\r_message_index[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFDFFFF"
    )
        port map (
      I0 => w_TX_ready,
      I1 => \^r_send_pending_reg_0\,
      I2 => r_Game_state(0),
      I3 => r_Game_state(1),
      I4 => \^r_wait_state\(0),
      O => \r_message_index[2]_i_2_n_0\
    );
\r_message_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \r_message_index[4]_i_2_n_0\,
      I1 => r_message_index(0),
      I2 => r_message_index(1),
      I3 => r_message_index(2),
      I4 => r_message_index(3),
      O => \r_message_index[3]_i_1_n_0\
    );
\r_message_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1444444444444444"
    )
        port map (
      I0 => \r_message_index[4]_i_2_n_0\,
      I1 => r_message_index(4),
      I2 => r_message_index(3),
      I3 => r_message_index(0),
      I4 => r_message_index(1),
      I5 => r_message_index(2),
      O => \r_message_index[4]_i_1_n_0\
    );
\r_message_index[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_message_index[2]_i_2_n_0\,
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      O => \r_message_index[4]_i_2_n_0\
    );
\r_message_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_message_index_reg[1]_0\(0),
      D => \r_message_index[0]_i_2_n_0\,
      Q => r_message_index(0),
      R => '0'
    );
\r_message_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_message_index_reg[1]_0\(0),
      D => \r_message_index[1]_i_1_n_0\,
      Q => r_message_index(1),
      R => '0'
    );
\r_message_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_message_index_reg[1]_0\(0),
      D => \r_message_index[2]_i_1_n_0\,
      Q => r_message_index(2),
      R => '0'
    );
\r_message_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_message_index_reg[1]_0\(0),
      D => \r_message_index[3]_i_1_n_0\,
      Q => r_message_index(3),
      R => '0'
    );
\r_message_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_message_index_reg[1]_0\(0),
      D => \r_message_index[4]_i_1_n_0\,
      Q => r_message_index(4),
      R => '0'
    );
\r_old1_pos[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_pad1_new_pos_reg[1]_0\(0),
      I1 => \r_old1_pos[5]_i_3_n_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old1_pos[0]_i_1_n_0\
    );
\r_old1_pos[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_pad1_new_pos_reg[1]_0\(1),
      I1 => \r_old1_pos[5]_i_3_n_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old1_pos[1]_i_1_n_0\
    );
\r_old1_pos[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[2]\,
      I1 => \r_old1_pos[5]_i_3_n_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old1_pos[2]_i_1_n_0\
    );
\r_old1_pos[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[3]\,
      I1 => \r_old1_pos[5]_i_3_n_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old1_pos[3]_i_1_n_0\
    );
\r_old1_pos[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[4]\,
      I1 => \r_old1_pos[5]_i_3_n_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old1_pos[4]_i_1_n_0\
    );
\r_old1_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAFFFFFFFF"
    )
        port map (
      I0 => \r_old1_pos[5]_i_3_n_0\,
      I1 => \^r_screen_render_state\(0),
      I2 => \^r_screen_render_state\(1),
      I3 => r_Game_state(1),
      I4 => r_Game_state(0),
      I5 => CPU_RESETN_IBUF,
      O => \r_old1_pos[5]_i_1_n_0\
    );
\r_old1_pos[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_pad1_new_pos_reg_n_0_[5]\,
      I1 => \r_old1_pos[5]_i_3_n_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old1_pos[5]_i_2_n_0\
    );
\r_old1_pos[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \r_pad1_state[1]_i_2_n_0\,
      I1 => r_pad1_state(0),
      I2 => r_pad1_state(1),
      O => \r_old1_pos[5]_i_3_n_0\
    );
\r_old1_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old1_pos[5]_i_1_n_0\,
      D => \r_old1_pos[0]_i_1_n_0\,
      Q => \^r_old1_pos_reg[5]_0\(0),
      R => '0'
    );
\r_old1_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old1_pos[5]_i_1_n_0\,
      D => \r_old1_pos[1]_i_1_n_0\,
      Q => \^r_old1_pos_reg[5]_0\(1),
      R => '0'
    );
\r_old1_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old1_pos[5]_i_1_n_0\,
      D => \r_old1_pos[2]_i_1_n_0\,
      Q => \^r_old1_pos_reg[5]_0\(2),
      R => '0'
    );
\r_old1_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old1_pos[5]_i_1_n_0\,
      D => \r_old1_pos[3]_i_1_n_0\,
      Q => \^r_old1_pos_reg[5]_0\(3),
      R => '0'
    );
\r_old1_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old1_pos[5]_i_1_n_0\,
      D => \r_old1_pos[4]_i_1_n_0\,
      Q => \^r_old1_pos_reg[5]_0\(4),
      R => '0'
    );
\r_old1_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old1_pos[5]_i_1_n_0\,
      D => \r_old1_pos[5]_i_2_n_0\,
      Q => \^r_old1_pos_reg[5]_0\(5),
      R => '0'
    );
\r_old2_pos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA08000000"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[0]\,
      I2 => \r_old2_pos[5]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => CPU_RESETN_IBUF,
      O => \r_old2_pos[0]_i_1_n_0\
    );
\r_old2_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA08000000"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[1]\,
      I2 => \r_old2_pos[5]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => CPU_RESETN_IBUF,
      O => \r_old2_pos[1]_i_1_n_0\
    );
\r_old2_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA08000000"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[2]\,
      I2 => \r_old2_pos[5]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => CPU_RESETN_IBUF,
      O => \r_old2_pos[2]_i_1_n_0\
    );
\r_old2_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA08000000"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[3]\,
      I2 => \r_old2_pos[5]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => CPU_RESETN_IBUF,
      O => \r_old2_pos[3]_i_1_n_0\
    );
\r_old2_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA08000000"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[4]\,
      I2 => \r_old2_pos[5]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => CPU_RESETN_IBUF,
      O => \r_old2_pos[4]_i_1_n_0\
    );
\r_old2_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA000000A200"
    )
        port map (
      I0 => \r_old2_pos[5]_i_2_n_0\,
      I1 => r_Game_state(0),
      I2 => r_Game_state(1),
      I3 => CPU_RESETN_IBUF,
      I4 => \^r_screen_render_state\(0),
      I5 => \^r_screen_render_state\(1),
      O => \r_old2_pos[5]_i_1_n_0\
    );
\r_old2_pos[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \r_old2_pos[5]_i_4_n_0\,
      I1 => \^r_pad1_state_reg[0]_0\,
      I2 => \r_ball_state_reg[0]_2\,
      O => \r_old2_pos[5]_i_2_n_0\
    );
\r_old2_pos[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAA08000000"
    )
        port map (
      I0 => \r_ball_state[0]_i_3_n_0\,
      I1 => \r_pad2_new_pos_reg_n_0_[5]\,
      I2 => \r_old2_pos[5]_i_4_n_0\,
      I3 => \r_pad2_new_pos[5]_i_8_n_0\,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => CPU_RESETN_IBUF,
      O => \r_old2_pos[5]_i_3_n_0\
    );
\r_old2_pos[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^r_pad2_state_reg[1]_1\,
      I1 => \^r_pad2_state_reg[0]_0\,
      I2 => \r_pad2_state[1]_i_2_n_0\,
      O => \r_old2_pos[5]_i_4_n_0\
    );
\r_old2_pos_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old2_pos[5]_i_2_n_0\,
      D => \r_old2_pos[0]_i_1_n_0\,
      Q => \^r_old2_pos__0\(0),
      S => \r_old2_pos[5]_i_1_n_0\
    );
\r_old2_pos_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old2_pos[5]_i_2_n_0\,
      D => \r_old2_pos[1]_i_1_n_0\,
      Q => \^r_old2_pos__0\(1),
      S => \r_old2_pos[5]_i_1_n_0\
    );
\r_old2_pos_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old2_pos[5]_i_2_n_0\,
      D => \r_old2_pos[2]_i_1_n_0\,
      Q => \^r_old2_pos__0\(2),
      S => \r_old2_pos[5]_i_1_n_0\
    );
\r_old2_pos_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old2_pos[5]_i_2_n_0\,
      D => \r_old2_pos[3]_i_1_n_0\,
      Q => \^r_old2_pos__0\(3),
      S => \r_old2_pos[5]_i_1_n_0\
    );
\r_old2_pos_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old2_pos[5]_i_2_n_0\,
      D => \r_old2_pos[4]_i_1_n_0\,
      Q => \^r_old2_pos__0\(4),
      S => \r_old2_pos[5]_i_1_n_0\
    );
\r_old2_pos_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_old2_pos[5]_i_2_n_0\,
      D => \r_old2_pos[5]_i_3_n_0\,
      Q => \^r_old2_pos__0\(5),
      S => \r_old2_pos[5]_i_1_n_0\
    );
\r_over_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00200000"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => \^r_screen_render_state\(0),
      I2 => w_TX_ready,
      I3 => \^r_send_pending_reg_0\,
      I4 => \r_over_state[1]_i_2_n_0\,
      I5 => \r_over_state_reg_n_0_[0]\,
      O => \r_over_state[0]_i_1_n_0\
    );
\r_over_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF20000000"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => \^r_screen_render_state\(0),
      I2 => \o_uart_buffer_reg[54]_0\,
      I3 => \r_over_state_reg_n_0_[0]\,
      I4 => \r_over_state[1]_i_2_n_0\,
      I5 => \r_over_state_reg_n_0_[1]\,
      O => \r_over_state[1]_i_1_n_0\
    );
\r_over_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFBBBBBBBBBB"
    )
        port map (
      I0 => \o_uart_count[3]_i_6_n_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(1),
      I3 => \^r_screen_render_state\(0),
      I4 => r_Game_state(0),
      I5 => r_Game_state(1),
      O => \r_over_state[1]_i_2_n_0\
    );
\r_over_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_over_state[0]_i_1_n_0\,
      Q => \r_over_state_reg_n_0_[0]\,
      R => '0'
    );
\r_over_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_over_state[1]_i_1_n_0\,
      Q => \r_over_state_reg_n_0_[1]\,
      R => '0'
    );
\r_pad1_new_pos[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => r_pad1_state(0),
      I1 => r_pad1_state(1),
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => r_ball_state(0),
      I4 => \r_ball_state_reg[1]_2\,
      I5 => \r_ball_state[0]_i_3_n_0\,
      O => \^r_pad1_state_reg[0]_0\
    );
\r_pad1_new_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^r_pad1_new_pos_reg[1]_0\(0),
      R => '0'
    );
\r_pad1_new_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^r_pad1_new_pos_reg[1]_0\(1),
      R => '0'
    );
\r_pad1_new_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \r_pad1_new_pos_reg_n_0_[2]\,
      R => '0'
    );
\r_pad1_new_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \r_pad1_new_pos_reg_n_0_[3]\,
      R => '0'
    );
\r_pad1_new_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => \r_pad1_new_pos_reg_n_0_[4]\,
      R => '0'
    );
\r_pad1_new_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \r_pad1_new_pos_reg_n_0_[5]\,
      R => '0'
    );
\r_pad1_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \r_pad1_step_reg[0]_0\,
      I1 => \^r_pad1_state_reg[0]_0\,
      I2 => \r_pad1_state[1]_i_3_n_0\,
      I3 => r_pad1_state(0),
      O => \r_pad1_state[0]_i_1_n_0\
    );
\r_pad1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \r_pad1_state[1]_i_2_n_0\,
      I1 => r_pad1_state(0),
      I2 => \r_pad1_state[1]_i_3_n_0\,
      I3 => r_pad1_state(1),
      O => \r_pad1_state[1]_i_1_n_0\
    );
\r_pad1_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => \r_ball_state_reg[1]_2\,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => \r_pad1_state[1]_i_4_n_0\,
      O => \r_pad1_state[1]_i_2_n_0\
    );
\r_pad1_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF70"
    )
        port map (
      I0 => \r_pad1_step[3]_i_6_n_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \r_pad1_step[3]_i_9_n_0\,
      I3 => \r_pad1_state[1]_i_5_n_0\,
      O => \r_pad1_state[1]_i_3_n_0\
    );
\r_pad1_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \r_pad1_step__0\(3),
      I1 => \r_Pad_chars_reg_n_0_[3]\,
      I2 => \r_pad1_step[3]_i_8_n_0\,
      O => \r_pad1_state[1]_i_4_n_0\
    );
\r_pad1_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0707FF0F"
    )
        port map (
      I0 => \r_ball_state_reg[1]_2\,
      I1 => \r_pad1_step[3]_i_4_n_0\,
      I2 => CPU_RESETN_IBUF,
      I3 => \r_Pad_chars_reg[3]_0\,
      I4 => \^r_screen_render_state\(0),
      I5 => \^r_screen_render_state\(1),
      O => \r_pad1_state[1]_i_5_n_0\
    );
\r_pad1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_pad1_state[0]_i_1_n_0\,
      Q => r_pad1_state(0),
      R => '0'
    );
\r_pad1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_pad1_state[1]_i_1_n_0\,
      Q => r_pad1_state(1),
      R => '0'
    );
\r_pad1_step[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \r_pad1_step__0\(0),
      I1 => \r_pad1_step[3]_i_6_n_0\,
      I2 => \r_pad1_step[3]_i_7_n_0\,
      O => \r_pad1_step[0]_i_1_n_0\
    );
\r_pad1_step[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"60FF"
    )
        port map (
      I0 => \r_pad1_step__0\(1),
      I1 => \r_pad1_step__0\(0),
      I2 => \r_pad1_step[3]_i_6_n_0\,
      I3 => \r_pad1_step[3]_i_7_n_0\,
      O => \r_pad1_step[1]_i_1_n_0\
    );
\r_pad1_step[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A00FFFF"
    )
        port map (
      I0 => \r_pad1_step__0\(2),
      I1 => \r_pad1_step__0\(0),
      I2 => \r_pad1_step__0\(1),
      I3 => \r_pad1_step[3]_i_6_n_0\,
      I4 => \r_pad1_step[3]_i_7_n_0\,
      O => \r_pad1_step[2]_i_1_n_0\
    );
\r_pad1_step[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAA2A"
    )
        port map (
      I0 => \r_pad1_step[3]_i_2_n_0\,
      I1 => \r_ball_state[0]_i_3_n_0\,
      I2 => \r_ball_state_reg[1]_2\,
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => r_ball_state(0),
      I5 => CPU_RESETN_IBUF,
      O => \r_pad1_step[3]_i_1_n_0\
    );
\r_pad1_step[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \^r_screen_render_state\(1),
      I2 => \r_ball_state_reg[1]_2\,
      I3 => \^r_ball_state_reg[1]_0\(0),
      I4 => r_ball_state(0),
      O => \r_pad1_step[3]_i_10_n_0\
    );
\r_pad1_step[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00A800FFFFFFFF"
    )
        port map (
      I0 => \r_pad1_step[3]_i_4_n_0\,
      I1 => \r_pad1_step_reg[0]_0\,
      I2 => r_pad1_state(0),
      I3 => \^r_game_state_reg[1]\,
      I4 => r_pad1_state(1),
      I5 => CPU_RESETN_IBUF,
      O => \r_pad1_step[3]_i_2_n_0\
    );
\r_pad1_step[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA0000FFFFFFFF"
    )
        port map (
      I0 => \r_pad1_step__0\(3),
      I1 => \r_pad1_step__0\(2),
      I2 => \r_pad1_step__0\(1),
      I3 => \r_pad1_step__0\(0),
      I4 => \r_pad1_step[3]_i_6_n_0\,
      I5 => \r_pad1_step[3]_i_7_n_0\,
      O => \r_pad1_step[3]_i_3_n_0\
    );
\r_pad1_step[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      O => \r_pad1_step[3]_i_4_n_0\
    );
\r_pad1_step[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D000000000"
    )
        port map (
      I0 => r_Game_state(1),
      I1 => r_Game_state(0),
      I2 => w_TX_ready,
      I3 => \^r_send_pending_reg_0\,
      I4 => \^r_screen_render_state\(1),
      I5 => \^r_screen_render_state\(0),
      O => \^r_game_state_reg[1]\
    );
\r_pad1_step[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60666660"
    )
        port map (
      I0 => r_pad1_state(0),
      I1 => r_pad1_state(1),
      I2 => \r_pad1_step[3]_i_8_n_0\,
      I3 => \r_Pad_chars_reg_n_0_[3]\,
      I4 => \r_pad1_step__0\(3),
      O => \r_pad1_step[3]_i_6_n_0\
    );
\r_pad1_step[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \r_pad1_step[3]_i_9_n_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => r_pad1_state(1),
      I3 => r_pad1_state(0),
      O => \r_pad1_step[3]_i_7_n_0\
    );
\r_pad1_step[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \r_pad1_step__0\(0),
      I1 => \r_Pad_chars_reg_n_0_[2]\,
      I2 => \r_pad1_step__0\(2),
      I3 => \r_Pad_chars_reg_n_0_[1]\,
      I4 => \r_pad1_step__0\(1),
      O => \r_pad1_step[3]_i_8_n_0\
    );
\r_pad1_step[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \r_pad1_step[3]_i_10_n_0\,
      I1 => \r_pad1_step_reg[0]_0\,
      I2 => r_pad1_state(0),
      I3 => r_pad1_state(1),
      I4 => CPU_RESETN_IBUF,
      O => \r_pad1_step[3]_i_9_n_0\
    );
\r_pad1_step_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad1_step[3]_i_2_n_0\,
      D => \r_pad1_step[0]_i_1_n_0\,
      Q => \r_pad1_step__0\(0),
      R => \r_pad1_step[3]_i_1_n_0\
    );
\r_pad1_step_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad1_step[3]_i_2_n_0\,
      D => \r_pad1_step[1]_i_1_n_0\,
      Q => \r_pad1_step__0\(1),
      R => \r_pad1_step[3]_i_1_n_0\
    );
\r_pad1_step_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad1_step[3]_i_2_n_0\,
      D => \r_pad1_step[2]_i_1_n_0\,
      Q => \r_pad1_step__0\(2),
      R => \r_pad1_step[3]_i_1_n_0\
    );
\r_pad1_step_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad1_step[3]_i_2_n_0\,
      D => \r_pad1_step[3]_i_3_n_0\,
      Q => \r_pad1_step__0\(3),
      R => \r_pad1_step[3]_i_1_n_0\
    );
\r_pad2_new_pos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404055555555"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_state_reg[0]_1\,
      I4 => \r_pad2_new_pos_reg[5]_1\(0),
      I5 => \r_pad2_new_pos[5]_i_6_n_0\,
      O => \r_pad2_new_pos[0]_i_1_n_0\
    );
\r_pad2_new_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404055555555"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_state_reg[0]_1\,
      I4 => \r_pad2_new_pos_reg[5]_1\(1),
      I5 => \r_pad2_new_pos[5]_i_6_n_0\,
      O => \r_pad2_new_pos[1]_i_1_n_0\
    );
\r_pad2_new_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404055555555"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_state_reg[0]_1\,
      I4 => \r_pad2_new_pos_reg[5]_1\(2),
      I5 => \r_pad2_new_pos[5]_i_6_n_0\,
      O => \r_pad2_new_pos[2]_i_1_n_0\
    );
\r_pad2_new_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404055555555"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_state_reg[0]_1\,
      I4 => \r_pad2_new_pos_reg[5]_1\(3),
      I5 => \r_pad2_new_pos[5]_i_6_n_0\,
      O => \r_pad2_new_pos[3]_i_1_n_0\
    );
\r_pad2_new_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404055555555"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_state_reg[0]_1\,
      I4 => \r_pad2_new_pos_reg[5]_1\(4),
      I5 => \r_pad2_new_pos[5]_i_6_n_0\,
      O => \r_pad2_new_pos[4]_i_1_n_0\
    );
\r_pad2_new_pos[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400040"
    )
        port map (
      I0 => \r_pad2_state_reg[0]_1\,
      I1 => \^r_pad1_state_reg[0]_0\,
      I2 => CPU_RESETN_IBUF,
      I3 => \^r_screen_render_state\(0),
      I4 => \^r_screen_render_state\(1),
      O => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_new_pos[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155515111111111"
    )
        port map (
      I0 => \r_pad2_new_pos[5]_i_5_n_0\,
      I1 => \r_pad2_new_pos[5]_i_6_n_0\,
      I2 => \r_pad2_new_pos_reg[5]_0\,
      I3 => \r_pad2_state_reg[0]_1\,
      I4 => \r_pad2_new_pos_reg[5]_1\(5),
      I5 => \r_pad2_new_pos[5]_i_8_n_0\,
      O => \r_pad2_new_pos[5]_i_3_n_0\
    );
\r_pad2_new_pos[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7377777773777377"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \r_ball_state[0]_i_3_n_0\,
      I2 => \^r_send_pending_reg_0\,
      I3 => w_TX_ready,
      I4 => r_Game_state(0),
      I5 => r_Game_state(1),
      O => \r_pad2_new_pos[5]_i_5_n_0\
    );
\r_pad2_new_pos[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => \r_ball_state_reg[1]_2\,
      I1 => \r_pad2_new_pos[5]_i_8_n_0\,
      I2 => \^r_pad2_state_reg[1]_1\,
      I3 => \^r_pad2_state_reg[0]_0\,
      I4 => CPU_RESETN_IBUF,
      O => \r_pad2_new_pos[5]_i_6_n_0\
    );
\r_pad2_new_pos[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_pad1_state(0),
      I1 => r_pad1_state(1),
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => r_ball_state(0),
      O => \r_pad2_new_pos[5]_i_8_n_0\
    );
\r_pad2_new_pos_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_new_pos_reg[0]_0\,
      D => \r_pad2_new_pos[0]_i_1_n_0\,
      Q => \r_pad2_new_pos_reg_n_0_[0]\,
      S => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_new_pos_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_new_pos_reg[0]_0\,
      D => \r_pad2_new_pos[1]_i_1_n_0\,
      Q => \r_pad2_new_pos_reg_n_0_[1]\,
      S => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_new_pos_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_new_pos_reg[0]_0\,
      D => \r_pad2_new_pos[2]_i_1_n_0\,
      Q => \r_pad2_new_pos_reg_n_0_[2]\,
      S => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_new_pos_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_new_pos_reg[0]_0\,
      D => \r_pad2_new_pos[3]_i_1_n_0\,
      Q => \r_pad2_new_pos_reg_n_0_[3]\,
      S => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_new_pos_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_new_pos_reg[0]_0\,
      D => \r_pad2_new_pos[4]_i_1_n_0\,
      Q => \r_pad2_new_pos_reg_n_0_[4]\,
      S => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_new_pos_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_new_pos_reg[0]_0\,
      D => \r_pad2_new_pos[5]_i_3_n_0\,
      Q => \r_pad2_new_pos_reg_n_0_[5]\,
      S => \r_pad2_new_pos[5]_i_1_n_0\
    );
\r_pad2_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^r_pad1_state_reg[0]_0\,
      I1 => \r_pad2_state_reg[0]_1\,
      I2 => \r_pad2_state[1]_i_3_n_0\,
      I3 => \^r_pad2_state_reg[0]_0\,
      O => \r_pad2_state[0]_i_1_n_0\
    );
\r_pad2_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF2000"
    )
        port map (
      I0 => \^r_pad1_state_reg[0]_0\,
      I1 => \r_pad2_state[1]_i_2_n_0\,
      I2 => \^r_pad2_state_reg[0]_0\,
      I3 => \r_pad2_state[1]_i_3_n_0\,
      I4 => \^r_pad2_state_reg[1]_1\,
      O => \r_pad2_state[1]_i_1_n_0\
    );
\r_pad2_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \r_pad2_step__0\(3),
      I1 => \r_Pad_chars_reg_n_0_[3]\,
      I2 => \r_pad2_state[1]_i_4_n_0\,
      O => \r_pad2_state[1]_i_2_n_0\
    );
\r_pad2_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBAAAABFBBAAAA"
    )
        port map (
      I0 => \r_pad2_state[1]_i_5_n_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \r_pad2_step[3]_i_5_n_0\,
      I3 => \r_pad2_state[1]_i_6_n_0\,
      I4 => \r_ball_state[0]_i_3_n_0\,
      I5 => \r_pad2_new_pos_reg[5]_0\,
      O => \r_pad2_state[1]_i_3_n_0\
    );
\r_pad2_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \r_pad2_step__0\(0),
      I1 => \r_Pad_chars_reg_n_0_[2]\,
      I2 => \r_pad2_step__0\(2),
      I3 => \r_Pad_chars_reg_n_0_[1]\,
      I4 => \r_pad2_step__0\(1),
      O => \r_pad2_state[1]_i_4_n_0\
    );
\r_pad2_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010BBBB"
    )
        port map (
      I0 => \^r_screen_render_state\(1),
      I1 => \^r_screen_render_state\(0),
      I2 => r_Game_state(0),
      I3 => r_Game_state(1),
      I4 => CPU_RESETN_IBUF,
      O => \r_pad2_state[1]_i_5_n_0\
    );
\r_pad2_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \r_ball_state_reg[1]_2\,
      I1 => r_ball_state(0),
      I2 => \^r_ball_state_reg[1]_0\(0),
      I3 => r_pad1_state(1),
      I4 => r_pad1_state(0),
      O => \r_pad2_state[1]_i_6_n_0\
    );
\r_pad2_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_pad2_state[0]_i_1_n_0\,
      Q => \^r_pad2_state_reg[0]_0\,
      R => '0'
    );
\r_pad2_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_pad2_state[1]_i_1_n_0\,
      Q => \^r_pad2_state_reg[1]_1\,
      R => '0'
    );
\r_pad2_step[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_pad2_step[3]_i_5_n_0\,
      I1 => \^r_pad1_state_reg[0]_0\,
      I2 => \r_pad2_step__0\(0),
      O => \r_pad2_step[0]_i_1_n_0\
    );
\r_pad2_step[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \r_pad2_step[3]_i_5_n_0\,
      I1 => \^r_pad1_state_reg[0]_0\,
      I2 => \r_pad2_step__0\(1),
      I3 => \r_pad2_step__0\(0),
      O => \r_pad2_step[1]_i_1_n_0\
    );
\r_pad2_step[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBFFFFBBBB0000"
    )
        port map (
      I0 => \r_pad2_new_pos_reg[5]_0\,
      I1 => \r_pad2_step[2]_i_2_n_0\,
      I2 => \^r_pad2_state_reg[1]_1\,
      I3 => \^r_pad2_state_reg[0]_0\,
      I4 => \^r_pad1_state_reg[0]_0\,
      I5 => CPU_RESETN_IBUF,
      O => \r_pad2_step[2]_i_1_n_0\
    );
\r_pad2_step[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D57F"
    )
        port map (
      I0 => \r_pad2_step[3]_i_5_n_0\,
      I1 => \r_pad2_step__0\(1),
      I2 => \r_pad2_step__0\(0),
      I3 => \r_pad2_step__0\(2),
      O => \r_pad2_step[2]_i_2_n_0\
    );
\r_pad2_step[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0F0D0FFFFFFFF"
    )
        port map (
      I0 => \r_pad2_step_reg[0]_0\,
      I1 => \r_pad2_step_reg[0]_1\,
      I2 => \^r_pad1_state_reg[0]_0\,
      I3 => \^r_pad2_state_reg[0]_0\,
      I4 => \^r_pad2_state_reg[1]_1\,
      I5 => CPU_RESETN_IBUF,
      O => \r_pad2_step[3]_i_1_n_0\
    );
\r_pad2_step[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880808080808080"
    )
        port map (
      I0 => \r_pad2_step[3]_i_5_n_0\,
      I1 => \^r_pad1_state_reg[0]_0\,
      I2 => \r_pad2_step__0\(3),
      I3 => \r_pad2_step__0\(2),
      I4 => \r_pad2_step__0\(1),
      I5 => \r_pad2_step__0\(0),
      O => \r_pad2_step[3]_i_2_n_0\
    );
\r_pad2_step[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \r_pad2_state[1]_i_2_n_0\,
      I1 => \^r_pad2_state_reg[0]_0\,
      I2 => \^r_pad2_state_reg[1]_1\,
      O => \r_pad2_step[3]_i_5_n_0\
    );
\r_pad2_step_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_step[3]_i_1_n_0\,
      D => \r_pad2_step[0]_i_1_n_0\,
      Q => \r_pad2_step__0\(0),
      R => '0'
    );
\r_pad2_step_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_step[3]_i_1_n_0\,
      D => \r_pad2_step[1]_i_1_n_0\,
      Q => \r_pad2_step__0\(1),
      R => '0'
    );
\r_pad2_step_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_step[3]_i_1_n_0\,
      D => \r_pad2_step[2]_i_1_n_0\,
      Q => \r_pad2_step__0\(2),
      R => '0'
    );
\r_pad2_step_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_pad2_step[3]_i_1_n_0\,
      D => \r_pad2_step[3]_i_2_n_0\,
      Q => \r_pad2_step__0\(3),
      R => '0'
    );
\r_screen_render_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF04000000"
    )
        port map (
      I0 => r_Game_state(1),
      I1 => r_Game_state(0),
      I2 => \^r_screen_render_state\(1),
      I3 => \o_uart_buffer_reg[54]_0\,
      I4 => \r_screen_render_state[1]_i_2_n_0\,
      I5 => \^r_screen_render_state\(0),
      O => \r_screen_render_state[0]_i_1_n_0\
    );
\r_screen_render_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF2000"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => r_Game_state(0),
      I2 => r_Game_state(1),
      I3 => \r_screen_render_state[1]_i_2_n_0\,
      I4 => \^r_screen_render_state\(1),
      O => \r_screen_render_state[1]_i_1_n_0\
    );
\r_screen_render_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => \^r_screen_render_state\(0),
      I1 => \r_screen_render_state[1]_i_3_n_0\,
      I2 => \^r_screen_render_state\(1),
      I3 => \r_screen_render_state[1]_i_4_n_0\,
      O => \r_screen_render_state[1]_i_2_n_0\
    );
\r_screen_render_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^r_send_pending_reg_0\,
      I1 => w_TX_ready,
      I2 => r_Game_state(0),
      I3 => r_Game_state(1),
      I4 => \r_over_state_reg_n_0_[1]\,
      I5 => \r_over_state_reg_n_0_[0]\,
      O => \r_screen_render_state[1]_i_3_n_0\
    );
\r_screen_render_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333F3F3333B3333"
    )
        port map (
      I0 => \o_uart_buffer_reg[54]_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_screen_render_state\(0),
      I3 => \^r_screen_render_state\(1),
      I4 => r_Game_state(0),
      I5 => r_Game_state(1),
      O => \r_screen_render_state[1]_i_4_n_0\
    );
\r_screen_render_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_screen_render_state[0]_i_1_n_0\,
      Q => \^r_screen_render_state\(0),
      R => '0'
    );
\r_screen_render_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_screen_render_state[1]_i_1_n_0\,
      Q => \^r_screen_render_state\(1),
      R => '0'
    );
r_send_pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FFF9"
    )
        port map (
      I0 => \^r_pad2_state_reg[1]_1\,
      I1 => \^r_pad2_state_reg[0]_0\,
      I2 => r_pad1_state(0),
      I3 => r_pad1_state(1),
      I4 => \^r_ball_state_reg[1]_0\(0),
      I5 => r_ball_state(0),
      O => \^r_pad2_state_reg[1]_2\
    );
r_send_pending_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF6FFF6F6F6F6"
    )
        port map (
      I0 => r_pad1_state(1),
      I1 => r_pad1_state(0),
      I2 => r_ball_state(0),
      I3 => \^r_send_pending_reg_0\,
      I4 => w_TX_ready,
      I5 => CPU_RESETN_IBUF,
      O => \r_pad1_state_reg[1]_0\
    );
r_send_pending_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD000D0D4"
    )
        port map (
      I0 => \^r_send_pending_reg_0\,
      I1 => w_TX_ready,
      I2 => CPU_RESETN_IBUF,
      I3 => \^r_screen_render_state\(1),
      I4 => \^r_screen_render_state\(0),
      I5 => r_send_pending_i_6_n_0,
      O => r_send_pending_reg_1
    );
r_send_pending_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEFFEFFFEF"
    )
        port map (
      I0 => \r_message_index[0]_i_3_n_0\,
      I1 => \o_uart_count[3]_i_6_n_0\,
      I2 => \r_ball_state[0]_i_3_n_0\,
      I3 => r_send_pending_i_7_n_0,
      I4 => \r_ball_state_reg[1]_2\,
      I5 => r_send_pending_reg_4,
      O => r_send_pending_reg_2
    );
r_send_pending_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAAAAAAAAAA"
    )
        port map (
      I0 => \o_uart_count[3]_i_6_n_0\,
      I1 => \r_ball_state_reg[1]_2\,
      I2 => \^r_send_pending_reg_0\,
      I3 => w_TX_ready,
      I4 => CPU_RESETN_IBUF,
      I5 => \r_ball_state[0]_i_3_n_0\,
      O => r_send_pending_i_6_n_0
    );
r_send_pending_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => r_ball_state(0),
      I1 => \^r_ball_state_reg[1]_0\(0),
      I2 => CPU_RESETN_IBUF,
      I3 => r_pad1_state(0),
      I4 => r_pad1_state(1),
      I5 => \^r_pad2_state_reg[1]_0\,
      O => r_send_pending_i_7_n_0
    );
r_send_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_send_pending_reg_3,
      Q => \^r_send_pending_reg_0\,
      R => '0'
    );
\r_wait_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_wait_state_reg[0]_0\,
      Q => \^r_wait_state\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity receive_uart is
  port (
    w_New_key : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Received_byte_reg[4]_0\ : out STD_LOGIC;
    \o_Received_byte_reg[4]_1\ : out STD_LOGIC;
    \o_Received_byte_reg[3]_0\ : out STD_LOGIC;
    \o_Received_byte_reg[3]_1\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Received_byte_reg[2]_0\ : out STD_LOGIC;
    \o_Received_byte_reg[2]_1\ : out STD_LOGIC;
    \o_Received_byte_reg[4]_2\ : out STD_LOGIC;
    \o_Received_byte_reg[4]_3\ : out STD_LOGIC;
    \o_Received_byte_reg[0]_0\ : out STD_LOGIC;
    UART_TXD_IN_IBUF : in STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    o_Received_new_byte_reg_0 : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p2_paddle_pos_reg[3]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_1\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_2\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_3\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_4\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p1_paddle_pos_reg[3]_1\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_2\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_3\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_4\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_5\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_6\ : in STD_LOGIC
  );
end receive_uart;

architecture STRUCTURE of receive_uart is
  signal \FSM_sequential_r_RX_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_RX_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_RX_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_RX_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_RX_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_RX_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_RX_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \o_Received_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \^o_received_byte_reg[2]_0\ : STD_LOGIC;
  signal \^o_received_byte_reg[2]_1\ : STD_LOGIC;
  signal \^o_received_byte_reg[3]_0\ : STD_LOGIC;
  signal \^o_received_byte_reg[3]_1\ : STD_LOGIC;
  signal \^o_received_byte_reg[4]_0\ : STD_LOGIC;
  signal \^o_received_byte_reg[4]_1\ : STD_LOGIC;
  signal \^o_received_byte_reg[4]_2\ : STD_LOGIC;
  signal \^o_received_byte_reg[4]_3\ : STD_LOGIC;
  signal r_Bit_index : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_Bit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[2]\ : STD_LOGIC;
  signal r_Half_RX_sync : STD_LOGIC;
  signal r_RX_character : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_RX_character[7]_i_1_n_0\ : STD_LOGIC;
  signal r_RX_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_RX_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_RX_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_RX_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal r_RX_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_RX_sync : STD_LOGIC;
  signal \^w_new_key\ : STD_LOGIC;
  signal w_Received_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_RX_state_reg[0]\ : label is "idle:00,starting:01,receive_data:10,stop:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_RX_state_reg[1]\ : label is "idle:00,starting:01,receive_data:10,stop:11";
begin
  \o_Received_byte_reg[2]_0\ <= \^o_received_byte_reg[2]_0\;
  \o_Received_byte_reg[2]_1\ <= \^o_received_byte_reg[2]_1\;
  \o_Received_byte_reg[3]_0\ <= \^o_received_byte_reg[3]_0\;
  \o_Received_byte_reg[3]_1\ <= \^o_received_byte_reg[3]_1\;
  \o_Received_byte_reg[4]_0\ <= \^o_received_byte_reg[4]_0\;
  \o_Received_byte_reg[4]_1\ <= \^o_received_byte_reg[4]_1\;
  \o_Received_byte_reg[4]_2\ <= \^o_received_byte_reg[4]_2\;
  \o_Received_byte_reg[4]_3\ <= \^o_received_byte_reg[4]_3\;
  w_New_key <= \^w_new_key\;
\FSM_sequential_r_RX_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F55F0330F550033"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => r_RX_state(1),
      I4 => r_RX_state(0),
      I5 => \FSM_sequential_r_RX_state[0]_i_2_n_0\,
      O => \FSM_sequential_r_RX_state[0]_i_1_n_0\
    );
\FSM_sequential_r_RX_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_Bit_index_reg_n_0_[1]\,
      I1 => \r_Bit_index_reg_n_0_[2]\,
      I2 => \r_Bit_index_reg_n_0_[0]\,
      O => \FSM_sequential_r_RX_state[0]_i_2_n_0\
    );
\FSM_sequential_r_RX_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3AF0"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I2 => r_RX_state(1),
      I3 => r_RX_state(0),
      O => \FSM_sequential_r_RX_state[1]_i_1_n_0\
    );
\FSM_sequential_r_RX_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[9]\,
      I1 => \r_RX_cnt_reg_n_0_[8]\,
      I2 => \FSM_sequential_r_RX_state[1]_i_5_n_0\,
      I3 => \r_RX_cnt_reg_n_0_[7]\,
      O => \FSM_sequential_r_RX_state[1]_i_3_n_0\
    );
\FSM_sequential_r_RX_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[8]\,
      I1 => \FSM_sequential_r_RX_state[1]_i_6_n_0\,
      I2 => \r_RX_cnt_reg_n_0_[9]\,
      O => \FSM_sequential_r_RX_state[1]_i_4_n_0\
    );
\FSM_sequential_r_RX_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[6]\,
      I1 => \r_RX_cnt_reg_n_0_[5]\,
      I2 => \r_RX_cnt_reg_n_0_[3]\,
      I3 => \r_RX_cnt_reg_n_0_[1]\,
      I4 => \r_RX_cnt_reg_n_0_[2]\,
      I5 => \r_RX_cnt_reg_n_0_[4]\,
      O => \FSM_sequential_r_RX_state[1]_i_5_n_0\
    );
\FSM_sequential_r_RX_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[7]\,
      I1 => \r_RX_cnt_reg_n_0_[6]\,
      I2 => \r_RX_cnt_reg_n_0_[4]\,
      I3 => \r_RX_cnt_reg_n_0_[2]\,
      I4 => \r_RX_cnt_reg_n_0_[3]\,
      I5 => \r_RX_cnt_reg_n_0_[5]\,
      O => \FSM_sequential_r_RX_state[1]_i_6_n_0\
    );
\FSM_sequential_r_RX_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => o_Received_new_byte_reg_0,
      D => \FSM_sequential_r_RX_state[0]_i_1_n_0\,
      Q => r_RX_state(0)
    );
\FSM_sequential_r_RX_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => o_Received_new_byte_reg_0,
      D => \FSM_sequential_r_RX_state[1]_i_1_n_0\,
      Q => r_RX_state(1)
    );
\o_Received_byte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_RX_state(1),
      I1 => r_RX_state(0),
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      O => \o_Received_byte[7]_i_1_n_0\
    );
\o_Received_byte_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(0),
      Q => w_Received_byte(0)
    );
\o_Received_byte_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(1),
      Q => w_Received_byte(1)
    );
\o_Received_byte_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(2),
      Q => w_Received_byte(2)
    );
\o_Received_byte_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(3),
      Q => w_Received_byte(3)
    );
\o_Received_byte_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(4),
      Q => w_Received_byte(4)
    );
\o_Received_byte_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(5),
      Q => w_Received_byte(5)
    );
\o_Received_byte_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(6),
      Q => w_Received_byte(6)
    );
\o_Received_byte_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \o_Received_byte[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(7),
      Q => w_Received_byte(7)
    );
o_Received_new_byte_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => o_Received_new_byte_reg_0,
      D => \o_Received_byte[7]_i_1_n_0\,
      Q => \^w_new_key\
    );
\r_Bit_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C7F73000"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_state(0),
      I2 => r_RX_state(1),
      I3 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I4 => \r_Bit_index_reg_n_0_[0]\,
      O => \r_Bit_index[0]_i_1_n_0\
    );
\r_Bit_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F53FFF3F0A000000"
    )
        port map (
      I0 => \r_Bit_index_reg_n_0_[0]\,
      I1 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I2 => r_RX_state(0),
      I3 => r_RX_state(1),
      I4 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I5 => \r_Bit_index_reg_n_0_[1]\,
      O => \r_Bit_index[1]_i_1_n_0\
    );
\r_Bit_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => r_RX_state(1),
      I1 => \r_Bit_index_reg_n_0_[1]\,
      I2 => \r_Bit_index_reg_n_0_[0]\,
      I3 => r_Bit_index(0),
      I4 => \r_Bit_index_reg_n_0_[2]\,
      O => \r_Bit_index[2]_i_1_n_0\
    );
\r_Bit_index[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_state(0),
      I2 => r_RX_state(1),
      I3 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      O => r_Bit_index(0)
    );
\r_Bit_index_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => o_Received_new_byte_reg_0,
      D => \r_Bit_index[0]_i_1_n_0\,
      Q => \r_Bit_index_reg_n_0_[0]\
    );
\r_Bit_index_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => o_Received_new_byte_reg_0,
      D => \r_Bit_index[1]_i_1_n_0\,
      Q => \r_Bit_index_reg_n_0_[1]\
    );
\r_Bit_index_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => o_Received_new_byte_reg_0,
      D => \r_Bit_index[2]_i_1_n_0\,
      Q => \r_Bit_index_reg_n_0_[2]\
    );
r_Half_RX_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => UART_TXD_IN_IBUF,
      Q => r_Half_RX_sync,
      R => '0'
    );
\r_RX_character[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I1 => r_RX_state(1),
      I2 => r_RX_state(0),
      O => \r_RX_character[7]_i_1_n_0\
    );
\r_RX_character_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(1),
      Q => r_RX_character(0)
    );
\r_RX_character_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(2),
      Q => r_RX_character(1)
    );
\r_RX_character_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(3),
      Q => r_RX_character(2)
    );
\r_RX_character_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(4),
      Q => r_RX_character(3)
    );
\r_RX_character_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(5),
      Q => r_RX_character(4)
    );
\r_RX_character_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(6),
      Q => r_RX_character(5)
    );
\r_RX_character_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_character(7),
      Q => r_RX_character(6)
    );
\r_RX_character_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_RX_character[7]_i_1_n_0\,
      CLR => o_Received_new_byte_reg_0,
      D => r_RX_sync,
      Q => r_RX_character(7)
    );
\r_RX_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0505000FCCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \r_RX_cnt_reg_n_0_[0]\,
      I3 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[0]_i_1_n_0\
    );
\r_RX_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[1]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[1]_i_1_n_0\
    );
\r_RX_cnt[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[0]\,
      I1 => \r_RX_cnt_reg_n_0_[1]\,
      O => \r_RX_cnt[1]_i_2_n_0\
    );
\r_RX_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[2]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[2]_i_1_n_0\
    );
\r_RX_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[0]\,
      I1 => \r_RX_cnt_reg_n_0_[1]\,
      I2 => \r_RX_cnt_reg_n_0_[2]\,
      O => \r_RX_cnt[2]_i_2_n_0\
    );
\r_RX_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[3]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[3]_i_1_n_0\
    );
\r_RX_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[1]\,
      I1 => \r_RX_cnt_reg_n_0_[0]\,
      I2 => \r_RX_cnt_reg_n_0_[2]\,
      I3 => \r_RX_cnt_reg_n_0_[3]\,
      O => \r_RX_cnt[3]_i_2_n_0\
    );
\r_RX_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[4]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[4]_i_1_n_0\
    );
\r_RX_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[2]\,
      I1 => \r_RX_cnt_reg_n_0_[0]\,
      I2 => \r_RX_cnt_reg_n_0_[1]\,
      I3 => \r_RX_cnt_reg_n_0_[3]\,
      I4 => \r_RX_cnt_reg_n_0_[4]\,
      O => \r_RX_cnt[4]_i_2_n_0\
    );
\r_RX_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[5]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[5]_i_1_n_0\
    );
\r_RX_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[3]\,
      I1 => \r_RX_cnt_reg_n_0_[1]\,
      I2 => \r_RX_cnt_reg_n_0_[0]\,
      I3 => \r_RX_cnt_reg_n_0_[2]\,
      I4 => \r_RX_cnt_reg_n_0_[4]\,
      I5 => \r_RX_cnt_reg_n_0_[5]\,
      O => \r_RX_cnt[5]_i_2_n_0\
    );
\r_RX_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[6]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[6]_i_1_n_0\
    );
\r_RX_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_RX_cnt[9]_i_4_n_0\,
      I1 => \r_RX_cnt_reg_n_0_[6]\,
      O => \r_RX_cnt[6]_i_2_n_0\
    );
\r_RX_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[7]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[7]_i_1_n_0\
    );
\r_RX_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_RX_cnt[9]_i_4_n_0\,
      I1 => \r_RX_cnt_reg_n_0_[6]\,
      I2 => \r_RX_cnt_reg_n_0_[7]\,
      O => \r_RX_cnt[7]_i_2_n_0\
    );
\r_RX_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[8]_i_2_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[8]_i_1_n_0\
    );
\r_RX_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[6]\,
      I1 => \r_RX_cnt[9]_i_4_n_0\,
      I2 => \r_RX_cnt_reg_n_0_[7]\,
      I3 => \r_RX_cnt_reg_n_0_[8]\,
      O => \r_RX_cnt[8]_i_2_n_0\
    );
\r_RX_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => r_RX_state(1),
      I1 => r_RX_sync,
      I2 => r_RX_state(0),
      O => r_RX_cnt(0)
    );
\r_RX_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055000F00CCCC"
    )
        port map (
      I0 => \FSM_sequential_r_RX_state[1]_i_3_n_0\,
      I1 => r_RX_sync,
      I2 => \FSM_sequential_r_RX_state[1]_i_4_n_0\,
      I3 => \r_RX_cnt[9]_i_3_n_0\,
      I4 => r_RX_state(1),
      I5 => r_RX_state(0),
      O => \r_RX_cnt[9]_i_2_n_0\
    );
\r_RX_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[7]\,
      I1 => \r_RX_cnt[9]_i_4_n_0\,
      I2 => \r_RX_cnt_reg_n_0_[6]\,
      I3 => \r_RX_cnt_reg_n_0_[8]\,
      I4 => \r_RX_cnt_reg_n_0_[9]\,
      O => \r_RX_cnt[9]_i_3_n_0\
    );
\r_RX_cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_RX_cnt_reg_n_0_[5]\,
      I1 => \r_RX_cnt_reg_n_0_[3]\,
      I2 => \r_RX_cnt_reg_n_0_[1]\,
      I3 => \r_RX_cnt_reg_n_0_[0]\,
      I4 => \r_RX_cnt_reg_n_0_[2]\,
      I5 => \r_RX_cnt_reg_n_0_[4]\,
      O => \r_RX_cnt[9]_i_4_n_0\
    );
\r_RX_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[0]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[0]\
    );
\r_RX_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[1]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[1]\
    );
\r_RX_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[2]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[2]\
    );
\r_RX_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[3]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[3]\
    );
\r_RX_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[4]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[4]\
    );
\r_RX_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[5]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[5]\
    );
\r_RX_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[6]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[6]\
    );
\r_RX_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[7]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[7]\
    );
\r_RX_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[8]_i_1_n_0\,
      Q => \r_RX_cnt_reg_n_0_[8]\
    );
\r_RX_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_RX_cnt(0),
      CLR => o_Received_new_byte_reg_0,
      D => \r_RX_cnt[9]_i_2_n_0\,
      Q => \r_RX_cnt_reg_n_0_[9]\
    );
r_RX_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => r_Half_RX_sync,
      Q => r_RX_sync,
      R => '0'
    );
\r_p1_paddle_pos[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^o_received_byte_reg[4]_3\,
      I1 => \r_p1_paddle_pos_reg[3]_0\(0),
      O => \r_p1_paddle_pos_reg[3]\(0)
    );
\r_p1_paddle_pos[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAC"
    )
        port map (
      I0 => \^o_received_byte_reg[2]_0\,
      I1 => \^o_received_byte_reg[2]_1\,
      I2 => \r_p1_paddle_pos_reg[3]_0\(1),
      I3 => \r_p1_paddle_pos_reg[3]_0\(0),
      I4 => \^o_received_byte_reg[4]_2\,
      O => \r_p1_paddle_pos_reg[3]\(1)
    );
\r_p1_paddle_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFBBAAAFFFBBBBF"
    )
        port map (
      I0 => \^o_received_byte_reg[4]_2\,
      I1 => \^o_received_byte_reg[2]_1\,
      I2 => \r_p1_paddle_pos_reg[3]_0\(0),
      I3 => \r_p1_paddle_pos_reg[3]_0\(1),
      I4 => \r_p1_paddle_pos_reg[3]_0\(2),
      I5 => \^o_received_byte_reg[2]_0\,
      O => \r_p1_paddle_pos_reg[3]\(2)
    );
\r_p1_paddle_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBBFFBBFAABFFB"
    )
        port map (
      I0 => \^o_received_byte_reg[4]_2\,
      I1 => \^o_received_byte_reg[2]_1\,
      I2 => \r_p1_paddle_pos_reg[3]_1\,
      I3 => \r_p1_paddle_pos_reg[3]_0\(3),
      I4 => \^o_received_byte_reg[2]_0\,
      I5 => \r_p1_paddle_pos_reg[3]_2\,
      O => \r_p1_paddle_pos_reg[3]\(3)
    );
\r_p1_paddle_pos[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2F2F00"
    )
        port map (
      I0 => w_Received_byte(2),
      I1 => w_Received_byte(3),
      I2 => w_Received_byte(4),
      I3 => \r_p1_paddle_pos_reg[3]_4\,
      I4 => \r_p1_paddle_pos_reg[3]_5\,
      O => \^o_received_byte_reg[2]_1\
    );
\r_p1_paddle_pos[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^o_received_byte_reg[4]_2\,
      I1 => \^o_received_byte_reg[2]_1\,
      I2 => \^o_received_byte_reg[2]_0\,
      O => \^o_received_byte_reg[4]_3\
    );
\r_p1_paddle_pos[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => w_Received_byte(2),
      I1 => w_Received_byte(3),
      I2 => w_Received_byte(4),
      I3 => \r_p1_paddle_pos_reg[3]_3\,
      O => \^o_received_byte_reg[2]_0\
    );
\r_p1_paddle_pos[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \r_p1_paddle_pos_reg[3]_6\,
      I1 => w_Received_byte(4),
      I2 => w_Received_byte(3),
      O => \^o_received_byte_reg[4]_2\
    );
\r_p2_paddle_pos[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^o_received_byte_reg[3]_1\,
      I1 => \r_p2_paddle_pos_reg[3]\(0),
      O => D(0)
    );
\r_p2_paddle_pos[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CAAC"
    )
        port map (
      I0 => \^o_received_byte_reg[4]_0\,
      I1 => \^o_received_byte_reg[4]_1\,
      I2 => \r_p2_paddle_pos_reg[3]\(1),
      I3 => \r_p2_paddle_pos_reg[3]\(0),
      I4 => \^o_received_byte_reg[3]_0\,
      O => D(1)
    );
\r_p2_paddle_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFBBAAAFFFBBBBF"
    )
        port map (
      I0 => \^o_received_byte_reg[3]_0\,
      I1 => \^o_received_byte_reg[4]_1\,
      I2 => \r_p2_paddle_pos_reg[3]\(0),
      I3 => \r_p2_paddle_pos_reg[3]\(1),
      I4 => \r_p2_paddle_pos_reg[3]\(2),
      I5 => \^o_received_byte_reg[4]_0\,
      O => D(2)
    );
\r_p2_paddle_pos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBBFFBBFAABFFB"
    )
        port map (
      I0 => \^o_received_byte_reg[3]_0\,
      I1 => \^o_received_byte_reg[4]_1\,
      I2 => \r_p2_paddle_pos_reg[3]_0\,
      I3 => \r_p2_paddle_pos_reg[3]\(3),
      I4 => \^o_received_byte_reg[4]_0\,
      I5 => \r_p2_paddle_pos_reg[3]_1\,
      O => D(3)
    );
\r_p2_paddle_pos[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAEA00"
    )
        port map (
      I0 => w_Received_byte(4),
      I1 => w_Received_byte(3),
      I2 => w_Received_byte(2),
      I3 => \r_p2_paddle_pos_reg[3]_3\,
      I4 => \r_p2_paddle_pos_reg[3]_4\,
      O => \^o_received_byte_reg[4]_1\
    );
\r_p2_paddle_pos[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => w_Received_byte(0),
      I1 => w_Received_byte(7),
      I2 => \^w_new_key\,
      I3 => w_Received_byte(1),
      I4 => w_Received_byte(6),
      I5 => w_Received_byte(5),
      O => \o_Received_byte_reg[0]_0\
    );
\r_p2_paddle_pos[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^o_received_byte_reg[3]_0\,
      I1 => \^o_received_byte_reg[4]_1\,
      I2 => \^o_received_byte_reg[4]_0\,
      O => \^o_received_byte_reg[3]_1\
    );
\r_p2_paddle_pos[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => w_Received_byte(4),
      I1 => w_Received_byte(3),
      I2 => w_Received_byte(2),
      I3 => \r_p2_paddle_pos_reg[3]_2\,
      O => \^o_received_byte_reg[4]_0\
    );
\r_p2_paddle_pos[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => w_Received_byte(3),
      I1 => w_Received_byte(4),
      I2 => \r_p1_paddle_pos_reg[3]_6\,
      O => \^o_received_byte_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmit_uart is
  port (
    UART_RXD_OUT_OBUF : out STD_LOGIC;
    CPU_RESETN : out STD_LOGIC;
    o_Ready_to_send_reg_0 : out STD_LOGIC;
    o_Ready_to_send_reg_1 : out STD_LOGIC;
    o_Ready_to_send_reg_2 : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    w_TX_send : in STD_LOGIC;
    CPU_RESETN_IBUF : in STD_LOGIC;
    \r_TX_message_reg[78]_0\ : in STD_LOGIC_VECTOR ( 69 downto 0 );
    w_TX_count : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end transmit_uart;

architecture STRUCTURE of transmit_uart is
  signal \^cpu_resetn\ : STD_LOGIC;
  signal \FSM_sequential_r_TX_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_TX_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_TX_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_TX_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_TX_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_TX_state[1]_i_3_n_0\ : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal o_Ready_to_send_i_1_n_0 : STD_LOGIC;
  signal \^o_ready_to_send_reg_0\ : STD_LOGIC;
  signal o_UART_TXD_i_1_n_0 : STD_LOGIC;
  signal o_UART_TXD_i_2_n_0 : STD_LOGIC;
  signal o_UART_TXD_i_3_n_0 : STD_LOGIC;
  signal o_UART_TXD_i_4_n_0 : STD_LOGIC;
  signal r_Bit_index : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_Bit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_index[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Bit_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Char_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Char_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Char_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Char_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Char_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Char_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Char_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Char_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Char_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal r_TX_char : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \r_TX_char[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_char[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_char[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_char[6]_i_4_n_0\ : STD_LOGIC;
  signal \r_TX_char[6]_i_5_n_0\ : STD_LOGIC;
  signal r_TX_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_TX_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_TX_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_TX_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal r_TX_message : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_TX_message_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_TX_message_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_TX_message_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_TX_message_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_TX_message_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_TX_message_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_TX_message_reg_n_0_[6]\ : STD_LOGIC;
  signal r_TX_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_TX_state_reg[0]\ : label is "starting:01,transmitting_data:10,idle:00,stop:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_TX_state_reg[1]\ : label is "starting:01,transmitting_data:10,idle:00,stop:11";
  attribute \PinAttr:I3:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I3:HOLD_DETOUR\ of o_Ready_to_send_i_1 : label is 186;
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \r_Bit_index[0]_i_1\ : label is 194;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Bit_index[0]_i_1\ : label is "soft_lutpair186";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \r_Bit_index[1]_i_1\ : label is 194;
  attribute SOFT_HLUTNM of \r_Bit_index[1]_i_1\ : label is "soft_lutpair186";
  attribute \PinAttr:I3:HOLD_DETOUR\ of \r_Bit_index[2]_i_1\ : label is 194;
  attribute SOFT_HLUTNM of \r_Bit_index[2]_i_1\ : label is "soft_lutpair181";
  attribute \PinAttr:I3:HOLD_DETOUR\ of \r_Bit_index[3]_i_2\ : label is 194;
  attribute SOFT_HLUTNM of \r_Bit_index[3]_i_2\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \r_Char_cnt[0]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \r_Char_cnt[1]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \r_TX_cnt[0]_i_1\ : label is "soft_lutpair183";
  attribute \PinAttr:I3:HOLD_DETOUR\ of \r_TX_cnt[1]_i_1\ : label is 194;
  attribute SOFT_HLUTNM of \r_TX_cnt[1]_i_1\ : label is "soft_lutpair178";
  attribute \PinAttr:I3:HOLD_DETOUR\ of \r_TX_cnt[2]_i_1\ : label is 194;
  attribute SOFT_HLUTNM of \r_TX_cnt[2]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \r_TX_cnt[5]_i_1\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \r_TX_cnt[6]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \r_TX_cnt[7]_i_1\ : label is "soft_lutpair177";
  attribute \PinAttr:D:HOLD_DETOUR\ : integer;
  attribute \PinAttr:D:HOLD_DETOUR\ of \r_TX_message_reg[59]\ : label is 150;
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \r_screen_render_state[0]_i_2\ : label is 186;
begin
  CPU_RESETN <= \^cpu_resetn\;
  o_Ready_to_send_reg_0 <= \^o_ready_to_send_reg_0\;
\FSM_sequential_r_RX_state[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      O => \^cpu_resetn\
    );
\FSM_sequential_r_TX_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00C0AA"
    )
        port map (
      I0 => w_TX_send,
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_Bit_index_reg_n_0_[3]\,
      I3 => r_TX_state(1),
      I4 => r_TX_state(0),
      O => \FSM_sequential_r_TX_state[0]_i_1_n_0\
    );
\FSM_sequential_r_TX_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_TX_cnt_reg_n_0_[8]\,
      I1 => \FSM_sequential_r_TX_state[0]_i_3_n_0\,
      I2 => \r_TX_cnt_reg_n_0_[9]\,
      O => \FSM_sequential_r_TX_state[0]_i_2_n_0\
    );
\FSM_sequential_r_TX_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => \r_TX_cnt_reg_n_0_[7]\,
      I1 => \r_TX_cnt_reg_n_0_[6]\,
      I2 => \r_TX_cnt_reg_n_0_[4]\,
      I3 => \r_TX_cnt_reg_n_0_[2]\,
      I4 => \r_TX_cnt_reg_n_0_[3]\,
      I5 => \r_TX_cnt_reg_n_0_[5]\,
      O => \FSM_sequential_r_TX_state[0]_i_3_n_0\
    );
\FSM_sequential_r_TX_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFD000000"
    )
        port map (
      I0 => \FSM_sequential_r_TX_state[1]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_Char_cnt_reg_n_0_[2]\,
      I3 => r_TX_state(0),
      I4 => \FSM_sequential_r_TX_state[1]_i_3_n_0\,
      I5 => r_TX_state(1),
      O => \FSM_sequential_r_TX_state[1]_i_1_n_0\
    );
\FSM_sequential_r_TX_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Char_cnt_reg_n_0_[0]\,
      I1 => \r_Char_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_r_TX_state[1]_i_2_n_0\
    );
\FSM_sequential_r_TX_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFFC0AA"
    )
        port map (
      I0 => w_TX_send,
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_Bit_index_reg_n_0_[3]\,
      I3 => r_TX_state(1),
      I4 => r_TX_state(0),
      O => \FSM_sequential_r_TX_state[1]_i_3_n_0\
    );
\FSM_sequential_r_TX_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => \^cpu_resetn\,
      D => \FSM_sequential_r_TX_state[0]_i_1_n_0\,
      Q => r_TX_state(0)
    );
\FSM_sequential_r_TX_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      CLR => \^cpu_resetn\,
      D => \FSM_sequential_r_TX_state[1]_i_1_n_0\,
      Q => r_TX_state(1)
    );
o_Ready_to_send_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => w_TX_send,
      I1 => r_TX_state(0),
      I2 => r_TX_state(1),
      I3 => \^o_ready_to_send_reg_0\,
      O => o_Ready_to_send_i_1_n_0
    );
o_Ready_to_send_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => o_Ready_to_send_i_1_n_0,
      PRE => \^cpu_resetn\,
      Q => \^o_ready_to_send_reg_0\
    );
o_UART_TXD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FD00FDFFFF00FF"
    )
        port map (
      I0 => \FSM_sequential_r_TX_state[1]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[2]\,
      I2 => \r_Char_cnt_reg_n_0_[3]\,
      I3 => r_TX_state(1),
      I4 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I5 => r_TX_state(0),
      O => o_UART_TXD_i_1_n_0
    );
o_UART_TXD_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554445455555555"
    )
        port map (
      I0 => r_TX_state(0),
      I1 => \r_Bit_index_reg_n_0_[3]\,
      I2 => o_UART_TXD_i_3_n_0,
      I3 => \r_Bit_index_reg_n_0_[2]\,
      I4 => o_UART_TXD_i_4_n_0,
      I5 => r_TX_state(1),
      O => o_UART_TXD_i_2_n_0
    );
o_UART_TXD_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_char(3),
      I1 => r_TX_char(2),
      I2 => \r_Bit_index_reg_n_0_[1]\,
      I3 => r_TX_char(1),
      I4 => \r_Bit_index_reg_n_0_[0]\,
      I5 => r_TX_char(0),
      O => o_UART_TXD_i_3_n_0
    );
o_UART_TXD_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => r_TX_char(6),
      I1 => \r_Bit_index_reg_n_0_[1]\,
      I2 => r_TX_char(5),
      I3 => \r_Bit_index_reg_n_0_[0]\,
      I4 => r_TX_char(4),
      O => o_UART_TXD_i_4_n_0
    );
o_UART_TXD_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => o_UART_TXD_i_1_n_0,
      D => o_UART_TXD_i_2_n_0,
      PRE => \^cpu_resetn\,
      Q => UART_RXD_OUT_OBUF
    );
\r_Bit_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \r_Bit_index_reg_n_0_[0]\,
      O => \r_Bit_index[0]_i_1_n_0\
    );
\r_Bit_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \r_Bit_index_reg_n_0_[1]\,
      I2 => \r_Bit_index_reg_n_0_[0]\,
      O => \r_Bit_index[1]_i_1_n_0\
    );
\r_Bit_index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \r_Bit_index_reg_n_0_[2]\,
      I2 => \r_Bit_index_reg_n_0_[1]\,
      I3 => \r_Bit_index_reg_n_0_[0]\,
      O => \r_Bit_index[2]_i_1_n_0\
    );
\r_Bit_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08380808"
    )
        port map (
      I0 => \r_Bit_index[3]_i_3_n_0\,
      I1 => r_TX_state(0),
      I2 => r_TX_state(1),
      I3 => \r_Bit_index_reg_n_0_[3]\,
      I4 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      O => r_Bit_index(0)
    );
\r_Bit_index[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \r_Bit_index_reg_n_0_[3]\,
      I2 => \r_Bit_index_reg_n_0_[2]\,
      I3 => \r_Bit_index_reg_n_0_[0]\,
      I4 => \r_Bit_index_reg_n_0_[1]\,
      O => \r_Bit_index[3]_i_2_n_0\
    );
\r_Bit_index[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_Char_cnt_reg_n_0_[1]\,
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => \r_Char_cnt_reg_n_0_[2]\,
      I3 => \r_Char_cnt_reg_n_0_[3]\,
      O => \r_Bit_index[3]_i_3_n_0\
    );
\r_Bit_index_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_Bit_index(0),
      CLR => \^cpu_resetn\,
      D => \r_Bit_index[0]_i_1_n_0\,
      Q => \r_Bit_index_reg_n_0_[0]\
    );
\r_Bit_index_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_Bit_index(0),
      CLR => \^cpu_resetn\,
      D => \r_Bit_index[1]_i_1_n_0\,
      Q => \r_Bit_index_reg_n_0_[1]\
    );
\r_Bit_index_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_Bit_index(0),
      CLR => \^cpu_resetn\,
      D => \r_Bit_index[2]_i_1_n_0\,
      Q => \r_Bit_index_reg_n_0_[2]\
    );
\r_Bit_index_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_Bit_index(0),
      CLR => \^cpu_resetn\,
      D => \r_Bit_index[3]_i_2_n_0\,
      Q => \r_Bit_index_reg_n_0_[3]\
    );
\r_Char_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_TX_state(0),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      O => \r_Char_cnt[0]_i_1_n_0\
    );
\r_Char_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \r_Char_cnt_reg_n_0_[0]\,
      I1 => \r_Char_cnt_reg_n_0_[1]\,
      I2 => r_TX_state(0),
      I3 => w_TX_count(0),
      O => \r_Char_cnt[1]_i_1_n_0\
    );
\r_Char_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => r_TX_state(0),
      I1 => \r_Char_cnt_reg_n_0_[2]\,
      I2 => \r_Char_cnt_reg_n_0_[0]\,
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      O => \r_Char_cnt[2]_i_1_n_0\
    );
\r_Char_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE2EEEE"
    )
        port map (
      I0 => w_TX_send,
      I1 => r_TX_state(0),
      I2 => \r_Char_cnt_reg_n_0_[3]\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \FSM_sequential_r_TX_state[1]_i_2_n_0\,
      I5 => r_TX_state(1),
      O => \r_Char_cnt[3]_i_1_n_0\
    );
\r_Char_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \r_Char_cnt_reg_n_0_[0]\,
      I1 => \r_Char_cnt_reg_n_0_[1]\,
      I2 => \r_Char_cnt_reg_n_0_[2]\,
      I3 => \r_Char_cnt_reg_n_0_[3]\,
      I4 => r_TX_state(0),
      I5 => w_TX_count(0),
      O => \r_Char_cnt[3]_i_2_n_0\
    );
\r_Char_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Char_cnt[3]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_Char_cnt[0]_i_1_n_0\,
      Q => \r_Char_cnt_reg_n_0_[0]\
    );
\r_Char_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Char_cnt[3]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_Char_cnt[1]_i_1_n_0\,
      Q => \r_Char_cnt_reg_n_0_[1]\
    );
\r_Char_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Char_cnt[3]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_Char_cnt[2]_i_1_n_0\,
      Q => \r_Char_cnt_reg_n_0_[2]\
    );
\r_Char_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_Char_cnt[3]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_Char_cnt[3]_i_2_n_0\,
      Q => \r_Char_cnt_reg_n_0_[3]\
    );
\r_TX_char[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[0]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[0]_i_3_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[0]_i_4_n_0\,
      O => \r_TX_char[0]_i_1_n_0\
    );
\r_TX_char[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(0),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(0),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(0),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[0]_i_2_n_0\
    );
\r_TX_char[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(0),
      I1 => data6(0),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(0),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(0),
      O => \r_TX_char[0]_i_3_n_0\
    );
\r_TX_char[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[0]\,
      O => \r_TX_char[0]_i_4_n_0\
    );
\r_TX_char[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[1]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[1]_i_3_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[1]_i_4_n_0\,
      O => \r_TX_char[1]_i_1_n_0\
    );
\r_TX_char[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(1),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(1),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(1),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[1]_i_2_n_0\
    );
\r_TX_char[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(1),
      I1 => data6(1),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(1),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(1),
      O => \r_TX_char[1]_i_3_n_0\
    );
\r_TX_char[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[1]\,
      O => \r_TX_char[1]_i_4_n_0\
    );
\r_TX_char[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[2]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[2]_i_3_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[2]_i_4_n_0\,
      O => \r_TX_char[2]_i_1_n_0\
    );
\r_TX_char[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(2),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(2),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(2),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[2]_i_2_n_0\
    );
\r_TX_char[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(2),
      I1 => data6(2),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(2),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(2),
      O => \r_TX_char[2]_i_3_n_0\
    );
\r_TX_char[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[2]\,
      O => \r_TX_char[2]_i_4_n_0\
    );
\r_TX_char[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[3]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[3]_i_3_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[3]_i_4_n_0\,
      O => \r_TX_char[3]_i_1_n_0\
    );
\r_TX_char[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(3),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(3),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(3),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[3]_i_2_n_0\
    );
\r_TX_char[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(3),
      I1 => data6(3),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(3),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(3),
      O => \r_TX_char[3]_i_3_n_0\
    );
\r_TX_char[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[3]\,
      O => \r_TX_char[3]_i_4_n_0\
    );
\r_TX_char[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[4]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[4]_i_3_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[4]_i_4_n_0\,
      O => \r_TX_char[4]_i_1_n_0\
    );
\r_TX_char[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(4),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(4),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(4),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[4]_i_2_n_0\
    );
\r_TX_char[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(4),
      I1 => data6(4),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(4),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(4),
      O => \r_TX_char[4]_i_3_n_0\
    );
\r_TX_char[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(4),
      I1 => data2(4),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[4]\,
      O => \r_TX_char[4]_i_4_n_0\
    );
\r_TX_char[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[5]_i_2_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[5]_i_3_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[5]_i_4_n_0\,
      O => \r_TX_char[5]_i_1_n_0\
    );
\r_TX_char[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(5),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(5),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(5),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[5]_i_2_n_0\
    );
\r_TX_char[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(5),
      I1 => data6(5),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(5),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(5),
      O => \r_TX_char[5]_i_3_n_0\
    );
\r_TX_char[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[5]\,
      O => \r_TX_char[5]_i_4_n_0\
    );
\r_TX_char[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \r_Char_cnt_reg_n_0_[1]\,
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => \r_Char_cnt_reg_n_0_[2]\,
      I3 => \r_Char_cnt_reg_n_0_[3]\,
      I4 => r_TX_state(0),
      I5 => r_TX_state(1),
      O => \r_TX_char[6]_i_1_n_0\
    );
\r_TX_char[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \r_TX_char[6]_i_3_n_0\,
      I1 => \r_Char_cnt_reg_n_0_[3]\,
      I2 => \r_TX_char[6]_i_4_n_0\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_TX_char[6]_i_5_n_0\,
      O => \r_TX_char[6]_i_2_n_0\
    );
\r_TX_char[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => data8(6),
      I1 => \r_Char_cnt_reg_n_0_[0]\,
      I2 => data9(6),
      I3 => \r_Char_cnt_reg_n_0_[1]\,
      I4 => data10(6),
      I5 => \r_Char_cnt_reg_n_0_[2]\,
      O => \r_TX_char[6]_i_3_n_0\
    );
\r_TX_char[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(6),
      I1 => data6(6),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => data5(6),
      I4 => \r_Char_cnt_reg_n_0_[0]\,
      I5 => data4(6),
      O => \r_TX_char[6]_i_4_n_0\
    );
\r_TX_char[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data3(6),
      I1 => data2(6),
      I2 => \r_Char_cnt_reg_n_0_[1]\,
      I3 => \r_Char_cnt_reg_n_0_[0]\,
      I4 => \r_TX_message_reg_n_0_[6]\,
      O => \r_TX_char[6]_i_5_n_0\
    );
\r_TX_char_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[0]_i_1_n_0\,
      Q => r_TX_char(0)
    );
\r_TX_char_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[1]_i_1_n_0\,
      Q => r_TX_char(1)
    );
\r_TX_char_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[2]_i_1_n_0\,
      Q => r_TX_char(2)
    );
\r_TX_char_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[3]_i_1_n_0\,
      Q => r_TX_char(3)
    );
\r_TX_char_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[4]_i_1_n_0\,
      Q => r_TX_char(4)
    );
\r_TX_char_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[5]_i_1_n_0\,
      Q => r_TX_char(5)
    );
\r_TX_char_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => \r_TX_char[6]_i_1_n_0\,
      CLR => \^cpu_resetn\,
      D => \r_TX_char[6]_i_2_n_0\,
      Q => r_TX_char(6)
    );
\r_TX_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \r_TX_cnt_reg_n_0_[0]\,
      I2 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      O => \r_TX_cnt[0]_i_1_n_0\
    );
\r_TX_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt_reg_n_0_[0]\,
      I3 => \r_TX_cnt_reg_n_0_[1]\,
      O => \r_TX_cnt[1]_i_1_n_0\
    );
\r_TX_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt_reg_n_0_[0]\,
      I3 => \r_TX_cnt_reg_n_0_[1]\,
      I4 => \r_TX_cnt_reg_n_0_[2]\,
      O => \r_TX_cnt[2]_i_1_n_0\
    );
\r_TX_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt_reg_n_0_[1]\,
      I3 => \r_TX_cnt_reg_n_0_[0]\,
      I4 => \r_TX_cnt_reg_n_0_[2]\,
      I5 => \r_TX_cnt_reg_n_0_[3]\,
      O => \r_TX_cnt[3]_i_1_n_0\
    );
\r_TX_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt[4]_i_2_n_0\,
      I3 => \r_TX_cnt_reg_n_0_[4]\,
      O => \r_TX_cnt[4]_i_1_n_0\
    );
\r_TX_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \r_TX_cnt_reg_n_0_[3]\,
      I1 => \r_TX_cnt_reg_n_0_[1]\,
      I2 => \r_TX_cnt_reg_n_0_[0]\,
      I3 => \r_TX_cnt_reg_n_0_[2]\,
      O => \r_TX_cnt[4]_i_2_n_0\
    );
\r_TX_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt[5]_i_2_n_0\,
      I3 => \r_TX_cnt_reg_n_0_[5]\,
      O => \r_TX_cnt[5]_i_1_n_0\
    );
\r_TX_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \r_TX_cnt_reg_n_0_[4]\,
      I1 => \r_TX_cnt_reg_n_0_[2]\,
      I2 => \r_TX_cnt_reg_n_0_[0]\,
      I3 => \r_TX_cnt_reg_n_0_[1]\,
      I4 => \r_TX_cnt_reg_n_0_[3]\,
      O => \r_TX_cnt[5]_i_2_n_0\
    );
\r_TX_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt[8]_i_2_n_0\,
      I3 => \r_TX_cnt_reg_n_0_[6]\,
      O => \r_TX_cnt[6]_i_1_n_0\
    );
\r_TX_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt[8]_i_2_n_0\,
      I3 => \r_TX_cnt_reg_n_0_[6]\,
      I4 => \r_TX_cnt_reg_n_0_[7]\,
      O => \r_TX_cnt[7]_i_1_n_0\
    );
\r_TX_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt_reg_n_0_[6]\,
      I3 => \r_TX_cnt[8]_i_2_n_0\,
      I4 => \r_TX_cnt_reg_n_0_[7]\,
      I5 => \r_TX_cnt_reg_n_0_[8]\,
      O => \r_TX_cnt[8]_i_1_n_0\
    );
\r_TX_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_TX_cnt_reg_n_0_[5]\,
      I1 => \r_TX_cnt_reg_n_0_[3]\,
      I2 => \r_TX_cnt_reg_n_0_[1]\,
      I3 => \r_TX_cnt_reg_n_0_[0]\,
      I4 => \r_TX_cnt_reg_n_0_[2]\,
      I5 => \r_TX_cnt_reg_n_0_[4]\,
      O => \r_TX_cnt[8]_i_2_n_0\
    );
\r_TX_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \r_Char_cnt_reg_n_0_[1]\,
      I2 => \r_Char_cnt_reg_n_0_[0]\,
      I3 => \r_Char_cnt_reg_n_0_[2]\,
      I4 => \r_Char_cnt_reg_n_0_[3]\,
      I5 => r_TX_state(0),
      O => r_TX_cnt(0)
    );
\r_TX_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => r_TX_state(1),
      I1 => \FSM_sequential_r_TX_state[0]_i_2_n_0\,
      I2 => \r_TX_cnt[9]_i_3_n_0\,
      I3 => \r_TX_cnt_reg_n_0_[8]\,
      I4 => \r_TX_cnt_reg_n_0_[9]\,
      O => \r_TX_cnt[9]_i_2_n_0\
    );
\r_TX_cnt[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_TX_cnt_reg_n_0_[7]\,
      I1 => \r_TX_cnt[8]_i_2_n_0\,
      I2 => \r_TX_cnt_reg_n_0_[6]\,
      O => \r_TX_cnt[9]_i_3_n_0\
    );
\r_TX_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[0]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[0]\
    );
\r_TX_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[1]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[1]\
    );
\r_TX_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[2]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[2]\
    );
\r_TX_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[3]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[3]\
    );
\r_TX_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[4]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[4]\
    );
\r_TX_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[5]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[5]\
    );
\r_TX_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[6]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[6]\
    );
\r_TX_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[7]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[7]\
    );
\r_TX_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[8]_i_1_n_0\,
      Q => \r_TX_cnt_reg_n_0_[8]\
    );
\r_TX_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_cnt(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_cnt[9]_i_2_n_0\,
      Q => \r_TX_cnt_reg_n_0_[9]\
    );
\r_TX_message[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => w_TX_send,
      I1 => r_TX_state(0),
      I2 => r_TX_state(1),
      O => r_TX_message(0)
    );
\r_TX_message_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(0),
      Q => \r_TX_message_reg_n_0_[0]\
    );
\r_TX_message_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(9),
      Q => data2(2)
    );
\r_TX_message_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(10),
      Q => data2(3)
    );
\r_TX_message_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(11),
      Q => data2(4)
    );
\r_TX_message_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(12),
      Q => data2(5)
    );
\r_TX_message_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(13),
      Q => data2(6)
    );
\r_TX_message_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(14),
      Q => data3(0)
    );
\r_TX_message_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(15),
      Q => data3(1)
    );
\r_TX_message_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(16),
      Q => data3(2)
    );
\r_TX_message_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(17),
      Q => data3(3)
    );
\r_TX_message_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(1),
      Q => \r_TX_message_reg_n_0_[1]\
    );
\r_TX_message_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(18),
      Q => data3(4)
    );
\r_TX_message_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(19),
      Q => data3(5)
    );
\r_TX_message_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(20),
      Q => data3(6)
    );
\r_TX_message_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(21),
      Q => data4(0)
    );
\r_TX_message_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(22),
      Q => data4(1)
    );
\r_TX_message_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(23),
      Q => data4(2)
    );
\r_TX_message_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(24),
      Q => data4(3)
    );
\r_TX_message_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(25),
      Q => data4(4)
    );
\r_TX_message_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(26),
      Q => data4(5)
    );
\r_TX_message_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(2),
      Q => \r_TX_message_reg_n_0_[2]\
    );
\r_TX_message_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(27),
      Q => data4(6)
    );
\r_TX_message_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(28),
      Q => data5(0)
    );
\r_TX_message_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(29),
      Q => data5(1)
    );
\r_TX_message_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(30),
      Q => data5(2)
    );
\r_TX_message_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(31),
      Q => data5(3)
    );
\r_TX_message_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(32),
      Q => data5(4)
    );
\r_TX_message_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(33),
      Q => data5(5)
    );
\r_TX_message_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(34),
      Q => data5(6)
    );
\r_TX_message_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(3),
      Q => \r_TX_message_reg_n_0_[3]\
    );
\r_TX_message_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(35),
      Q => data6(0)
    );
\r_TX_message_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(36),
      Q => data6(1)
    );
\r_TX_message_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(37),
      Q => data6(2)
    );
\r_TX_message_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(38),
      Q => data6(3)
    );
\r_TX_message_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(39),
      Q => data6(4)
    );
\r_TX_message_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(40),
      Q => data6(5)
    );
\r_TX_message_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(41),
      Q => data6(6)
    );
\r_TX_message_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(42),
      Q => data7(0)
    );
\r_TX_message_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(43),
      Q => data7(1)
    );
\r_TX_message_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(4),
      Q => \r_TX_message_reg_n_0_[4]\
    );
\r_TX_message_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(44),
      Q => data7(2)
    );
\r_TX_message_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(45),
      Q => data7(3)
    );
\r_TX_message_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(46),
      Q => data7(4)
    );
\r_TX_message_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(47),
      Q => data7(5)
    );
\r_TX_message_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(48),
      Q => data7(6)
    );
\r_TX_message_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(49),
      Q => data8(0)
    );
\r_TX_message_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(50),
      Q => data8(1)
    );
\r_TX_message_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(51),
      Q => data8(2)
    );
\r_TX_message_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(52),
      Q => data8(3)
    );
\r_TX_message_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(5),
      Q => \r_TX_message_reg_n_0_[5]\
    );
\r_TX_message_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(53),
      Q => data8(4)
    );
\r_TX_message_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(54),
      Q => data8(5)
    );
\r_TX_message_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(55),
      Q => data8(6)
    );
\r_TX_message_reg[64]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(56),
      Q => data9(0)
    );
\r_TX_message_reg[65]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(57),
      Q => data9(1)
    );
\r_TX_message_reg[66]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(58),
      Q => data9(2)
    );
\r_TX_message_reg[67]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(59),
      Q => data9(3)
    );
\r_TX_message_reg[68]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(60),
      Q => data9(4)
    );
\r_TX_message_reg[69]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(61),
      Q => data9(5)
    );
\r_TX_message_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(6),
      Q => \r_TX_message_reg_n_0_[6]\
    );
\r_TX_message_reg[70]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(62),
      Q => data9(6)
    );
\r_TX_message_reg[72]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(63),
      Q => data10(0)
    );
\r_TX_message_reg[73]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(64),
      Q => data10(1)
    );
\r_TX_message_reg[74]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(65),
      Q => data10(2)
    );
\r_TX_message_reg[75]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(66),
      Q => data10(3)
    );
\r_TX_message_reg[76]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(67),
      Q => data10(4)
    );
\r_TX_message_reg[77]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(68),
      Q => data10(5)
    );
\r_TX_message_reg[78]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(69),
      Q => data10(6)
    );
\r_TX_message_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(7),
      Q => data2(0)
    );
\r_TX_message_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => r_TX_message(0),
      CLR => \^cpu_resetn\,
      D => \r_TX_message_reg[78]_0\(8),
      Q => data2(1)
    );
\r_screen_render_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_ready_to_send_reg_0\,
      I1 => w_TX_send,
      O => o_Ready_to_send_reg_1
    );
r_send_pending_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => \^o_ready_to_send_reg_0\,
      I2 => w_TX_send,
      O => o_Ready_to_send_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity game_module is
  port (
    w_TX_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_TX_send : out STD_LOGIC;
    r_Blink : out STD_LOGIC;
    w_idle_state : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_p1_paddle_pos_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p2_paddle_pos_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p2_paddle_pos_reg[1]\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[2]\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[0]\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[1]\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[2]\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[0]\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]_0\ : out STD_LOGIC;
    \r_Message_index_reg[0]\ : out STD_LOGIC;
    \r_Message_index_reg[2]\ : out STD_LOGIC;
    \r_Message_index_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_r_play_state_reg[0]\ : out STD_LOGIC;
    r_Game_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_Game_state_reg[1]\ : out STD_LOGIC;
    \r_p2_paddle_pos_reg[1]_0\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[1]_0\ : out STD_LOGIC;
    \o_uart_buffer_reg[78]\ : out STD_LOGIC_VECTOR ( 69 downto 0 );
    \o_Anodes_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \o_Cathodes_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \o_LED17_bgr_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_LED16_bgr_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    CPU_RESETN_IBUF : in STD_LOGIC;
    \o_uart_buffer_reg[54]\ : in STD_LOGIC;
    w_TX_ready : in STD_LOGIC;
    r_send_pending_reg : in STD_LOGIC;
    w_Paddle_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_uart_buffer[49]_i_13\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[5]\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[4]\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[5]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[0]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos[5]_i_6\ : in STD_LOGIC;
    r_ball_dir_x2_carry : in STD_LOGIC;
    \r_ball_dir_x2_inferred__0/i__carry\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__0/i__carry_0\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[5]\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[4]\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[5]_0\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[0]_0\ : in STD_LOGIC;
    \r_p1_paddle_pos[5]_i_6\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__1/i__carry\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__2/i__carry\ : in STD_LOGIC;
    \r_ball_dir_x2_inferred__2/i__carry_0\ : in STD_LOGIC;
    \o_Cathodes_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Cathodes_reg[4]\ : in STD_LOGIC;
    \o_Cathodes[1]_i_5\ : in STD_LOGIC;
    \o_Cathodes_reg[5]\ : in STD_LOGIC;
    \o_Cathodes_reg[0]\ : in STD_LOGIC;
    \o_Cathodes_reg[0]_0\ : in STD_LOGIC;
    \o_Cathodes_reg[3]\ : in STD_LOGIC;
    \o_Cathodes_reg[1]\ : in STD_LOGIC;
    w_Mod_display_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    w_New_key : in STD_LOGIC;
    \FSM_sequential_r_Game_state_reg[0]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos[5]_i_7\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_ball_rate_reg[23]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \r_ball_rate_reg[19]\ : in STD_LOGIC;
    \r_ball_rate_reg[18]\ : in STD_LOGIC;
    \r_ball_rate_reg[17]\ : in STD_LOGIC;
    \r_ball_rate_reg[14]\ : in STD_LOGIC;
    \r_ball_rate_reg[9]\ : in STD_LOGIC;
    \r_ball_rate_reg[6]\ : in STD_LOGIC;
    \r_ball_rate_reg[4]\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_game_value_reg[1]_0\ : in STD_LOGIC;
    \r_game_value_reg[1]_1\ : in STD_LOGIC
  );
end game_module;

architecture STRUCTURE of game_module is
  signal game_mechanics_inst_n_10 : STD_LOGIC;
  signal game_mechanics_inst_n_100 : STD_LOGIC;
  signal game_mechanics_inst_n_101 : STD_LOGIC;
  signal game_mechanics_inst_n_102 : STD_LOGIC;
  signal game_mechanics_inst_n_11 : STD_LOGIC;
  signal game_mechanics_inst_n_12 : STD_LOGIC;
  signal game_mechanics_inst_n_13 : STD_LOGIC;
  signal game_mechanics_inst_n_14 : STD_LOGIC;
  signal game_mechanics_inst_n_15 : STD_LOGIC;
  signal game_mechanics_inst_n_16 : STD_LOGIC;
  signal game_mechanics_inst_n_17 : STD_LOGIC;
  signal game_mechanics_inst_n_18 : STD_LOGIC;
  signal game_mechanics_inst_n_19 : STD_LOGIC;
  signal game_mechanics_inst_n_2 : STD_LOGIC;
  signal game_mechanics_inst_n_20 : STD_LOGIC;
  signal game_mechanics_inst_n_21 : STD_LOGIC;
  signal game_mechanics_inst_n_22 : STD_LOGIC;
  signal game_mechanics_inst_n_28 : STD_LOGIC;
  signal game_mechanics_inst_n_29 : STD_LOGIC;
  signal game_mechanics_inst_n_30 : STD_LOGIC;
  signal game_mechanics_inst_n_31 : STD_LOGIC;
  signal game_mechanics_inst_n_32 : STD_LOGIC;
  signal game_mechanics_inst_n_33 : STD_LOGIC;
  signal game_mechanics_inst_n_34 : STD_LOGIC;
  signal game_mechanics_inst_n_35 : STD_LOGIC;
  signal game_mechanics_inst_n_36 : STD_LOGIC;
  signal game_mechanics_inst_n_37 : STD_LOGIC;
  signal game_mechanics_inst_n_38 : STD_LOGIC;
  signal game_mechanics_inst_n_39 : STD_LOGIC;
  signal game_mechanics_inst_n_44 : STD_LOGIC;
  signal game_mechanics_inst_n_51 : STD_LOGIC;
  signal game_mechanics_inst_n_52 : STD_LOGIC;
  signal game_mechanics_inst_n_53 : STD_LOGIC;
  signal game_mechanics_inst_n_54 : STD_LOGIC;
  signal game_mechanics_inst_n_55 : STD_LOGIC;
  signal game_mechanics_inst_n_56 : STD_LOGIC;
  signal game_mechanics_inst_n_65 : STD_LOGIC;
  signal game_mechanics_inst_n_70 : STD_LOGIC;
  signal game_mechanics_inst_n_72 : STD_LOGIC;
  signal game_mechanics_inst_n_73 : STD_LOGIC;
  signal game_mechanics_inst_n_76 : STD_LOGIC;
  signal game_mechanics_inst_n_77 : STD_LOGIC;
  signal game_mechanics_inst_n_78 : STD_LOGIC;
  signal game_mechanics_inst_n_79 : STD_LOGIC;
  signal game_mechanics_inst_n_80 : STD_LOGIC;
  signal game_mechanics_inst_n_81 : STD_LOGIC;
  signal game_mechanics_inst_n_82 : STD_LOGIC;
  signal game_mechanics_inst_n_83 : STD_LOGIC;
  signal game_mechanics_inst_n_84 : STD_LOGIC;
  signal game_mechanics_inst_n_85 : STD_LOGIC;
  signal game_mechanics_inst_n_86 : STD_LOGIC;
  signal game_mechanics_inst_n_87 : STD_LOGIC;
  signal game_mechanics_inst_n_88 : STD_LOGIC;
  signal game_mechanics_inst_n_89 : STD_LOGIC;
  signal game_mechanics_inst_n_93 : STD_LOGIC;
  signal game_mechanics_inst_n_94 : STD_LOGIC;
  signal game_mechanics_inst_n_95 : STD_LOGIC;
  signal game_mechanics_inst_n_96 : STD_LOGIC;
  signal game_mechanics_inst_n_97 : STD_LOGIC;
  signal game_mechanics_inst_n_98 : STD_LOGIC;
  signal game_mechanics_inst_n_99 : STD_LOGIC;
  signal game_render_inst_n_10 : STD_LOGIC;
  signal game_render_inst_n_11 : STD_LOGIC;
  signal game_render_inst_n_12 : STD_LOGIC;
  signal game_render_inst_n_13 : STD_LOGIC;
  signal game_render_inst_n_14 : STD_LOGIC;
  signal game_render_inst_n_15 : STD_LOGIC;
  signal game_render_inst_n_18 : STD_LOGIC;
  signal game_render_inst_n_19 : STD_LOGIC;
  signal game_render_inst_n_20 : STD_LOGIC;
  signal game_render_inst_n_21 : STD_LOGIC;
  signal game_render_inst_n_22 : STD_LOGIC;
  signal game_render_inst_n_23 : STD_LOGIC;
  signal game_render_inst_n_3 : STD_LOGIC;
  signal game_render_inst_n_30 : STD_LOGIC;
  signal game_render_inst_n_31 : STD_LOGIC;
  signal local_game_display_inst_n_1 : STD_LOGIC;
  signal local_game_display_inst_n_5 : STD_LOGIC;
  signal local_game_display_inst_n_6 : STD_LOGIC;
  signal local_game_display_inst_n_7 : STD_LOGIC;
  signal local_game_display_inst_n_8 : STD_LOGIC;
  signal local_game_display_inst_n_9 : STD_LOGIC;
  signal o_idle_state_i_1_n_0 : STD_LOGIC;
  signal \^r_game_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_Game_state_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_Game_state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^r_message_index_reg[2]\ : STD_LOGIC;
  signal r_ball_pre_x : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_ball_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal r_game_value : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_game_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_game_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_game_value[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_game_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_game_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_old1_pos__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r_old2_pos__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^r_p2_paddle_pos_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_screen_render_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_send_pending_i_1_n_0 : STD_LOGIC;
  signal r_wait_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_wait_state[0]_i_1_n_0\ : STD_LOGIC;
  signal r_winner_i_2_n_0 : STD_LOGIC;
  signal r_winner_reg_n_0 : STD_LOGIC;
  signal w_Ball_pos_x : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w_Ball_pos_y : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal w_P1_score : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_P2_paddle : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal w_P2_score : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^w_tx_send\ : STD_LOGIC;
  signal \^w_idle_state\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_Game_state_reg[0]\ : label is "playing:01,game_over:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_Game_state_reg[1]\ : label is "playing:01,game_over:10,idle:00";
begin
  r_Game_state(1 downto 0) <= \^r_game_state\(1 downto 0);
  \r_Message_index_reg[2]\ <= \^r_message_index_reg[2]\;
  \r_p2_paddle_pos_reg[3]\(3 downto 0) <= \^r_p2_paddle_pos_reg[3]\(3 downto 0);
  w_TX_send <= \^w_tx_send\;
  w_idle_state <= \^w_idle_state\;
\FSM_sequential_r_Game_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => game_mechanics_inst_n_102,
      Q => \^r_game_state\(0),
      R => '0'
    );
\FSM_sequential_r_Game_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => game_mechanics_inst_n_101,
      Q => \^r_game_state\(1),
      R => '0'
    );
game_mechanics_inst: entity work.game_mechanics
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CO(0) => game_mechanics_inst_n_2,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      D(5) => game_mechanics_inst_n_93,
      D(4) => game_mechanics_inst_n_94,
      D(3) => game_mechanics_inst_n_95,
      D(2) => game_mechanics_inst_n_96,
      D(1) => game_mechanics_inst_n_97,
      D(0) => game_mechanics_inst_n_98,
      E(0) => game_mechanics_inst_n_85,
      \FSM_sequential_r_Game_state_reg[0]\ => game_mechanics_inst_n_101,
      \FSM_sequential_r_Game_state_reg[0]_0\ => game_mechanics_inst_n_102,
      \FSM_sequential_r_Game_state_reg[0]_1\ => \^r_game_state\(0),
      \FSM_sequential_r_Game_state_reg[0]_2\ => \^r_game_state\(1),
      \FSM_sequential_r_Game_state_reg[0]_3\ => \FSM_sequential_r_Game_state_reg[0]_0\,
      \FSM_sequential_r_play_state_reg[0]_0\ => \FSM_sequential_r_play_state_reg[0]\,
      Q(6 downto 2) => w_Ball_pos_x(7 downto 3),
      Q(1 downto 0) => w_Ball_pos_x(1 downto 0),
      \o_Cathodes[3]_i_4\ => local_game_display_inst_n_5,
      \o_Cathodes[3]_i_4_0\ => local_game_display_inst_n_6,
      \o_Cathodes[3]_i_9\ => local_game_display_inst_n_1,
      \o_Cathodes[5]_i_5\ => local_game_display_inst_n_7,
      \o_Cathodes[5]_i_5_0\ => \^r_message_index_reg[2]\,
      \o_Cathodes[5]_i_5_1\ => local_game_display_inst_n_8,
      \o_Cathodes_reg[2]_i_6\ => local_game_display_inst_n_9,
      o_Received_new_byte_reg => game_mechanics_inst_n_73,
      \o_uart_buffer_reg[32]\ => game_render_inst_n_20,
      \o_uart_buffer_reg[32]_0\ => game_render_inst_n_3,
      \o_uart_buffer_reg[4]\ => game_render_inst_n_15,
      r_Game_state(1 downto 0) => r_Game_state_0(1 downto 0),
      \r_Game_state__0\(0) => \r_Game_state__0\(1),
      \r_Game_state_reg[0]_0\ => game_mechanics_inst_n_36,
      \r_Game_state_reg[0]_1\ => game_mechanics_inst_n_70,
      \r_Game_state_reg[1]_0\ => game_mechanics_inst_n_33,
      \r_Game_state_reg[1]_1\ => game_mechanics_inst_n_34,
      \r_Game_state_reg[1]_2\ => game_mechanics_inst_n_72,
      \r_Game_state_reg[1]_3\ => \r_Game_state_reg[1]\,
      \r_Game_state_reg[1]_4\ => \r_game_value_reg_n_0_[1]\,
      \r_Game_state_reg[1]_5\ => \r_game_value_reg_n_0_[0]\,
      \r_Paddle_size_reg[2]\ => \r_Paddle_size_reg[2]\,
      \r_Paddle_size_reg[2]_0\ => \r_Paddle_size_reg[2]_0\,
      r_ball_dir_x2_carry_0 => r_ball_dir_x2_carry,
      \r_ball_dir_x2_inferred__0/i__carry_0\ => \r_ball_dir_x2_inferred__0/i__carry\,
      \r_ball_dir_x2_inferred__0/i__carry_1\ => \r_ball_dir_x2_inferred__0/i__carry_0\,
      \r_ball_dir_x2_inferred__1/i__carry_0\ => \r_ball_dir_x2_inferred__1/i__carry\,
      \r_ball_dir_x2_inferred__2/i__carry_0\ => \r_ball_dir_x2_inferred__2/i__carry\,
      \r_ball_dir_x2_inferred__2/i__carry_1\ => \r_ball_dir_x2_inferred__2/i__carry_0\,
      \r_ball_pos_x_reg[0]_0\ => game_mechanics_inst_n_14,
      \r_ball_pos_x_reg[1]_0\ => game_mechanics_inst_n_15,
      \r_ball_pos_x_reg[1]_1\ => game_mechanics_inst_n_38,
      \r_ball_pos_x_reg[1]_2\ => game_mechanics_inst_n_84,
      \r_ball_pos_x_reg[2]_0\ => game_mechanics_inst_n_10,
      \r_ball_pos_x_reg[2]_1\ => game_mechanics_inst_n_16,
      \r_ball_pos_x_reg[3]_0\ => game_mechanics_inst_n_11,
      \r_ball_pos_x_reg[3]_1\ => game_mechanics_inst_n_13,
      \r_ball_pos_x_reg[3]_2\ => game_mechanics_inst_n_17,
      \r_ball_pos_x_reg[4]_0\ => game_mechanics_inst_n_18,
      \r_ball_pos_x_reg[5]_0\ => game_mechanics_inst_n_19,
      \r_ball_pos_x_reg[5]_1\ => game_mechanics_inst_n_83,
      \r_ball_pos_x_reg[6]_0\ => game_mechanics_inst_n_20,
      \r_ball_pos_x_reg[7]_0\ => game_mechanics_inst_n_21,
      \r_ball_pos_y_reg[0]_0\ => game_mechanics_inst_n_22,
      \r_ball_pos_y_reg[1]_0\ => game_mechanics_inst_n_28,
      \r_ball_pos_y_reg[1]_1\ => game_mechanics_inst_n_37,
      \r_ball_pos_y_reg[2]_0\ => game_mechanics_inst_n_29,
      \r_ball_pos_y_reg[2]_1\ => game_mechanics_inst_n_56,
      \r_ball_pos_y_reg[3]_0\ => game_mechanics_inst_n_30,
      \r_ball_pos_y_reg[4]_0\ => game_mechanics_inst_n_31,
      \r_ball_pos_y_reg[4]_1\ => game_mechanics_inst_n_54,
      \r_ball_pos_y_reg[5]_0\(4 downto 2) => w_Ball_pos_y(5 downto 3),
      \r_ball_pos_y_reg[5]_0\(1 downto 0) => w_Ball_pos_y(1 downto 0),
      \r_ball_pos_y_reg[5]_1\ => game_mechanics_inst_n_32,
      \r_ball_pos_y_reg[5]_2\ => game_mechanics_inst_n_55,
      r_ball_pre_x(2 downto 0) => r_ball_pre_x(2 downto 0),
      \r_ball_pre_x_reg[0]\ => game_render_inst_n_10,
      \r_ball_rate_reg[14]_0\ => \r_ball_rate_reg[14]\,
      \r_ball_rate_reg[17]_0\ => \r_ball_rate_reg[17]\,
      \r_ball_rate_reg[18]_0\ => \r_ball_rate_reg[18]\,
      \r_ball_rate_reg[19]_0\ => \r_ball_rate_reg[19]\,
      \r_ball_rate_reg[23]_0\(16 downto 0) => \r_ball_rate_reg[23]\(16 downto 0),
      \r_ball_rate_reg[4]_0\ => \r_ball_rate_reg[4]\,
      \r_ball_rate_reg[6]_0\ => \r_ball_rate_reg[6]\,
      \r_ball_rate_reg[9]_0\ => \r_ball_rate_reg[9]\,
      r_ball_state(0) => r_ball_state(1),
      \r_ball_state[0]_i_2\ => game_render_inst_n_30,
      \r_ball_state[0]_i_2_0\ => game_render_inst_n_31,
      \r_ball_state[0]_i_2_1\ => game_render_inst_n_23,
      \r_ball_state_reg[1]\ => game_mechanics_inst_n_12,
      \r_ball_state_reg[1]_0\ => game_mechanics_inst_n_52,
      \r_ball_state_reg[1]_1\ => game_mechanics_inst_n_53,
      \r_ball_state_reg[1]_2\ => game_mechanics_inst_n_88,
      \r_ball_state_reg[1]_3\ => \^w_tx_send\,
      r_game_value(0) => r_game_value(0),
      \r_message_index_reg[1]\ => \o_uart_buffer_reg[54]\,
      \r_old2_pos__0\(5 downto 0) => \r_old2_pos__0\(5 downto 0),
      \r_p1_paddle_pos[5]_i_6\ => \r_p1_paddle_pos[5]_i_6\,
      \r_p1_paddle_pos_reg[0]_0\ => game_mechanics_inst_n_39,
      \r_p1_paddle_pos_reg[0]_1\ => \r_p1_paddle_pos_reg[0]\,
      \r_p1_paddle_pos_reg[0]_2\ => \r_p1_paddle_pos_reg[0]_0\,
      \r_p1_paddle_pos_reg[1]_0\ => \r_p1_paddle_pos_reg[1]\,
      \r_p1_paddle_pos_reg[1]_1\ => \r_p1_paddle_pos_reg[1]_0\,
      \r_p1_paddle_pos_reg[2]_0\ => \r_p1_paddle_pos_reg[2]\,
      \r_p1_paddle_pos_reg[3]_0\(3 downto 0) => \r_p1_paddle_pos_reg[3]\(3 downto 0),
      \r_p1_paddle_pos_reg[3]_1\(3 downto 0) => \r_p1_paddle_pos_reg[3]_0\(3 downto 0),
      \r_p1_paddle_pos_reg[4]_0\ => \r_p1_paddle_pos_reg[4]\,
      \r_p1_paddle_pos_reg[5]_0\ => \r_p1_paddle_pos_reg[5]\,
      \r_p1_paddle_pos_reg[5]_1\ => \r_p1_paddle_pos_reg[5]_0\,
      \r_p1_score_reg[0]_0\ => game_mechanics_inst_n_65,
      \r_p1_score_reg[0]_1\ => game_mechanics_inst_n_78,
      \r_p1_score_reg[1]_0\ => game_mechanics_inst_n_80,
      \r_p1_score_reg[1]_1\ => game_mechanics_inst_n_89,
      \r_p2_paddle_pos[5]_i_6\ => \r_p2_paddle_pos[5]_i_6\,
      \r_p2_paddle_pos[5]_i_7\ => \r_p2_paddle_pos[5]_i_7\,
      \r_p2_paddle_pos_reg[0]_0\ => game_mechanics_inst_n_51,
      \r_p2_paddle_pos_reg[0]_1\ => \r_p2_paddle_pos_reg[0]\,
      \r_p2_paddle_pos_reg[0]_2\ => \r_p2_paddle_pos_reg[0]_0\,
      \r_p2_paddle_pos_reg[1]_0\ => \r_p2_paddle_pos_reg[1]\,
      \r_p2_paddle_pos_reg[1]_1\ => \r_p2_paddle_pos_reg[1]_0\,
      \r_p2_paddle_pos_reg[2]_0\ => \r_p2_paddle_pos_reg[2]\,
      \r_p2_paddle_pos_reg[3]_0\ => game_mechanics_inst_n_44,
      \r_p2_paddle_pos_reg[3]_1\(3 downto 0) => D(3 downto 0),
      \r_p2_paddle_pos_reg[4]_0\ => \r_p2_paddle_pos_reg[4]\,
      \r_p2_paddle_pos_reg[5]_0\(5 downto 4) => w_P2_paddle(5 downto 4),
      \r_p2_paddle_pos_reg[5]_0\(3 downto 0) => \^r_p2_paddle_pos_reg[3]\(3 downto 0),
      \r_p2_paddle_pos_reg[5]_1\ => \r_p2_paddle_pos_reg[5]\,
      \r_p2_paddle_pos_reg[5]_2\ => \r_p2_paddle_pos_reg[5]_0\,
      \r_p2_score_reg[0]_0\ => game_mechanics_inst_n_76,
      \r_p2_score_reg[0]_1\ => game_mechanics_inst_n_77,
      \r_p2_score_reg[0]_2\ => game_mechanics_inst_n_79,
      \r_p2_score_reg[0]_3\ => game_mechanics_inst_n_81,
      \r_p2_score_reg[0]_4\ => game_mechanics_inst_n_82,
      \r_pad1_new_pos[5]_i_3_0\(5 downto 0) => \r_old1_pos__0\(5 downto 0),
      \r_pad1_state_reg[0]\(0) => game_mechanics_inst_n_99,
      \r_pad2_new_pos_reg[0]\ => game_render_inst_n_19,
      \r_pad2_new_pos_reg[5]\ => game_render_inst_n_14,
      \r_pad2_new_pos_reg[5]_0\ => game_render_inst_n_13,
      \r_pad2_state_reg[0]\ => game_mechanics_inst_n_100,
      \r_pad2_state_reg[1]\ => game_mechanics_inst_n_86,
      \r_pad2_state_reg[1]_0\ => game_mechanics_inst_n_87,
      r_screen_render_state(1 downto 0) => r_screen_render_state(1 downto 0),
      r_send_pending_reg => game_mechanics_inst_n_35,
      r_winner_reg => r_winner_i_2_n_0,
      r_winner_reg_0 => r_winner_reg_n_0,
      w_New_key => w_New_key,
      w_P1_score(1 downto 0) => w_P1_score(1 downto 0),
      w_P2_score(1 downto 0) => w_P2_score(1 downto 0),
      w_Paddle_size(2 downto 0) => w_Paddle_size(2 downto 0),
      w_TX_ready => w_TX_ready
    );
game_render_inst: entity work.message_prep
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CO(0) => game_mechanics_inst_n_2,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      D(5) => game_mechanics_inst_n_93,
      D(4) => game_mechanics_inst_n_94,
      D(3) => game_mechanics_inst_n_95,
      D(2) => game_mechanics_inst_n_96,
      D(1) => game_mechanics_inst_n_97,
      D(0) => game_mechanics_inst_n_98,
      E(0) => game_mechanics_inst_n_99,
      Q(6 downto 2) => w_Ball_pos_x(7 downto 3),
      Q(1 downto 0) => w_Ball_pos_x(1 downto 0),
      \o_uart_buffer[49]_i_13_0\ => \o_uart_buffer[49]_i_13\,
      \o_uart_buffer[57]_i_2_0\ => game_mechanics_inst_n_56,
      \o_uart_buffer[58]_i_2_0\ => game_mechanics_inst_n_55,
      \o_uart_buffer_reg[16]_0\ => r_winner_reg_n_0,
      \o_uart_buffer_reg[17]_0\ => game_mechanics_inst_n_13,
      \o_uart_buffer_reg[18]_0\ => game_mechanics_inst_n_84,
      \o_uart_buffer_reg[19]_0\ => game_mechanics_inst_n_12,
      \o_uart_buffer_reg[25]_0\ => game_mechanics_inst_n_83,
      \o_uart_buffer_reg[26]_0\ => game_mechanics_inst_n_10,
      \o_uart_buffer_reg[27]_0\ => game_mechanics_inst_n_34,
      \o_uart_buffer_reg[27]_1\ => game_mechanics_inst_n_11,
      \o_uart_buffer_reg[32]_0\ => game_mechanics_inst_n_88,
      \o_uart_buffer_reg[49]_0\ => game_mechanics_inst_n_54,
      \o_uart_buffer_reg[4]_0\ => game_mechanics_inst_n_33,
      \o_uart_buffer_reg[50]_0\ => game_mechanics_inst_n_53,
      \o_uart_buffer_reg[51]_0\ => game_mechanics_inst_n_52,
      \o_uart_buffer_reg[54]_0\ => \o_uart_buffer_reg[54]\,
      \o_uart_buffer_reg[78]_0\(69 downto 0) => \o_uart_buffer_reg[78]\(69 downto 0),
      r_Game_state(1 downto 0) => r_Game_state_0(1 downto 0),
      \r_Game_state_reg[1]\ => game_render_inst_n_18,
      \r_Pad_chars_reg[3]_0\ => game_mechanics_inst_n_70,
      \r_ball_pre_x_reg[0]_0\ => game_mechanics_inst_n_72,
      \r_ball_pre_x_reg[0]_1\ => game_mechanics_inst_n_14,
      \r_ball_pre_x_reg[1]_0\ => game_mechanics_inst_n_15,
      \r_ball_pre_x_reg[2]_0\(2 downto 0) => r_ball_pre_x(2 downto 0),
      \r_ball_pre_x_reg[2]_1\ => game_mechanics_inst_n_16,
      \r_ball_pre_x_reg[3]_0\ => game_mechanics_inst_n_17,
      \r_ball_pre_x_reg[4]_0\ => game_mechanics_inst_n_18,
      \r_ball_pre_x_reg[5]_0\ => game_mechanics_inst_n_19,
      \r_ball_pre_x_reg[6]_0\ => game_mechanics_inst_n_20,
      \r_ball_pre_x_reg[7]_0\ => game_mechanics_inst_n_21,
      \r_ball_pre_y_reg[0]_0\ => game_render_inst_n_23,
      \r_ball_pre_y_reg[0]_1\ => game_mechanics_inst_n_22,
      \r_ball_pre_y_reg[1]_0\ => game_render_inst_n_30,
      \r_ball_pre_y_reg[1]_1\ => game_mechanics_inst_n_28,
      \r_ball_pre_y_reg[2]_0\ => game_render_inst_n_31,
      \r_ball_pre_y_reg[2]_1\ => game_mechanics_inst_n_29,
      \r_ball_pre_y_reg[3]_0\ => game_mechanics_inst_n_30,
      \r_ball_pre_y_reg[4]_0\ => game_mechanics_inst_n_31,
      \r_ball_pre_y_reg[5]_0\ => game_mechanics_inst_n_32,
      \r_ball_state[0]_i_2_0\(4 downto 2) => w_Ball_pos_y(5 downto 3),
      \r_ball_state[0]_i_2_0\(1 downto 0) => w_Ball_pos_y(1 downto 0),
      \r_ball_state_reg[0]_0\ => game_render_inst_n_15,
      \r_ball_state_reg[0]_1\ => game_render_inst_n_20,
      \r_ball_state_reg[0]_2\ => game_mechanics_inst_n_36,
      \r_ball_state_reg[0]_3\ => game_mechanics_inst_n_38,
      \r_ball_state_reg[0]_4\ => game_mechanics_inst_n_37,
      \r_ball_state_reg[1]_0\(0) => r_ball_state(1),
      \r_ball_state_reg[1]_1\ => game_render_inst_n_10,
      \r_ball_state_reg[1]_2\ => game_mechanics_inst_n_35,
      \r_message_index_reg[1]_0\(0) => game_mechanics_inst_n_85,
      \r_old1_pos_reg[5]_0\(5 downto 0) => \r_old1_pos__0\(5 downto 0),
      \r_old2_pos__0\(5 downto 0) => \r_old2_pos__0\(5 downto 0),
      \r_pad1_new_pos_reg[1]_0\(1 downto 0) => Q(1 downto 0),
      \r_pad1_state_reg[0]_0\ => game_render_inst_n_19,
      \r_pad1_state_reg[1]_0\ => game_render_inst_n_21,
      \r_pad1_step_reg[0]_0\ => game_mechanics_inst_n_39,
      \r_pad2_new_pos_reg[0]_0\ => game_mechanics_inst_n_86,
      \r_pad2_new_pos_reg[5]_0\ => game_mechanics_inst_n_100,
      \r_pad2_new_pos_reg[5]_1\(5 downto 4) => w_P2_paddle(5 downto 4),
      \r_pad2_new_pos_reg[5]_1\(3 downto 0) => \^r_p2_paddle_pos_reg[3]\(3 downto 0),
      \r_pad2_state_reg[0]_0\ => game_render_inst_n_14,
      \r_pad2_state_reg[0]_1\ => game_mechanics_inst_n_87,
      \r_pad2_state_reg[1]_0\ => game_render_inst_n_3,
      \r_pad2_state_reg[1]_1\ => game_render_inst_n_13,
      \r_pad2_state_reg[1]_2\ => game_render_inst_n_22,
      \r_pad2_step_reg[0]_0\ => game_mechanics_inst_n_51,
      \r_pad2_step_reg[0]_1\ => game_mechanics_inst_n_44,
      r_screen_render_state(1 downto 0) => r_screen_render_state(1 downto 0),
      r_send_pending_reg_0 => \^w_tx_send\,
      r_send_pending_reg_1 => game_render_inst_n_11,
      r_send_pending_reg_2 => game_render_inst_n_12,
      r_send_pending_reg_3 => r_send_pending_i_1_n_0,
      r_send_pending_reg_4 => r_send_pending_reg,
      r_wait_state(0) => r_wait_state(0),
      \r_wait_state_reg[0]_0\ => \r_wait_state[0]_i_1_n_0\,
      w_Paddle_size(2 downto 0) => w_Paddle_size(2 downto 0),
      w_TX_count(0) => w_TX_count(0),
      w_TX_ready => w_TX_ready
    );
local_game_display_inst: entity work.display_output
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      \FSM_sequential_r_display_state_reg[2]_0\ => \r_game_value_reg_n_0_[0]\,
      \FSM_sequential_r_display_state_reg[2]_1\ => \r_game_value_reg_n_0_[1]\,
      \o_Anodes_reg[7]_0\(7 downto 0) => \o_Anodes_reg[7]\(7 downto 0),
      \o_Cathodes[0]_i_7_0\ => game_mechanics_inst_n_82,
      \o_Cathodes[1]_i_5_0\ => \o_Cathodes[1]_i_5\,
      \o_Cathodes[2]_i_2_0\ => game_mechanics_inst_n_76,
      \o_Cathodes[2]_i_2_1\ => game_mechanics_inst_n_77,
      \o_Cathodes[3]_i_2_0\ => game_mechanics_inst_n_80,
      \o_Cathodes[5]_i_3_0\ => game_mechanics_inst_n_65,
      \o_Cathodes_reg[0]_0\ => \o_Cathodes_reg[0]\,
      \o_Cathodes_reg[0]_1\ => \o_Cathodes_reg[0]_0\,
      \o_Cathodes_reg[1]_0\ => \o_Cathodes_reg[1]\,
      \o_Cathodes_reg[3]_0\ => \o_Cathodes_reg[3]\,
      \o_Cathodes_reg[4]_0\ => \o_Cathodes_reg[4]\,
      \o_Cathodes_reg[4]_1\ => game_mechanics_inst_n_81,
      \o_Cathodes_reg[4]_2\ => game_mechanics_inst_n_79,
      \o_Cathodes_reg[5]_0\ => \o_Cathodes_reg[5]\,
      \o_Cathodes_reg[5]_1\ => game_mechanics_inst_n_78,
      \o_Cathodes_reg[6]_0\(6 downto 0) => \o_Cathodes_reg[6]\(6 downto 0),
      \o_Cathodes_reg[6]_1\(3 downto 0) => \o_Cathodes_reg[6]_0\(3 downto 0),
      \o_LED16_bgr_reg[0]_0\(2 downto 0) => \o_LED16_bgr_reg[0]\(2 downto 0),
      \o_LED17_bgr_reg[0]_0\(2 downto 0) => \o_LED17_bgr_reg[0]\(2 downto 0),
      r_Blink_reg_0 => r_Blink,
      \r_Message_index_reg[0]_0\ => \r_Message_index_reg[0]\,
      \r_Message_index_reg[0]_1\ => \r_Message_index_reg[0]_0\,
      \r_Message_index_reg[0]_2\ => local_game_display_inst_n_9,
      \r_Message_index_reg[1]_0\ => local_game_display_inst_n_1,
      \r_Message_index_reg[1]_1\ => local_game_display_inst_n_6,
      \r_Message_index_reg[1]_2\ => local_game_display_inst_n_7,
      \r_Message_index_reg[2]_0\ => \^r_message_index_reg[2]\,
      \r_Scroll_offset_reg[0]_0\ => local_game_display_inst_n_5,
      \r_p2_score_reg[0]\ => local_game_display_inst_n_8,
      w_Mod_display_state(1 downto 0) => w_Mod_display_state(1 downto 0),
      w_P1_score(1 downto 0) => w_P1_score(1 downto 0),
      w_P2_score(1 downto 0) => w_P2_score(1 downto 0),
      w_Paddle_size(2 downto 0) => w_Paddle_size(2 downto 0)
    );
o_idle_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511115111"
    )
        port map (
      I0 => \FSM_sequential_r_Game_state_reg[0]_0\,
      I1 => CPU_RESETN_IBUF,
      I2 => \^r_game_state\(1),
      I3 => w_New_key,
      I4 => \^r_game_state\(0),
      I5 => \^w_idle_state\,
      O => o_idle_state_i_1_n_0
    );
o_idle_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => o_idle_state_i_1_n_0,
      Q => \^w_idle_state\,
      R => '0'
    );
\r_game_value[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => game_mechanics_inst_n_73,
      I1 => r_game_value(0),
      I2 => \r_game_value_reg_n_0_[0]\,
      O => \r_game_value[0]_i_1_n_0\
    );
\r_game_value[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBFFBBBABB00"
    )
        port map (
      I0 => \r_game_value[1]_i_2_n_0\,
      I1 => \r_game_value_reg[1]_0\,
      I2 => CPU_RESETN_IBUF,
      I3 => \r_Game_state__0\(1),
      I4 => \r_game_value_reg[1]_1\,
      I5 => \r_game_value_reg_n_0_[1]\,
      O => \r_game_value[1]_i_1_n_0\
    );
\r_game_value[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => w_New_key,
      I1 => \^r_game_state\(0),
      I2 => \^r_game_state\(1),
      I3 => CPU_RESETN_IBUF,
      O => \r_game_value[1]_i_2_n_0\
    );
\r_game_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_game_value[0]_i_1_n_0\,
      Q => \r_game_value_reg_n_0_[0]\,
      R => '0'
    );
\r_game_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_game_value[1]_i_1_n_0\,
      Q => \r_game_value_reg_n_0_[1]\,
      R => '0'
    );
r_send_pending_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD0FFFFFFD00000"
    )
        port map (
      I0 => game_render_inst_n_22,
      I1 => game_render_inst_n_21,
      I2 => game_render_inst_n_18,
      I3 => game_render_inst_n_11,
      I4 => game_render_inst_n_12,
      I5 => \^w_tx_send\,
      O => r_send_pending_i_1_n_0
    );
\r_wait_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC4400000050"
    )
        port map (
      I0 => game_mechanics_inst_n_70,
      I1 => CPU_RESETN_IBUF,
      I2 => \o_uart_buffer_reg[54]\,
      I3 => r_screen_render_state(0),
      I4 => r_screen_render_state(1),
      I5 => r_wait_state(0),
      O => \r_wait_state[0]_i_1_n_0\
    );
r_winner_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_game_state\(0),
      I1 => \^r_game_state\(1),
      O => r_winner_i_2_n_0
    );
r_winner_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => game_mechanics_inst_n_89,
      Q => r_winner_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity modification_module is
  port (
    \r_Paddle_size_reg[0]_0\ : out STD_LOGIC;
    w_Paddle_size : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_Paddle_size_reg[2]_0\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]_1\ : out STD_LOGIC;
    \r_Paddle_size_reg[0]_1\ : out STD_LOGIC;
    \r_Paddle_size_reg[0]_2\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]_2\ : out STD_LOGIC;
    \r_Paddle_size_reg[2]_3\ : out STD_LOGIC;
    \r_Paddle_size_reg[0]_3\ : out STD_LOGIC;
    \r_Paddle_size_reg[0]_4\ : out STD_LOGIC;
    \r_Ball_speed_reg[2]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \r_Ball_speed_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_Paddle_size_reg[1]_0\ : out STD_LOGIC;
    \r_Ball_speed_reg[0]_0\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_0\ : out STD_LOGIC;
    \r_Message_index_reg[2]\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_1\ : out STD_LOGIC;
    \r_Ball_speed_reg[0]_1\ : out STD_LOGIC;
    \o_Mod_display_state_reg[1]_0\ : out STD_LOGIC;
    w_Mod_display_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_Mod_display_state_reg[1]_1\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_2\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_3\ : out STD_LOGIC;
    \r_Ball_speed_reg[2]_1\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_4\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_5\ : out STD_LOGIC;
    \r_Ball_speed_reg[2]_2\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_6\ : out STD_LOGIC;
    \o_Mod_display_state_reg[0]_0\ : out STD_LOGIC;
    \r_Ball_speed_reg[1]_7\ : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i__carry_i_5\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i__carry_i_5__1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CPU_RESETN_IBUF : in STD_LOGIC;
    BTN_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    w_idle_state : in STD_LOGIC;
    \r_ball_rate_reg[16]\ : in STD_LOGIC;
    \o_Cathodes_reg[3]\ : in STD_LOGIC;
    r_Blink : in STD_LOGIC;
    \o_Cathodes_reg[5]\ : in STD_LOGIC;
    \o_Cathodes_reg[5]_0\ : in STD_LOGIC;
    w_New_key : in STD_LOGIC;
    r_Game_state : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end modification_module;

architecture STRUCTURE of modification_module is
  signal button_inputs_inst_n_10 : STD_LOGIC;
  signal button_inputs_inst_n_11 : STD_LOGIC;
  signal button_inputs_inst_n_12 : STD_LOGIC;
  signal button_inputs_inst_n_13 : STD_LOGIC;
  signal button_inputs_inst_n_14 : STD_LOGIC;
  signal button_inputs_inst_n_3 : STD_LOGIC;
  signal button_inputs_inst_n_4 : STD_LOGIC;
  signal button_inputs_inst_n_5 : STD_LOGIC;
  signal button_inputs_inst_n_6 : STD_LOGIC;
  signal button_inputs_inst_n_7 : STD_LOGIC;
  signal button_inputs_inst_n_8 : STD_LOGIC;
  signal button_inputs_inst_n_9 : STD_LOGIC;
  signal \o_Mod_display_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_Mod_display_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_Mod_display_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_Ball_speed[3]_i_6_n_0\ : STD_LOGIC;
  signal \r_Ball_speed[3]_i_7_n_0\ : STD_LOGIC;
  signal \^r_ball_speed_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_Btn_cycle : STD_LOGIC;
  signal r_Btn_inc : STD_LOGIC;
  signal r_Btn_mod_req : STD_LOGIC;
  signal \r_Mod_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Mod_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Mod_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Mod_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Paddle_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Paddle_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Paddle_size[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_Paddle_size[2]_i_1_n_0\ : STD_LOGIC;
  signal \^w_mod_display_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^w_paddle_size\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_ball_rate[0]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \r_ball_rate[10]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \r_ball_rate[11]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \r_ball_rate[12]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \r_ball_rate[13]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \r_ball_rate[14]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \r_ball_rate[15]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \r_ball_rate[16]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \r_ball_rate[17]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \r_ball_rate[18]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \r_ball_rate[19]_i_2\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \r_ball_rate[1]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \r_ball_rate[20]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \r_ball_rate[21]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \r_ball_rate[22]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \r_ball_rate[23]_i_2\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \r_ball_rate[2]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \r_ball_rate[3]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \r_ball_rate[4]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \r_ball_rate[5]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \r_ball_rate[6]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \r_ball_rate[7]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \r_ball_rate[8]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \r_ball_rate[9]_i_1\ : label is "soft_lutpair161";
begin
  \r_Ball_speed_reg[3]_0\(3 downto 0) <= \^r_ball_speed_reg[3]_0\(3 downto 0);
  w_Mod_display_state(1 downto 0) <= \^w_mod_display_state\(1 downto 0);
  w_Paddle_size(2 downto 0) <= \^w_paddle_size\(2 downto 0);
\FSM_sequential_r_Game_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^w_mod_display_state\(0),
      I1 => w_New_key,
      I2 => \^w_mod_display_state\(1),
      I3 => r_Game_state(0),
      I4 => r_Game_state(1),
      O => \o_Mod_display_state_reg[0]_0\
    );
button_inputs_inst: entity work.button_inputs
     port map (
      BTN_IBUF(4 downto 0) => BTN_IBUF(4 downto 0),
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CPU_RESETN => button_inputs_inst_n_5,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      D(3) => button_inputs_inst_n_10,
      D(2) => button_inputs_inst_n_11,
      D(1) => button_inputs_inst_n_12,
      D(0) => button_inputs_inst_n_13,
      E(0) => button_inputs_inst_n_14,
      Q(3 downto 0) => \^r_ball_speed_reg[3]_0\(3 downto 0),
      o_Increment_reg_0 => button_inputs_inst_n_6,
      o_Increment_reg_1 => button_inputs_inst_n_9,
      o_Mod_state_change_reg_0 => button_inputs_inst_n_3,
      o_Mod_state_change_reg_1 => button_inputs_inst_n_4,
      o_Mod_state_change_reg_2 => button_inputs_inst_n_7,
      o_Mod_state_change_reg_3 => button_inputs_inst_n_8,
      \r_Ball_speed_reg[0]\ => \r_Mod_state_reg_n_0_[0]\,
      \r_Ball_speed_reg[0]_0\ => \r_Mod_state_reg_n_0_[1]\,
      \r_Ball_speed_reg[3]\ => \r_Ball_speed[3]_i_6_n_0\,
      \r_Ball_speed_reg[3]_0\ => \r_Ball_speed[3]_i_7_n_0\,
      r_Btn_cycle => r_Btn_cycle,
      r_Btn_inc => r_Btn_inc,
      r_Btn_mod_req => r_Btn_mod_req,
      \r_Paddle_size_reg[0]\ => \r_Paddle_size[1]_i_3_n_0\,
      \r_Paddle_size_reg[2]\ => \^w_paddle_size\(2),
      \r_Paddle_size_reg[2]_0\ => \^w_paddle_size\(1),
      \r_Paddle_size_reg[2]_1\ => \^w_paddle_size\(0),
      w_idle_state => w_idle_state
    );
\i__carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^w_paddle_size\(0),
      I1 => \i__carry_i_5\(0),
      I2 => \^w_paddle_size\(1),
      I3 => \i__carry_i_5\(1),
      O => \r_Paddle_size_reg[0]_2\
    );
\i__carry_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^w_paddle_size\(0),
      I1 => \i__carry_i_5__1\(0),
      I2 => \^w_paddle_size\(1),
      I3 => \i__carry_i_5__1\(1),
      O => \r_Paddle_size_reg[0]_4\
    );
\i__carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077F077FFFFF"
    )
        port map (
      I0 => \^w_paddle_size\(0),
      I1 => \i__carry_i_5\(0),
      I2 => \^w_paddle_size\(1),
      I3 => \i__carry_i_5\(1),
      I4 => \^w_paddle_size\(2),
      I5 => \i__carry_i_5\(2),
      O => \r_Paddle_size_reg[0]_1\
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DDDDDD0000D0DD"
    )
        port map (
      I0 => \^w_paddle_size\(2),
      I1 => \i__carry_i_5__1\(2),
      I2 => \i__carry_i_5__1\(0),
      I3 => \^w_paddle_size\(0),
      I4 => \^w_paddle_size\(1),
      I5 => \i__carry_i_5__1\(1),
      O => \r_Paddle_size_reg[2]_3\
    );
\i__carry_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077F077FFFFF"
    )
        port map (
      I0 => \^w_paddle_size\(0),
      I1 => \i__carry_i_5__1\(0),
      I2 => \^w_paddle_size\(1),
      I3 => \i__carry_i_5__1\(1),
      I4 => \^w_paddle_size\(2),
      I5 => \i__carry_i_5__1\(2),
      O => \r_Paddle_size_reg[0]_3\
    );
\o_Cathodes[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(0),
      I1 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[0]_1\
    );
\o_Cathodes[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(3),
      O => \r_Ball_speed_reg[1]_0\
    );
\o_Cathodes[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => \^w_paddle_size\(1),
      I1 => \^w_paddle_size\(2),
      I2 => \^w_paddle_size\(0),
      O => \r_Paddle_size_reg[1]_0\
    );
\o_Cathodes[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[1]_7\
    );
\o_Cathodes[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF6C0000"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(0),
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(2),
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \o_Cathodes_reg[3]\,
      I5 => r_Blink,
      O => \r_Ball_speed_reg[0]_0\
    );
\o_Cathodes[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[1]_1\
    );
\o_Cathodes[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8AA888888AA"
    )
        port map (
      I0 => \o_Cathodes_reg[5]\,
      I1 => \o_Cathodes_reg[5]_0\,
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      I4 => \^r_ball_speed_reg[3]_0\(3),
      I5 => \^r_ball_speed_reg[3]_0\(1),
      O => \r_Message_index_reg[2]\
    );
\o_Mod_display_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => button_inputs_inst_n_4,
      I1 => button_inputs_inst_n_3,
      I2 => \^w_mod_display_state\(0),
      O => \o_Mod_display_state[0]_i_1_n_0\
    );
\o_Mod_display_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00070500000505"
    )
        port map (
      I0 => button_inputs_inst_n_7,
      I1 => r_Btn_mod_req,
      I2 => button_inputs_inst_n_8,
      I3 => CPU_RESETN_IBUF,
      I4 => \o_Mod_display_state[1]_i_4_n_0\,
      I5 => \^w_mod_display_state\(1),
      O => \o_Mod_display_state[1]_i_1_n_0\
    );
\o_Mod_display_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \r_Mod_state_reg_n_0_[0]\,
      I1 => \r_Mod_state_reg_n_0_[1]\,
      I2 => w_idle_state,
      O => \o_Mod_display_state[1]_i_4_n_0\
    );
\o_Mod_display_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \o_Mod_display_state[0]_i_1_n_0\,
      Q => \^w_mod_display_state\(0),
      R => '0'
    );
\o_Mod_display_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \o_Mod_display_state[1]_i_1_n_0\,
      Q => \^w_mod_display_state\(1),
      R => '0'
    );
\o_uart_buffer[50]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^w_paddle_size\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^w_paddle_size\(1),
      O => \r_Paddle_size_reg[0]_0\
    );
\r_Ball_speed[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => w_idle_state,
      I1 => \r_Mod_state_reg_n_0_[0]\,
      I2 => \r_Mod_state_reg_n_0_[1]\,
      O => \r_Ball_speed[3]_i_6_n_0\
    );
\r_Ball_speed[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \^r_ball_speed_reg[3]_0\(0),
      I2 => \^r_ball_speed_reg[3]_0\(1),
      O => \r_Ball_speed[3]_i_7_n_0\
    );
\r_Ball_speed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => button_inputs_inst_n_14,
      D => button_inputs_inst_n_13,
      Q => \^r_ball_speed_reg[3]_0\(0),
      R => '0'
    );
\r_Ball_speed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => button_inputs_inst_n_14,
      D => button_inputs_inst_n_12,
      Q => \^r_ball_speed_reg[3]_0\(1),
      R => '0'
    );
\r_Ball_speed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => button_inputs_inst_n_14,
      D => button_inputs_inst_n_11,
      Q => \^r_ball_speed_reg[3]_0\(2),
      R => '0'
    );
\r_Ball_speed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => button_inputs_inst_n_14,
      D => button_inputs_inst_n_10,
      Q => \^r_ball_speed_reg[3]_0\(3),
      R => '0'
    );
\r_Mod_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5412AAAA54100000"
    )
        port map (
      I0 => \r_Mod_state_reg_n_0_[0]\,
      I1 => \r_Mod_state_reg_n_0_[1]\,
      I2 => r_Btn_mod_req,
      I3 => r_Btn_cycle,
      I4 => w_idle_state,
      I5 => CPU_RESETN_IBUF,
      O => \r_Mod_state[0]_i_1_n_0\
    );
\r_Mod_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2204CCCC22000000"
    )
        port map (
      I0 => \r_Mod_state_reg_n_0_[0]\,
      I1 => \r_Mod_state_reg_n_0_[1]\,
      I2 => r_Btn_mod_req,
      I3 => r_Btn_cycle,
      I4 => w_idle_state,
      I5 => CPU_RESETN_IBUF,
      O => \r_Mod_state[1]_i_1_n_0\
    );
\r_Mod_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Mod_state[0]_i_1_n_0\,
      Q => \r_Mod_state_reg_n_0_[0]\,
      R => '0'
    );
\r_Mod_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Mod_state[1]_i_1_n_0\,
      Q => \r_Mod_state_reg_n_0_[1]\,
      R => '0'
    );
\r_Paddle_size[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => button_inputs_inst_n_6,
      I2 => \^w_paddle_size\(0),
      O => \r_Paddle_size[0]_i_1_n_0\
    );
\r_Paddle_size[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA6A600FF9999"
    )
        port map (
      I0 => \^w_paddle_size\(0),
      I1 => r_Btn_inc,
      I2 => \^w_paddle_size\(2),
      I3 => CPU_RESETN_IBUF,
      I4 => button_inputs_inst_n_6,
      I5 => \^w_paddle_size\(1),
      O => \r_Paddle_size[1]_i_1_n_0\
    );
\r_Paddle_size[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_Mod_state_reg_n_0_[0]\,
      I1 => w_idle_state,
      O => \r_Paddle_size[1]_i_3_n_0\
    );
\r_Paddle_size[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \r_Mod_state_reg_n_0_[0]\,
      I1 => w_idle_state,
      I2 => \r_Mod_state_reg_n_0_[1]\,
      I3 => button_inputs_inst_n_9,
      I4 => button_inputs_inst_n_5,
      I5 => \^w_paddle_size\(2),
      O => \r_Paddle_size[2]_i_1_n_0\
    );
\r_Paddle_size_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Paddle_size[0]_i_1_n_0\,
      Q => \^w_paddle_size\(0),
      R => '0'
    );
\r_Paddle_size_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Paddle_size[1]_i_1_n_0\,
      Q => \^w_paddle_size\(1),
      R => '0'
    );
\r_Paddle_size_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \r_Paddle_size[2]_i_1_n_0\,
      Q => \^w_paddle_size\(2),
      R => '0'
    );
r_ball_dir_x2_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DDDDDD0000D0DD"
    )
        port map (
      I0 => \^w_paddle_size\(2),
      I1 => \i__carry_i_5\(2),
      I2 => \i__carry_i_5\(0),
      I3 => \^w_paddle_size\(0),
      I4 => \^w_paddle_size\(1),
      I5 => \i__carry_i_5\(1),
      O => \r_Paddle_size_reg[2]_1\
    );
\r_ball_rate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1AC1FFFF"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \r_ball_rate_reg[16]\,
      O => \r_Ball_speed_reg[2]_0\(0)
    );
\r_ball_rate[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA02"
    )
        port map (
      I0 => \r_ball_rate_reg[16]\,
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      I4 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[2]_0\(7)
    );
\r_ball_rate[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0C000D0"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \r_ball_rate_reg[16]\,
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[2]_0\(8)
    );
\r_ball_rate[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000B0B0"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(0),
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \r_ball_rate_reg[16]\,
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[2]_0\(9)
    );
\r_ball_rate[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA082202"
    )
        port map (
      I0 => \r_ball_rate_reg[16]\,
      I1 => \^r_ball_speed_reg[3]_0\(0),
      I2 => \^r_ball_speed_reg[3]_0\(1),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      I4 => \^r_ball_speed_reg[3]_0\(3),
      O => \r_Ball_speed_reg[2]_0\(10)
    );
\r_ball_rate[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AEB"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(3),
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[1]_4\
    );
\r_ball_rate[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AA0A0A2"
    )
        port map (
      I0 => \r_ball_rate_reg[16]\,
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      I4 => \^r_ball_speed_reg[3]_0\(3),
      O => \r_Ball_speed_reg[2]_0\(11)
    );
\r_ball_rate[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"280880A2"
    )
        port map (
      I0 => \r_ball_rate_reg[16]\,
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      I4 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[2]_0\(12)
    );
\r_ball_rate[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E359"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(0),
      I2 => \^r_ball_speed_reg[3]_0\(2),
      I3 => \^r_ball_speed_reg[3]_0\(3),
      O => \r_Ball_speed_reg[1]_6\
    );
\r_ball_rate[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"358B"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(3),
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[1]_5\
    );
\r_ball_rate[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D9EB"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(3),
      I2 => \^r_ball_speed_reg[3]_0\(2),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[1]_2\
    );
\r_ball_rate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0800090"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(2),
      I2 => \r_ball_rate_reg[16]\,
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[2]_0\(1)
    );
\r_ball_rate[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0808CC"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(0),
      I1 => \r_ball_rate_reg[16]\,
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      I4 => \^r_ball_speed_reg[3]_0\(1),
      O => \r_Ball_speed_reg[2]_0\(13)
    );
\r_ball_rate[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044004"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(3),
      I1 => \r_ball_rate_reg[16]\,
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(1),
      I4 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[2]_0\(14)
    );
\r_ball_rate[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(3),
      I1 => \r_ball_rate_reg[16]\,
      I2 => \^r_ball_speed_reg[3]_0\(2),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[2]_0\(15)
    );
\r_ball_rate[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \r_ball_rate_reg[16]\,
      O => \r_Ball_speed_reg[2]_0\(16)
    );
\r_ball_rate[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4E210000"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(0),
      I1 => \^r_ball_speed_reg[3]_0\(2),
      I2 => \^r_ball_speed_reg[3]_0\(1),
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \r_ball_rate_reg[16]\,
      O => \r_Ball_speed_reg[2]_0\(2)
    );
\r_ball_rate[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C08004"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(0),
      I1 => \r_ball_rate_reg[16]\,
      I2 => \^r_ball_speed_reg[3]_0\(2),
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \^r_ball_speed_reg[3]_0\(1),
      O => \r_Ball_speed_reg[2]_0\(3)
    );
\r_ball_rate[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2425"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \^r_ball_speed_reg[3]_0\(3),
      I2 => \^r_ball_speed_reg[3]_0\(0),
      I3 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[1]_3\
    );
\r_ball_rate[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000888C"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \r_ball_rate_reg[16]\,
      I2 => \^r_ball_speed_reg[3]_0\(1),
      I3 => \^r_ball_speed_reg[3]_0\(3),
      I4 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[2]_0\(4)
    );
\r_ball_rate[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FD1"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \^r_ball_speed_reg[3]_0\(0),
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \^r_ball_speed_reg[3]_0\(1),
      O => \r_Ball_speed_reg[2]_1\
    );
\r_ball_rate[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44040C44"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(1),
      I1 => \r_ball_rate_reg[16]\,
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      I4 => \^r_ball_speed_reg[3]_0\(2),
      O => \r_Ball_speed_reg[2]_0\(5)
    );
\r_ball_rate[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2008002A"
    )
        port map (
      I0 => \r_ball_rate_reg[16]\,
      I1 => \^r_ball_speed_reg[3]_0\(2),
      I2 => \^r_ball_speed_reg[3]_0\(1),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      I4 => \^r_ball_speed_reg[3]_0\(3),
      O => \r_Ball_speed_reg[2]_0\(6)
    );
\r_ball_rate[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41FD"
    )
        port map (
      I0 => \^r_ball_speed_reg[3]_0\(2),
      I1 => \^r_ball_speed_reg[3]_0\(1),
      I2 => \^r_ball_speed_reg[3]_0\(3),
      I3 => \^r_ball_speed_reg[3]_0\(0),
      O => \r_Ball_speed_reg[2]_2\
    );
\r_game_value[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF04"
    )
        port map (
      I0 => \^w_mod_display_state\(1),
      I1 => w_New_key,
      I2 => \^w_mod_display_state\(0),
      I3 => r_Game_state(1),
      I4 => r_Game_state(0),
      O => \o_Mod_display_state_reg[1]_0\
    );
\r_game_value[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0FFF1F0F0F"
    )
        port map (
      I0 => \^w_mod_display_state\(1),
      I1 => \^w_mod_display_state\(0),
      I2 => CPU_RESETN_IBUF,
      I3 => r_Game_state(1),
      I4 => w_New_key,
      I5 => r_Game_state(0),
      O => \o_Mod_display_state_reg[1]_1\
    );
\r_p1_paddle_pos[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD00000EEEEEEE0"
    )
        port map (
      I0 => \^w_paddle_size\(2),
      I1 => \i__carry_i_5__1\(2),
      I2 => \i__carry_i_5__1\(0),
      I3 => \^w_paddle_size\(0),
      I4 => \i__carry_i_5__1\(1),
      I5 => \^w_paddle_size\(1),
      O => \r_Paddle_size_reg[2]_2\
    );
\r_p2_paddle_pos[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD00000EEEEEEE0"
    )
        port map (
      I0 => \^w_paddle_size\(2),
      I1 => \i__carry_i_5\(2),
      I2 => \i__carry_i_5\(0),
      I3 => \^w_paddle_size\(0),
      I4 => \i__carry_i_5\(1),
      I5 => \^w_paddle_size\(1),
      O => \r_Paddle_size_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_module is
  port (
    w_New_key : out STD_LOGIC;
    UART_RXD_OUT_OBUF : out STD_LOGIC;
    w_TX_ready : out STD_LOGIC;
    o_Ready_to_send_reg : out STD_LOGIC;
    o_Ready_to_send_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Received_byte_reg[4]\ : out STD_LOGIC;
    \o_Received_byte_reg[4]_0\ : out STD_LOGIC;
    \o_Received_byte_reg[3]\ : out STD_LOGIC;
    \o_Received_byte_reg[3]_0\ : out STD_LOGIC;
    \r_p1_paddle_pos_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Received_byte_reg[2]\ : out STD_LOGIC;
    \o_Received_byte_reg[2]_0\ : out STD_LOGIC;
    \o_Received_byte_reg[4]_1\ : out STD_LOGIC;
    \o_Received_byte_reg[4]_2\ : out STD_LOGIC;
    \o_Received_byte_reg[0]\ : out STD_LOGIC;
    UART_TXD_IN_IBUF : in STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    w_TX_send : in STD_LOGIC;
    CPU_RESETN_IBUF : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p2_paddle_pos_reg[3]_0\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_1\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_2\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_3\ : in STD_LOGIC;
    \r_p2_paddle_pos_reg[3]_4\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_p1_paddle_pos_reg[3]_1\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_2\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_3\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_4\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_5\ : in STD_LOGIC;
    \r_p1_paddle_pos_reg[3]_6\ : in STD_LOGIC;
    \r_TX_message_reg[78]\ : in STD_LOGIC_VECTOR ( 69 downto 0 );
    w_TX_count : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end uart_module;

architecture STRUCTURE of uart_module is
  signal uart_transmit_inst_n_1 : STD_LOGIC;
begin
uart_receive_inst: entity work.receive_uart
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      D(3 downto 0) => D(3 downto 0),
      UART_TXD_IN_IBUF => UART_TXD_IN_IBUF,
      \o_Received_byte_reg[0]_0\ => \o_Received_byte_reg[0]\,
      \o_Received_byte_reg[2]_0\ => \o_Received_byte_reg[2]\,
      \o_Received_byte_reg[2]_1\ => \o_Received_byte_reg[2]_0\,
      \o_Received_byte_reg[3]_0\ => \o_Received_byte_reg[3]\,
      \o_Received_byte_reg[3]_1\ => \o_Received_byte_reg[3]_0\,
      \o_Received_byte_reg[4]_0\ => \o_Received_byte_reg[4]\,
      \o_Received_byte_reg[4]_1\ => \o_Received_byte_reg[4]_0\,
      \o_Received_byte_reg[4]_2\ => \o_Received_byte_reg[4]_1\,
      \o_Received_byte_reg[4]_3\ => \o_Received_byte_reg[4]_2\,
      o_Received_new_byte_reg_0 => uart_transmit_inst_n_1,
      \r_p1_paddle_pos_reg[3]\(3 downto 0) => \r_p1_paddle_pos_reg[3]\(3 downto 0),
      \r_p1_paddle_pos_reg[3]_0\(3 downto 0) => \r_p1_paddle_pos_reg[3]_0\(3 downto 0),
      \r_p1_paddle_pos_reg[3]_1\ => \r_p1_paddle_pos_reg[3]_1\,
      \r_p1_paddle_pos_reg[3]_2\ => \r_p1_paddle_pos_reg[3]_2\,
      \r_p1_paddle_pos_reg[3]_3\ => \r_p1_paddle_pos_reg[3]_3\,
      \r_p1_paddle_pos_reg[3]_4\ => \r_p1_paddle_pos_reg[3]_4\,
      \r_p1_paddle_pos_reg[3]_5\ => \r_p1_paddle_pos_reg[3]_5\,
      \r_p1_paddle_pos_reg[3]_6\ => \r_p1_paddle_pos_reg[3]_6\,
      \r_p2_paddle_pos_reg[3]\(3 downto 0) => \r_p2_paddle_pos_reg[3]\(3 downto 0),
      \r_p2_paddle_pos_reg[3]_0\ => \r_p2_paddle_pos_reg[3]_0\,
      \r_p2_paddle_pos_reg[3]_1\ => \r_p2_paddle_pos_reg[3]_1\,
      \r_p2_paddle_pos_reg[3]_2\ => \r_p2_paddle_pos_reg[3]_2\,
      \r_p2_paddle_pos_reg[3]_3\ => \r_p2_paddle_pos_reg[3]_3\,
      \r_p2_paddle_pos_reg[3]_4\ => \r_p2_paddle_pos_reg[3]_4\,
      w_New_key => w_New_key
    );
uart_transmit_inst: entity work.transmit_uart
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CPU_RESETN => uart_transmit_inst_n_1,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      UART_RXD_OUT_OBUF => UART_RXD_OUT_OBUF,
      o_Ready_to_send_reg_0 => w_TX_ready,
      o_Ready_to_send_reg_1 => o_Ready_to_send_reg,
      o_Ready_to_send_reg_2 => o_Ready_to_send_reg_0,
      \r_TX_message_reg[78]_0\(69 downto 0) => \r_TX_message_reg[78]\(69 downto 0),
      w_TX_count(0) => w_TX_count(0),
      w_TX_send => w_TX_send
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pong_top is
  port (
    CLK100MHZ : in STD_LOGIC;
    CPU_RESETN : in STD_LOGIC;
    UART_RXD_OUT : out STD_LOGIC;
    UART_TXD_IN : in STD_LOGIC;
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    C : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LED17_BGR : out STD_LOGIC_VECTOR ( 0 to 2 );
    LED16_BGR : out STD_LOGIC_VECTOR ( 0 to 2 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pong_top : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of pong_top : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of pong_top : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of pong_top : entity is "84673793";
end pong_top;

architecture STRUCTURE of pong_top is
  signal AN_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BTN_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF_BUFG : STD_LOGIC;
  signal CPU_RESETN_IBUF : STD_LOGIC;
  signal C_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal LED16_BGR_OBUF : STD_LOGIC_VECTOR ( 0 to 2 );
  signal LED17_BGR_OBUF : STD_LOGIC_VECTOR ( 0 to 2 );
  signal UART_RXD_OUT_OBUF : STD_LOGIC;
  signal UART_TXD_IN_IBUF : STD_LOGIC;
  signal r_Blink : STD_LOGIC;
  signal r_Game_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal u_game_module_n_14 : STD_LOGIC;
  signal u_game_module_n_15 : STD_LOGIC;
  signal u_game_module_n_16 : STD_LOGIC;
  signal u_game_module_n_17 : STD_LOGIC;
  signal u_game_module_n_18 : STD_LOGIC;
  signal u_game_module_n_19 : STD_LOGIC;
  signal u_game_module_n_20 : STD_LOGIC;
  signal u_game_module_n_21 : STD_LOGIC;
  signal u_game_module_n_22 : STD_LOGIC;
  signal u_game_module_n_23 : STD_LOGIC;
  signal u_game_module_n_24 : STD_LOGIC;
  signal u_game_module_n_25 : STD_LOGIC;
  signal u_game_module_n_28 : STD_LOGIC;
  signal u_game_module_n_29 : STD_LOGIC;
  signal u_game_module_n_30 : STD_LOGIC;
  signal u_game_module_n_4 : STD_LOGIC;
  signal u_game_module_n_5 : STD_LOGIC;
  signal u_modification_module_n_0 : STD_LOGIC;
  signal u_modification_module_n_10 : STD_LOGIC;
  signal u_modification_module_n_11 : STD_LOGIC;
  signal u_modification_module_n_12 : STD_LOGIC;
  signal u_modification_module_n_13 : STD_LOGIC;
  signal u_modification_module_n_14 : STD_LOGIC;
  signal u_modification_module_n_15 : STD_LOGIC;
  signal u_modification_module_n_16 : STD_LOGIC;
  signal u_modification_module_n_17 : STD_LOGIC;
  signal u_modification_module_n_18 : STD_LOGIC;
  signal u_modification_module_n_19 : STD_LOGIC;
  signal u_modification_module_n_20 : STD_LOGIC;
  signal u_modification_module_n_21 : STD_LOGIC;
  signal u_modification_module_n_22 : STD_LOGIC;
  signal u_modification_module_n_23 : STD_LOGIC;
  signal u_modification_module_n_24 : STD_LOGIC;
  signal u_modification_module_n_25 : STD_LOGIC;
  signal u_modification_module_n_26 : STD_LOGIC;
  signal u_modification_module_n_27 : STD_LOGIC;
  signal u_modification_module_n_28 : STD_LOGIC;
  signal u_modification_module_n_33 : STD_LOGIC;
  signal u_modification_module_n_34 : STD_LOGIC;
  signal u_modification_module_n_35 : STD_LOGIC;
  signal u_modification_module_n_36 : STD_LOGIC;
  signal u_modification_module_n_37 : STD_LOGIC;
  signal u_modification_module_n_38 : STD_LOGIC;
  signal u_modification_module_n_39 : STD_LOGIC;
  signal u_modification_module_n_4 : STD_LOGIC;
  signal u_modification_module_n_42 : STD_LOGIC;
  signal u_modification_module_n_43 : STD_LOGIC;
  signal u_modification_module_n_44 : STD_LOGIC;
  signal u_modification_module_n_45 : STD_LOGIC;
  signal u_modification_module_n_46 : STD_LOGIC;
  signal u_modification_module_n_47 : STD_LOGIC;
  signal u_modification_module_n_48 : STD_LOGIC;
  signal u_modification_module_n_49 : STD_LOGIC;
  signal u_modification_module_n_5 : STD_LOGIC;
  signal u_modification_module_n_50 : STD_LOGIC;
  signal u_modification_module_n_51 : STD_LOGIC;
  signal u_modification_module_n_6 : STD_LOGIC;
  signal u_modification_module_n_7 : STD_LOGIC;
  signal u_modification_module_n_8 : STD_LOGIC;
  signal u_modification_module_n_9 : STD_LOGIC;
  signal u_uart_module_n_10 : STD_LOGIC;
  signal u_uart_module_n_11 : STD_LOGIC;
  signal u_uart_module_n_12 : STD_LOGIC;
  signal u_uart_module_n_13 : STD_LOGIC;
  signal u_uart_module_n_14 : STD_LOGIC;
  signal u_uart_module_n_15 : STD_LOGIC;
  signal u_uart_module_n_16 : STD_LOGIC;
  signal u_uart_module_n_17 : STD_LOGIC;
  signal u_uart_module_n_18 : STD_LOGIC;
  signal u_uart_module_n_19 : STD_LOGIC;
  signal u_uart_module_n_20 : STD_LOGIC;
  signal u_uart_module_n_21 : STD_LOGIC;
  signal u_uart_module_n_3 : STD_LOGIC;
  signal u_uart_module_n_4 : STD_LOGIC;
  signal u_uart_module_n_5 : STD_LOGIC;
  signal u_uart_module_n_6 : STD_LOGIC;
  signal u_uart_module_n_7 : STD_LOGIC;
  signal u_uart_module_n_8 : STD_LOGIC;
  signal u_uart_module_n_9 : STD_LOGIC;
  signal w_Ball_speed : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_Mod_display_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_New_key : STD_LOGIC;
  signal w_P1_paddle : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_P2_paddle : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_Paddle_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_TX_buffer : STD_LOGIC_VECTOR ( 78 downto 0 );
  signal w_TX_count : STD_LOGIC_VECTOR ( 3 to 3 );
  signal w_TX_ready : STD_LOGIC;
  signal w_TX_send : STD_LOGIC;
  signal w_idle_state : STD_LOGIC;
begin
\AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(0),
      O => AN(0)
    );
\AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(1),
      O => AN(1)
    );
\AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(2),
      O => AN(2)
    );
\AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(3),
      O => AN(3)
    );
\AN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(4),
      O => AN(4)
    );
\AN_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(5),
      O => AN(5)
    );
\AN_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(6),
      O => AN(6)
    );
\AN_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(7),
      O => AN(7)
    );
\BTN_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN(0),
      O => BTN_IBUF(0)
    );
\BTN_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN(1),
      O => BTN_IBUF(1)
    );
\BTN_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN(2),
      O => BTN_IBUF(2)
    );
\BTN_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN(3),
      O => BTN_IBUF(3)
    );
\BTN_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => BTN(4),
      O => BTN_IBUF(4)
    );
CLK100MHZ_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK100MHZ_IBUF,
      O => CLK100MHZ_IBUF_BUFG
    );
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
CPU_RESETN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CPU_RESETN,
      O => CPU_RESETN_IBUF
    );
\C_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(0),
      O => C(0)
    );
\C_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(1),
      O => C(1)
    );
\C_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(2),
      O => C(2)
    );
\C_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(3),
      O => C(3)
    );
\C_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(4),
      O => C(4)
    );
\C_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(5),
      O => C(5)
    );
\C_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF(6),
      O => C(6)
    );
\C_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => C(7)
    );
\LED16_BGR_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED16_BGR_OBUF(0),
      O => LED16_BGR(0)
    );
\LED16_BGR_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED16_BGR_OBUF(1),
      O => LED16_BGR(1)
    );
\LED16_BGR_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED16_BGR_OBUF(2),
      O => LED16_BGR(2)
    );
\LED17_BGR_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED17_BGR_OBUF(0),
      O => LED17_BGR(0)
    );
\LED17_BGR_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED17_BGR_OBUF(1),
      O => LED17_BGR(1)
    );
\LED17_BGR_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED17_BGR_OBUF(2),
      O => LED17_BGR(2)
    );
UART_RXD_OUT_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => UART_RXD_OUT_OBUF,
      O => UART_RXD_OUT
    );
UART_TXD_IN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => UART_TXD_IN,
      O => UART_TXD_IN_IBUF
    );
u_game_module: entity work.game_module
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      D(3) => u_uart_module_n_5,
      D(2) => u_uart_module_n_6,
      D(1) => u_uart_module_n_7,
      D(0) => u_uart_module_n_8,
      \FSM_sequential_r_Game_state_reg[0]_0\ => u_modification_module_n_50,
      \FSM_sequential_r_play_state_reg[0]\ => u_game_module_n_25,
      Q(1) => u_game_module_n_4,
      Q(0) => u_game_module_n_5,
      \o_Anodes_reg[7]\(7 downto 0) => AN_OBUF(7 downto 0),
      \o_Cathodes[1]_i_5\ => u_modification_module_n_51,
      \o_Cathodes_reg[0]\ => u_modification_module_n_38,
      \o_Cathodes_reg[0]_0\ => u_modification_module_n_35,
      \o_Cathodes_reg[1]\ => u_modification_module_n_33,
      \o_Cathodes_reg[3]\ => u_modification_module_n_34,
      \o_Cathodes_reg[4]\ => u_modification_module_n_37,
      \o_Cathodes_reg[5]\ => u_modification_module_n_36,
      \o_Cathodes_reg[6]\(6 downto 0) => C_OBUF(6 downto 0),
      \o_Cathodes_reg[6]_0\(3 downto 0) => w_Ball_speed(3 downto 0),
      \o_LED16_bgr_reg[0]\(2) => LED16_BGR_OBUF(0),
      \o_LED16_bgr_reg[0]\(1) => LED16_BGR_OBUF(1),
      \o_LED16_bgr_reg[0]\(0) => LED16_BGR_OBUF(2),
      \o_LED17_bgr_reg[0]\(2) => LED17_BGR_OBUF(0),
      \o_LED17_bgr_reg[0]\(1) => LED17_BGR_OBUF(1),
      \o_LED17_bgr_reg[0]\(0) => LED17_BGR_OBUF(2),
      \o_uart_buffer[49]_i_13\ => u_modification_module_n_0,
      \o_uart_buffer_reg[54]\ => u_uart_module_n_3,
      \o_uart_buffer_reg[78]\(69 downto 63) => w_TX_buffer(78 downto 72),
      \o_uart_buffer_reg[78]\(62 downto 56) => w_TX_buffer(70 downto 64),
      \o_uart_buffer_reg[78]\(55 downto 49) => w_TX_buffer(62 downto 56),
      \o_uart_buffer_reg[78]\(48 downto 42) => w_TX_buffer(54 downto 48),
      \o_uart_buffer_reg[78]\(41 downto 35) => w_TX_buffer(46 downto 40),
      \o_uart_buffer_reg[78]\(34 downto 28) => w_TX_buffer(38 downto 32),
      \o_uart_buffer_reg[78]\(27 downto 21) => w_TX_buffer(30 downto 24),
      \o_uart_buffer_reg[78]\(20 downto 14) => w_TX_buffer(22 downto 16),
      \o_uart_buffer_reg[78]\(13 downto 7) => w_TX_buffer(14 downto 8),
      \o_uart_buffer_reg[78]\(6 downto 0) => w_TX_buffer(6 downto 0),
      r_Blink => r_Blink,
      r_Game_state(1 downto 0) => r_Game_state(1 downto 0),
      \r_Game_state_reg[1]\ => u_game_module_n_28,
      \r_Message_index_reg[0]\ => u_game_module_n_22,
      \r_Message_index_reg[0]_0\ => u_game_module_n_24,
      \r_Message_index_reg[2]\ => u_game_module_n_23,
      \r_Paddle_size_reg[2]\ => u_game_module_n_17,
      \r_Paddle_size_reg[2]_0\ => u_game_module_n_21,
      r_ball_dir_x2_carry => u_modification_module_n_5,
      \r_ball_dir_x2_inferred__0/i__carry\ => u_modification_module_n_7,
      \r_ball_dir_x2_inferred__0/i__carry_0\ => u_modification_module_n_6,
      \r_ball_dir_x2_inferred__1/i__carry\ => u_modification_module_n_9,
      \r_ball_dir_x2_inferred__2/i__carry\ => u_modification_module_n_11,
      \r_ball_dir_x2_inferred__2/i__carry_0\ => u_modification_module_n_10,
      \r_ball_rate_reg[14]\ => u_modification_module_n_46,
      \r_ball_rate_reg[17]\ => u_modification_module_n_49,
      \r_ball_rate_reg[18]\ => u_modification_module_n_47,
      \r_ball_rate_reg[19]\ => u_modification_module_n_43,
      \r_ball_rate_reg[23]\(16) => u_modification_module_n_12,
      \r_ball_rate_reg[23]\(15) => u_modification_module_n_13,
      \r_ball_rate_reg[23]\(14) => u_modification_module_n_14,
      \r_ball_rate_reg[23]\(13) => u_modification_module_n_15,
      \r_ball_rate_reg[23]\(12) => u_modification_module_n_16,
      \r_ball_rate_reg[23]\(11) => u_modification_module_n_17,
      \r_ball_rate_reg[23]\(10) => u_modification_module_n_18,
      \r_ball_rate_reg[23]\(9) => u_modification_module_n_19,
      \r_ball_rate_reg[23]\(8) => u_modification_module_n_20,
      \r_ball_rate_reg[23]\(7) => u_modification_module_n_21,
      \r_ball_rate_reg[23]\(6) => u_modification_module_n_22,
      \r_ball_rate_reg[23]\(5) => u_modification_module_n_23,
      \r_ball_rate_reg[23]\(4) => u_modification_module_n_24,
      \r_ball_rate_reg[23]\(3) => u_modification_module_n_25,
      \r_ball_rate_reg[23]\(2) => u_modification_module_n_26,
      \r_ball_rate_reg[23]\(1) => u_modification_module_n_27,
      \r_ball_rate_reg[23]\(0) => u_modification_module_n_28,
      \r_ball_rate_reg[4]\ => u_modification_module_n_44,
      \r_ball_rate_reg[6]\ => u_modification_module_n_45,
      \r_ball_rate_reg[9]\ => u_modification_module_n_48,
      \r_game_value_reg[1]_0\ => u_modification_module_n_39,
      \r_game_value_reg[1]_1\ => u_modification_module_n_42,
      \r_p1_paddle_pos[5]_i_6\ => u_modification_module_n_8,
      \r_p1_paddle_pos_reg[0]\ => u_game_module_n_20,
      \r_p1_paddle_pos_reg[0]_0\ => u_uart_module_n_20,
      \r_p1_paddle_pos_reg[1]\ => u_game_module_n_18,
      \r_p1_paddle_pos_reg[1]_0\ => u_game_module_n_30,
      \r_p1_paddle_pos_reg[2]\ => u_game_module_n_19,
      \r_p1_paddle_pos_reg[3]\(3 downto 0) => w_P1_paddle(3 downto 0),
      \r_p1_paddle_pos_reg[3]_0\(3) => u_uart_module_n_13,
      \r_p1_paddle_pos_reg[3]_0\(2) => u_uart_module_n_14,
      \r_p1_paddle_pos_reg[3]_0\(1) => u_uart_module_n_15,
      \r_p1_paddle_pos_reg[3]_0\(0) => u_uart_module_n_16,
      \r_p1_paddle_pos_reg[4]\ => u_uart_module_n_18,
      \r_p1_paddle_pos_reg[5]\ => u_uart_module_n_19,
      \r_p1_paddle_pos_reg[5]_0\ => u_uart_module_n_17,
      \r_p2_paddle_pos[5]_i_6\ => u_modification_module_n_4,
      \r_p2_paddle_pos[5]_i_7\ => u_uart_module_n_21,
      \r_p2_paddle_pos_reg[0]\ => u_game_module_n_16,
      \r_p2_paddle_pos_reg[0]_0\ => u_uart_module_n_12,
      \r_p2_paddle_pos_reg[1]\ => u_game_module_n_14,
      \r_p2_paddle_pos_reg[1]_0\ => u_game_module_n_29,
      \r_p2_paddle_pos_reg[2]\ => u_game_module_n_15,
      \r_p2_paddle_pos_reg[3]\(3 downto 0) => w_P2_paddle(3 downto 0),
      \r_p2_paddle_pos_reg[4]\ => u_uart_module_n_10,
      \r_p2_paddle_pos_reg[5]\ => u_uart_module_n_11,
      \r_p2_paddle_pos_reg[5]_0\ => u_uart_module_n_9,
      r_send_pending_reg => u_uart_module_n_4,
      w_Mod_display_state(1 downto 0) => w_Mod_display_state(1 downto 0),
      w_New_key => w_New_key,
      w_Paddle_size(2 downto 0) => w_Paddle_size(2 downto 0),
      w_TX_count(0) => w_TX_count(3),
      w_TX_ready => w_TX_ready,
      w_TX_send => w_TX_send,
      w_idle_state => w_idle_state
    );
u_modification_module: entity work.modification_module
     port map (
      BTN_IBUF(4 downto 0) => BTN_IBUF(4 downto 0),
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      Q(1) => u_game_module_n_4,
      Q(0) => u_game_module_n_5,
      \i__carry_i_5\(2 downto 0) => w_P2_paddle(2 downto 0),
      \i__carry_i_5__1\(2 downto 0) => w_P1_paddle(2 downto 0),
      \o_Cathodes_reg[3]\ => u_game_module_n_22,
      \o_Cathodes_reg[5]\ => u_game_module_n_23,
      \o_Cathodes_reg[5]_0\ => u_game_module_n_24,
      \o_Mod_display_state_reg[0]_0\ => u_modification_module_n_50,
      \o_Mod_display_state_reg[1]_0\ => u_modification_module_n_39,
      \o_Mod_display_state_reg[1]_1\ => u_modification_module_n_42,
      \r_Ball_speed_reg[0]_0\ => u_modification_module_n_34,
      \r_Ball_speed_reg[0]_1\ => u_modification_module_n_38,
      \r_Ball_speed_reg[1]_0\ => u_modification_module_n_35,
      \r_Ball_speed_reg[1]_1\ => u_modification_module_n_37,
      \r_Ball_speed_reg[1]_2\ => u_modification_module_n_43,
      \r_Ball_speed_reg[1]_3\ => u_modification_module_n_44,
      \r_Ball_speed_reg[1]_4\ => u_modification_module_n_46,
      \r_Ball_speed_reg[1]_5\ => u_modification_module_n_47,
      \r_Ball_speed_reg[1]_6\ => u_modification_module_n_49,
      \r_Ball_speed_reg[1]_7\ => u_modification_module_n_51,
      \r_Ball_speed_reg[2]_0\(16) => u_modification_module_n_12,
      \r_Ball_speed_reg[2]_0\(15) => u_modification_module_n_13,
      \r_Ball_speed_reg[2]_0\(14) => u_modification_module_n_14,
      \r_Ball_speed_reg[2]_0\(13) => u_modification_module_n_15,
      \r_Ball_speed_reg[2]_0\(12) => u_modification_module_n_16,
      \r_Ball_speed_reg[2]_0\(11) => u_modification_module_n_17,
      \r_Ball_speed_reg[2]_0\(10) => u_modification_module_n_18,
      \r_Ball_speed_reg[2]_0\(9) => u_modification_module_n_19,
      \r_Ball_speed_reg[2]_0\(8) => u_modification_module_n_20,
      \r_Ball_speed_reg[2]_0\(7) => u_modification_module_n_21,
      \r_Ball_speed_reg[2]_0\(6) => u_modification_module_n_22,
      \r_Ball_speed_reg[2]_0\(5) => u_modification_module_n_23,
      \r_Ball_speed_reg[2]_0\(4) => u_modification_module_n_24,
      \r_Ball_speed_reg[2]_0\(3) => u_modification_module_n_25,
      \r_Ball_speed_reg[2]_0\(2) => u_modification_module_n_26,
      \r_Ball_speed_reg[2]_0\(1) => u_modification_module_n_27,
      \r_Ball_speed_reg[2]_0\(0) => u_modification_module_n_28,
      \r_Ball_speed_reg[2]_1\ => u_modification_module_n_45,
      \r_Ball_speed_reg[2]_2\ => u_modification_module_n_48,
      \r_Ball_speed_reg[3]_0\(3 downto 0) => w_Ball_speed(3 downto 0),
      r_Blink => r_Blink,
      r_Game_state(1 downto 0) => r_Game_state(1 downto 0),
      \r_Message_index_reg[2]\ => u_modification_module_n_36,
      \r_Paddle_size_reg[0]_0\ => u_modification_module_n_0,
      \r_Paddle_size_reg[0]_1\ => u_modification_module_n_6,
      \r_Paddle_size_reg[0]_2\ => u_modification_module_n_7,
      \r_Paddle_size_reg[0]_3\ => u_modification_module_n_10,
      \r_Paddle_size_reg[0]_4\ => u_modification_module_n_11,
      \r_Paddle_size_reg[1]_0\ => u_modification_module_n_33,
      \r_Paddle_size_reg[2]_0\ => u_modification_module_n_4,
      \r_Paddle_size_reg[2]_1\ => u_modification_module_n_5,
      \r_Paddle_size_reg[2]_2\ => u_modification_module_n_8,
      \r_Paddle_size_reg[2]_3\ => u_modification_module_n_9,
      \r_ball_rate_reg[16]\ => u_game_module_n_25,
      w_Mod_display_state(1 downto 0) => w_Mod_display_state(1 downto 0),
      w_New_key => w_New_key,
      w_Paddle_size(2 downto 0) => w_Paddle_size(2 downto 0),
      w_idle_state => w_idle_state
    );
u_uart_module: entity work.uart_module
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      D(3) => u_uart_module_n_5,
      D(2) => u_uart_module_n_6,
      D(1) => u_uart_module_n_7,
      D(0) => u_uart_module_n_8,
      UART_RXD_OUT_OBUF => UART_RXD_OUT_OBUF,
      UART_TXD_IN_IBUF => UART_TXD_IN_IBUF,
      o_Ready_to_send_reg => u_uart_module_n_3,
      o_Ready_to_send_reg_0 => u_uart_module_n_4,
      \o_Received_byte_reg[0]\ => u_uart_module_n_21,
      \o_Received_byte_reg[2]\ => u_uart_module_n_17,
      \o_Received_byte_reg[2]_0\ => u_uart_module_n_18,
      \o_Received_byte_reg[3]\ => u_uart_module_n_11,
      \o_Received_byte_reg[3]_0\ => u_uart_module_n_12,
      \o_Received_byte_reg[4]\ => u_uart_module_n_9,
      \o_Received_byte_reg[4]_0\ => u_uart_module_n_10,
      \o_Received_byte_reg[4]_1\ => u_uart_module_n_19,
      \o_Received_byte_reg[4]_2\ => u_uart_module_n_20,
      \r_TX_message_reg[78]\(69 downto 63) => w_TX_buffer(78 downto 72),
      \r_TX_message_reg[78]\(62 downto 56) => w_TX_buffer(70 downto 64),
      \r_TX_message_reg[78]\(55 downto 49) => w_TX_buffer(62 downto 56),
      \r_TX_message_reg[78]\(48 downto 42) => w_TX_buffer(54 downto 48),
      \r_TX_message_reg[78]\(41 downto 35) => w_TX_buffer(46 downto 40),
      \r_TX_message_reg[78]\(34 downto 28) => w_TX_buffer(38 downto 32),
      \r_TX_message_reg[78]\(27 downto 21) => w_TX_buffer(30 downto 24),
      \r_TX_message_reg[78]\(20 downto 14) => w_TX_buffer(22 downto 16),
      \r_TX_message_reg[78]\(13 downto 7) => w_TX_buffer(14 downto 8),
      \r_TX_message_reg[78]\(6 downto 0) => w_TX_buffer(6 downto 0),
      \r_p1_paddle_pos_reg[3]\(3) => u_uart_module_n_13,
      \r_p1_paddle_pos_reg[3]\(2) => u_uart_module_n_14,
      \r_p1_paddle_pos_reg[3]\(1) => u_uart_module_n_15,
      \r_p1_paddle_pos_reg[3]\(0) => u_uart_module_n_16,
      \r_p1_paddle_pos_reg[3]_0\(3 downto 0) => w_P1_paddle(3 downto 0),
      \r_p1_paddle_pos_reg[3]_1\ => u_game_module_n_18,
      \r_p1_paddle_pos_reg[3]_2\ => u_game_module_n_30,
      \r_p1_paddle_pos_reg[3]_3\ => u_game_module_n_19,
      \r_p1_paddle_pos_reg[3]_4\ => u_game_module_n_20,
      \r_p1_paddle_pos_reg[3]_5\ => u_game_module_n_21,
      \r_p1_paddle_pos_reg[3]_6\ => u_game_module_n_28,
      \r_p2_paddle_pos_reg[3]\(3 downto 0) => w_P2_paddle(3 downto 0),
      \r_p2_paddle_pos_reg[3]_0\ => u_game_module_n_14,
      \r_p2_paddle_pos_reg[3]_1\ => u_game_module_n_29,
      \r_p2_paddle_pos_reg[3]_2\ => u_game_module_n_15,
      \r_p2_paddle_pos_reg[3]_3\ => u_game_module_n_16,
      \r_p2_paddle_pos_reg[3]_4\ => u_game_module_n_17,
      w_New_key => w_New_key,
      w_TX_count(0) => w_TX_count(3),
      w_TX_ready => w_TX_ready,
      w_TX_send => w_TX_send
    );
end STRUCTURE;
