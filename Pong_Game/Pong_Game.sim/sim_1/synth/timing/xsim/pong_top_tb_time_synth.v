// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri May  8 00:05:38 2026
// Host        : Curse-Legion running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/jim32/OneDrive/Desktop/VHDL/ThursdayGroupG/Pong_Game/Pong_Game.sim/sim_1/synth/timing/xsim/pong_top_tb_time_synth.v
// Design      : pong_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module button_inputs
   (r_Btn_mod_req,
    r_Btn_cycle,
    r_Btn_inc,
    o_Mod_state_change_reg_0,
    o_Mod_state_change_reg_1,
    CPU_RESETN,
    o_Increment_reg_0,
    o_Mod_state_change_reg_2,
    o_Mod_state_change_reg_3,
    o_Increment_reg_1,
    D,
    E,
    CLK100MHZ_IBUF_BUFG,
    CPU_RESETN_IBUF,
    BTN_IBUF,
    \r_Ball_speed_reg[0] ,
    \r_Ball_speed_reg[0]_0 ,
    w_idle_state,
    \r_Paddle_size_reg[2] ,
    \r_Paddle_size_reg[2]_0 ,
    \r_Paddle_size_reg[0] ,
    \r_Paddle_size_reg[2]_1 ,
    \r_Ball_speed_reg[3] ,
    \r_Ball_speed_reg[3]_0 ,
    Q);
  output r_Btn_mod_req;
  output r_Btn_cycle;
  output r_Btn_inc;
  output o_Mod_state_change_reg_0;
  output o_Mod_state_change_reg_1;
  output CPU_RESETN;
  output o_Increment_reg_0;
  output o_Mod_state_change_reg_2;
  output o_Mod_state_change_reg_3;
  output o_Increment_reg_1;
  output [3:0]D;
  output [0:0]E;
  input CLK100MHZ_IBUF_BUFG;
  input CPU_RESETN_IBUF;
  input [4:0]BTN_IBUF;
  input \r_Ball_speed_reg[0] ;
  input \r_Ball_speed_reg[0]_0 ;
  input w_idle_state;
  input \r_Paddle_size_reg[2] ;
  input \r_Paddle_size_reg[2]_0 ;
  input \r_Paddle_size_reg[0] ;
  input \r_Paddle_size_reg[2]_1 ;
  input \r_Ball_speed_reg[3] ;
  input \r_Ball_speed_reg[3]_0 ;
  input [3:0]Q;

  wire [4:0]BTN_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire o_Increment_reg_0;
  wire o_Increment_reg_1;
  wire o_Mod_state_change_reg_0;
  wire o_Mod_state_change_reg_1;
  wire o_Mod_state_change_reg_2;
  wire o_Mod_state_change_reg_3;
  wire \r_Ball_speed[3]_i_3_n_0 ;
  wire \r_Ball_speed[3]_i_4_n_0 ;
  wire \r_Ball_speed[3]_i_5_n_0 ;
  wire \r_Ball_speed_reg[0] ;
  wire \r_Ball_speed_reg[0]_0 ;
  wire \r_Ball_speed_reg[3] ;
  wire \r_Ball_speed_reg[3]_0 ;
  wire r_Btn_cycle;
  wire r_Btn_dec;
  wire r_Btn_inc;
  wire r_Btn_mod_req;
  wire \r_Paddle_size_reg[0] ;
  wire \r_Paddle_size_reg[2] ;
  wire \r_Paddle_size_reg[2]_0 ;
  wire \r_Paddle_size_reg[2]_1 ;
  wire r_spam_center;
  wire r_spam_center0;
  wire r_spam_center_i_1_n_0;
  wire r_spam_down;
  wire r_spam_down0;
  wire r_spam_down_i_1_n_0;
  wire r_spam_lr;
  wire r_spam_lr0;
  wire r_spam_lr_i_1_n_0;
  wire r_spam_up;
  wire r_spam_up0;
  wire r_spam_up_i_1_n_0;
  wire w_idle_state;

  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_Decrement_i_1
       (.I0(BTN_IBUF[4]),
        .I1(r_spam_down),
        .O(r_spam_down0));
  FDRE #(
    .INIT(1'b0)) 
    o_Decrement_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_down0),
        .Q(r_Btn_dec),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_Increment_i_1
       (.I0(BTN_IBUF[1]),
        .I1(r_spam_up),
        .O(r_spam_up0));
  FDRE #(
    .INIT(1'b0)) 
    o_Increment_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_up0),
        .Q(r_Btn_inc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF3BF008CF7FF0080)) 
    \o_Mod_display_state[0]_i_2 
       (.I0(r_Btn_cycle),
        .I1(w_idle_state),
        .I2(\r_Ball_speed_reg[0]_0 ),
        .I3(\r_Ball_speed_reg[0] ),
        .I4(CPU_RESETN_IBUF),
        .I5(r_Btn_mod_req),
        .O(o_Mod_state_change_reg_1));
  LUT6 #(
    .INIT(64'h0FEFEFCF0F0F0F0F)) 
    \o_Mod_display_state[0]_i_3 
       (.I0(r_Btn_cycle),
        .I1(r_Btn_mod_req),
        .I2(CPU_RESETN_IBUF),
        .I3(\r_Ball_speed_reg[0] ),
        .I4(\r_Ball_speed_reg[0]_0 ),
        .I5(w_idle_state),
        .O(o_Mod_state_change_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \o_Mod_display_state[1]_i_2 
       (.I0(r_Btn_cycle),
        .I1(\r_Ball_speed_reg[0] ),
        .O(o_Mod_state_change_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_Mod_display_state[1]_i_3 
       (.I0(r_Btn_cycle),
        .I1(\r_Ball_speed_reg[0]_0 ),
        .O(o_Mod_state_change_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h54)) 
    o_Mod_state_change_i_1
       (.I0(r_spam_lr),
        .I1(BTN_IBUF[2]),
        .I2(BTN_IBUF[3]),
        .O(r_spam_lr0));
  FDRE #(
    .INIT(1'b0)) 
    o_Mod_state_change_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_lr0),
        .Q(r_Btn_cycle),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_Mod_state_request_i_1
       (.I0(BTN_IBUF[0]),
        .I1(r_spam_center),
        .O(r_spam_center0));
  FDRE #(
    .INIT(1'b0)) 
    o_Mod_state_request_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_center0),
        .Q(r_Btn_mod_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \r_Ball_speed[0]_i_1 
       (.I0(\r_Ball_speed[3]_i_3_n_0 ),
        .I1(\r_Ball_speed[3]_i_4_n_0 ),
        .I2(w_idle_state),
        .I3(\r_Ball_speed_reg[0] ),
        .I4(\r_Ball_speed_reg[0]_0 ),
        .I5(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h0AA08008)) 
    \r_Ball_speed[1]_i_1 
       (.I0(\r_Ball_speed_reg[3] ),
        .I1(\r_Ball_speed[3]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_Ball_speed[3]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6A6AA9FFFFFFFFFF)) 
    \r_Ball_speed[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\r_Ball_speed[3]_i_4_n_0 ),
        .I4(\r_Ball_speed[3]_i_3_n_0 ),
        .I5(\r_Ball_speed_reg[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000E000FFFFFFFF)) 
    \r_Ball_speed[3]_i_1 
       (.I0(\r_Ball_speed[3]_i_3_n_0 ),
        .I1(\r_Ball_speed[3]_i_4_n_0 ),
        .I2(w_idle_state),
        .I3(\r_Ball_speed_reg[0] ),
        .I4(\r_Ball_speed_reg[0]_0 ),
        .I5(CPU_RESETN_IBUF),
        .O(E));
  LUT5 #(
    .INIT(32'h08888808)) 
    \r_Ball_speed[3]_i_2 
       (.I0(\r_Ball_speed[3]_i_5_n_0 ),
        .I1(\r_Ball_speed_reg[3] ),
        .I2(\r_Ball_speed[3]_i_3_n_0 ),
        .I3(\r_Ball_speed_reg[3]_0 ),
        .I4(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \r_Ball_speed[3]_i_3 
       (.I0(r_Btn_inc),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\r_Ball_speed[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \r_Ball_speed[3]_i_4 
       (.I0(r_Btn_dec),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\r_Ball_speed[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCACACACACAEACAAA)) 
    \r_Ball_speed[3]_i_5 
       (.I0(r_Btn_inc),
        .I1(r_Btn_dec),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\r_Ball_speed[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF01D5FFFFFFFF)) 
    \r_Paddle_size[1]_i_2 
       (.I0(r_Btn_inc),
        .I1(\r_Paddle_size_reg[2] ),
        .I2(\r_Paddle_size_reg[2]_0 ),
        .I3(r_Btn_dec),
        .I4(\r_Paddle_size_reg[0] ),
        .I5(\r_Ball_speed_reg[0]_0 ),
        .O(o_Increment_reg_0));
  LUT5 #(
    .INIT(32'h1337D7F7)) 
    \r_Paddle_size[2]_i_2 
       (.I0(r_Btn_inc),
        .I1(\r_Paddle_size_reg[2] ),
        .I2(\r_Paddle_size_reg[2]_0 ),
        .I3(\r_Paddle_size_reg[2]_1 ),
        .I4(r_Btn_dec),
        .O(o_Increment_reg_1));
  LUT2 #(
    .INIT(4'h7)) 
    \r_Paddle_size[2]_i_3 
       (.I0(CPU_RESETN_IBUF),
        .I1(o_Increment_reg_0),
        .O(CPU_RESETN));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    r_spam_center_i_1
       (.I0(CPU_RESETN_IBUF),
        .I1(r_spam_center),
        .I2(BTN_IBUF[0]),
        .O(r_spam_center_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_spam_center_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_center_i_1_n_0),
        .Q(r_spam_center),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    r_spam_down_i_1
       (.I0(CPU_RESETN_IBUF),
        .I1(r_spam_down),
        .I2(BTN_IBUF[4]),
        .O(r_spam_down_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_spam_down_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_down_i_1_n_0),
        .Q(r_spam_down),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hA8FC)) 
    r_spam_lr_i_1
       (.I0(CPU_RESETN_IBUF),
        .I1(BTN_IBUF[3]),
        .I2(BTN_IBUF[2]),
        .I3(r_spam_lr),
        .O(r_spam_lr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_spam_lr_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_lr_i_1_n_0),
        .Q(r_spam_lr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    r_spam_up_i_1
       (.I0(CPU_RESETN_IBUF),
        .I1(r_spam_up),
        .I2(BTN_IBUF[1]),
        .O(r_spam_up_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_spam_up_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_spam_up_i_1_n_0),
        .Q(r_spam_up),
        .R(1'b0));
endmodule

module display_output
   (r_Blink_reg_0,
    \r_Message_index_reg[1]_0 ,
    \r_Message_index_reg[0]_0 ,
    \r_Message_index_reg[2]_0 ,
    \r_Message_index_reg[0]_1 ,
    \r_Scroll_offset_reg[0]_0 ,
    \r_Message_index_reg[1]_1 ,
    \r_Message_index_reg[1]_2 ,
    \r_p2_score_reg[0] ,
    \r_Message_index_reg[0]_2 ,
    \o_Anodes_reg[7]_0 ,
    \o_Cathodes_reg[6]_0 ,
    \o_LED17_bgr_reg[0]_0 ,
    \o_LED16_bgr_reg[0]_0 ,
    CLK100MHZ_IBUF_BUFG,
    w_Paddle_size,
    \o_Cathodes_reg[6]_1 ,
    \o_Cathodes_reg[4]_0 ,
    \o_Cathodes[1]_i_5_0 ,
    \o_Cathodes[2]_i_2_0 ,
    \o_Cathodes_reg[5]_0 ,
    \o_Cathodes[5]_i_3_0 ,
    CPU_RESETN_IBUF,
    \o_Cathodes_reg[0]_0 ,
    \o_Cathodes_reg[0]_1 ,
    \o_Cathodes[3]_i_2_0 ,
    \o_Cathodes_reg[4]_1 ,
    \o_Cathodes_reg[3]_0 ,
    \o_Cathodes_reg[4]_2 ,
    \o_Cathodes_reg[5]_1 ,
    \o_Cathodes[2]_i_2_1 ,
    w_P2_score,
    w_P1_score,
    \o_Cathodes_reg[1]_0 ,
    w_Mod_display_state,
    \FSM_sequential_r_display_state_reg[2]_0 ,
    \FSM_sequential_r_display_state_reg[2]_1 ,
    \o_Cathodes[0]_i_7_0 );
  output r_Blink_reg_0;
  output \r_Message_index_reg[1]_0 ;
  output \r_Message_index_reg[0]_0 ;
  output \r_Message_index_reg[2]_0 ;
  output \r_Message_index_reg[0]_1 ;
  output \r_Scroll_offset_reg[0]_0 ;
  output \r_Message_index_reg[1]_1 ;
  output \r_Message_index_reg[1]_2 ;
  output \r_p2_score_reg[0] ;
  output \r_Message_index_reg[0]_2 ;
  output [7:0]\o_Anodes_reg[7]_0 ;
  output [6:0]\o_Cathodes_reg[6]_0 ;
  output [2:0]\o_LED17_bgr_reg[0]_0 ;
  output [2:0]\o_LED16_bgr_reg[0]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input [2:0]w_Paddle_size;
  input [3:0]\o_Cathodes_reg[6]_1 ;
  input \o_Cathodes_reg[4]_0 ;
  input \o_Cathodes[1]_i_5_0 ;
  input \o_Cathodes[2]_i_2_0 ;
  input \o_Cathodes_reg[5]_0 ;
  input \o_Cathodes[5]_i_3_0 ;
  input CPU_RESETN_IBUF;
  input \o_Cathodes_reg[0]_0 ;
  input \o_Cathodes_reg[0]_1 ;
  input \o_Cathodes[3]_i_2_0 ;
  input \o_Cathodes_reg[4]_1 ;
  input \o_Cathodes_reg[3]_0 ;
  input \o_Cathodes_reg[4]_2 ;
  input \o_Cathodes_reg[5]_1 ;
  input \o_Cathodes[2]_i_2_1 ;
  input [1:0]w_P2_score;
  input [1:0]w_P1_score;
  input \o_Cathodes_reg[1]_0 ;
  input [1:0]w_Mod_display_state;
  input \FSM_sequential_r_display_state_reg[2]_0 ;
  input \FSM_sequential_r_display_state_reg[2]_1 ;
  input \o_Cathodes[0]_i_7_0 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire \FSM_sequential_r_display_state[2]_i_2_n_0 ;
  wire \FSM_sequential_r_display_state_reg[2]_0 ;
  wire \FSM_sequential_r_display_state_reg[2]_1 ;
  wire \o_Anodes[0]_i_1_n_0 ;
  wire \o_Anodes[1]_i_1_n_0 ;
  wire \o_Anodes[2]_i_1_n_0 ;
  wire \o_Anodes[3]_i_1_n_0 ;
  wire \o_Anodes[4]_i_1_n_0 ;
  wire \o_Anodes[5]_i_1_n_0 ;
  wire \o_Anodes[6]_i_1_n_0 ;
  wire \o_Anodes[7]_i_1_n_0 ;
  wire \o_Anodes[7]_i_2_n_0 ;
  wire \o_Anodes[7]_i_3_n_0 ;
  wire \o_Anodes[7]_i_4_n_0 ;
  wire \o_Anodes[7]_i_5_n_0 ;
  wire [7:0]\o_Anodes_reg[7]_0 ;
  wire [6:0]o_Cathodes;
  wire \o_Cathodes[0]_i_4_n_0 ;
  wire \o_Cathodes[0]_i_5_n_0 ;
  wire \o_Cathodes[0]_i_6_n_0 ;
  wire \o_Cathodes[0]_i_7_0 ;
  wire \o_Cathodes[0]_i_7_n_0 ;
  wire \o_Cathodes[1]_i_2_n_0 ;
  wire \o_Cathodes[1]_i_3_n_0 ;
  wire \o_Cathodes[1]_i_4_n_0 ;
  wire \o_Cathodes[1]_i_5_0 ;
  wire \o_Cathodes[1]_i_5_n_0 ;
  wire \o_Cathodes[1]_i_7_n_0 ;
  wire \o_Cathodes[2]_i_2_0 ;
  wire \o_Cathodes[2]_i_2_1 ;
  wire \o_Cathodes[2]_i_2_n_0 ;
  wire \o_Cathodes[2]_i_3_n_0 ;
  wire \o_Cathodes[2]_i_4_n_0 ;
  wire \o_Cathodes[2]_i_5_n_0 ;
  wire \o_Cathodes[2]_i_9_n_0 ;
  wire \o_Cathodes[3]_i_2_0 ;
  wire \o_Cathodes[3]_i_2_n_0 ;
  wire \o_Cathodes[3]_i_4_n_0 ;
  wire \o_Cathodes[3]_i_5_n_0 ;
  wire \o_Cathodes[3]_i_6_n_0 ;
  wire \o_Cathodes[3]_i_8_n_0 ;
  wire \o_Cathodes[3]_i_9_n_0 ;
  wire \o_Cathodes[4]_i_12_n_0 ;
  wire \o_Cathodes[4]_i_13_n_0 ;
  wire \o_Cathodes[4]_i_14_n_0 ;
  wire \o_Cathodes[4]_i_2_n_0 ;
  wire \o_Cathodes[4]_i_3_n_0 ;
  wire \o_Cathodes[4]_i_4_n_0 ;
  wire \o_Cathodes[4]_i_5_n_0 ;
  wire \o_Cathodes[4]_i_6_n_0 ;
  wire \o_Cathodes[4]_i_9_n_0 ;
  wire \o_Cathodes[5]_i_12_n_0 ;
  wire \o_Cathodes[5]_i_13_n_0 ;
  wire \o_Cathodes[5]_i_3_0 ;
  wire \o_Cathodes[5]_i_3_n_0 ;
  wire \o_Cathodes[5]_i_4_n_0 ;
  wire \o_Cathodes[5]_i_5_n_0 ;
  wire \o_Cathodes[5]_i_8_n_0 ;
  wire \o_Cathodes[5]_i_9_n_0 ;
  wire \o_Cathodes[6]_i_10_n_0 ;
  wire \o_Cathodes[6]_i_11_n_0 ;
  wire \o_Cathodes[6]_i_12_n_0 ;
  wire \o_Cathodes[6]_i_1_n_0 ;
  wire \o_Cathodes[6]_i_3_n_0 ;
  wire \o_Cathodes[6]_i_4_n_0 ;
  wire \o_Cathodes[6]_i_6_n_0 ;
  wire \o_Cathodes[6]_i_7_n_0 ;
  wire \o_Cathodes[6]_i_8_n_0 ;
  wire \o_Cathodes[6]_i_9_n_0 ;
  wire \o_Cathodes_reg[0]_0 ;
  wire \o_Cathodes_reg[0]_1 ;
  wire \o_Cathodes_reg[1]_0 ;
  wire \o_Cathodes_reg[2]_i_6_n_0 ;
  wire \o_Cathodes_reg[3]_0 ;
  wire \o_Cathodes_reg[4]_0 ;
  wire \o_Cathodes_reg[4]_1 ;
  wire \o_Cathodes_reg[4]_2 ;
  wire \o_Cathodes_reg[4]_i_8_n_0 ;
  wire \o_Cathodes_reg[5]_0 ;
  wire \o_Cathodes_reg[5]_1 ;
  wire [6:0]\o_Cathodes_reg[6]_0 ;
  wire [3:0]\o_Cathodes_reg[6]_1 ;
  wire \o_LED16_bgr[0]_i_1_n_0 ;
  wire \o_LED16_bgr[0]_i_2_n_0 ;
  wire \o_LED16_bgr[1]_i_1_n_0 ;
  wire \o_LED16_bgr[2]_i_1_n_0 ;
  wire [2:0]\o_LED16_bgr_reg[0]_0 ;
  wire \o_LED17_bgr[0]_i_1_n_0 ;
  wire \o_LED17_bgr[1]_i_1_n_0 ;
  wire \o_LED17_bgr[2]_i_1_n_0 ;
  wire [2:0]\o_LED17_bgr_reg[0]_0 ;
  wire [4:0]p_0_in;
  wire \r_Blink_counter[0]_i_1_n_0 ;
  wire \r_Blink_counter[0]_i_3_n_0 ;
  wire \r_Blink_counter[0]_i_4_n_0 ;
  wire \r_Blink_counter[0]_i_5_n_0 ;
  wire \r_Blink_counter[0]_i_6_n_0 ;
  wire [25:7]r_Blink_counter_reg;
  wire \r_Blink_counter_reg[0]_i_2_n_0 ;
  wire \r_Blink_counter_reg[0]_i_2_n_1 ;
  wire \r_Blink_counter_reg[0]_i_2_n_2 ;
  wire \r_Blink_counter_reg[0]_i_2_n_3 ;
  wire \r_Blink_counter_reg[0]_i_2_n_4 ;
  wire \r_Blink_counter_reg[0]_i_2_n_5 ;
  wire \r_Blink_counter_reg[0]_i_2_n_6 ;
  wire \r_Blink_counter_reg[0]_i_2_n_7 ;
  wire \r_Blink_counter_reg[12]_i_1_n_0 ;
  wire \r_Blink_counter_reg[12]_i_1_n_1 ;
  wire \r_Blink_counter_reg[12]_i_1_n_2 ;
  wire \r_Blink_counter_reg[12]_i_1_n_3 ;
  wire \r_Blink_counter_reg[12]_i_1_n_4 ;
  wire \r_Blink_counter_reg[12]_i_1_n_5 ;
  wire \r_Blink_counter_reg[12]_i_1_n_6 ;
  wire \r_Blink_counter_reg[12]_i_1_n_7 ;
  wire \r_Blink_counter_reg[16]_i_1_n_0 ;
  wire \r_Blink_counter_reg[16]_i_1_n_1 ;
  wire \r_Blink_counter_reg[16]_i_1_n_2 ;
  wire \r_Blink_counter_reg[16]_i_1_n_3 ;
  wire \r_Blink_counter_reg[16]_i_1_n_4 ;
  wire \r_Blink_counter_reg[16]_i_1_n_5 ;
  wire \r_Blink_counter_reg[16]_i_1_n_6 ;
  wire \r_Blink_counter_reg[16]_i_1_n_7 ;
  wire \r_Blink_counter_reg[20]_i_1_n_0 ;
  wire \r_Blink_counter_reg[20]_i_1_n_1 ;
  wire \r_Blink_counter_reg[20]_i_1_n_2 ;
  wire \r_Blink_counter_reg[20]_i_1_n_3 ;
  wire \r_Blink_counter_reg[20]_i_1_n_4 ;
  wire \r_Blink_counter_reg[20]_i_1_n_5 ;
  wire \r_Blink_counter_reg[20]_i_1_n_6 ;
  wire \r_Blink_counter_reg[20]_i_1_n_7 ;
  wire \r_Blink_counter_reg[24]_i_1_n_3 ;
  wire \r_Blink_counter_reg[24]_i_1_n_6 ;
  wire \r_Blink_counter_reg[24]_i_1_n_7 ;
  wire \r_Blink_counter_reg[4]_i_1_n_0 ;
  wire \r_Blink_counter_reg[4]_i_1_n_1 ;
  wire \r_Blink_counter_reg[4]_i_1_n_2 ;
  wire \r_Blink_counter_reg[4]_i_1_n_3 ;
  wire \r_Blink_counter_reg[4]_i_1_n_4 ;
  wire \r_Blink_counter_reg[4]_i_1_n_5 ;
  wire \r_Blink_counter_reg[4]_i_1_n_6 ;
  wire \r_Blink_counter_reg[4]_i_1_n_7 ;
  wire \r_Blink_counter_reg[8]_i_1_n_0 ;
  wire \r_Blink_counter_reg[8]_i_1_n_1 ;
  wire \r_Blink_counter_reg[8]_i_1_n_2 ;
  wire \r_Blink_counter_reg[8]_i_1_n_3 ;
  wire \r_Blink_counter_reg[8]_i_1_n_4 ;
  wire \r_Blink_counter_reg[8]_i_1_n_5 ;
  wire \r_Blink_counter_reg[8]_i_1_n_6 ;
  wire \r_Blink_counter_reg[8]_i_1_n_7 ;
  wire \r_Blink_counter_reg_n_0_[0] ;
  wire \r_Blink_counter_reg_n_0_[1] ;
  wire \r_Blink_counter_reg_n_0_[2] ;
  wire \r_Blink_counter_reg_n_0_[3] ;
  wire \r_Blink_counter_reg_n_0_[4] ;
  wire \r_Blink_counter_reg_n_0_[5] ;
  wire \r_Blink_counter_reg_n_0_[6] ;
  wire r_Blink_i_1_n_0;
  wire r_Blink_reg_0;
  wire \r_Increment_value[0]_i_2_n_0 ;
  wire [16:5]r_Increment_value_reg;
  wire \r_Increment_value_reg[0]_i_1_n_0 ;
  wire \r_Increment_value_reg[0]_i_1_n_1 ;
  wire \r_Increment_value_reg[0]_i_1_n_2 ;
  wire \r_Increment_value_reg[0]_i_1_n_3 ;
  wire \r_Increment_value_reg[0]_i_1_n_4 ;
  wire \r_Increment_value_reg[0]_i_1_n_5 ;
  wire \r_Increment_value_reg[0]_i_1_n_6 ;
  wire \r_Increment_value_reg[0]_i_1_n_7 ;
  wire \r_Increment_value_reg[12]_i_1_n_0 ;
  wire \r_Increment_value_reg[12]_i_1_n_1 ;
  wire \r_Increment_value_reg[12]_i_1_n_2 ;
  wire \r_Increment_value_reg[12]_i_1_n_3 ;
  wire \r_Increment_value_reg[12]_i_1_n_4 ;
  wire \r_Increment_value_reg[12]_i_1_n_5 ;
  wire \r_Increment_value_reg[12]_i_1_n_6 ;
  wire \r_Increment_value_reg[12]_i_1_n_7 ;
  wire \r_Increment_value_reg[16]_i_1_n_7 ;
  wire \r_Increment_value_reg[4]_i_1_n_0 ;
  wire \r_Increment_value_reg[4]_i_1_n_1 ;
  wire \r_Increment_value_reg[4]_i_1_n_2 ;
  wire \r_Increment_value_reg[4]_i_1_n_3 ;
  wire \r_Increment_value_reg[4]_i_1_n_4 ;
  wire \r_Increment_value_reg[4]_i_1_n_5 ;
  wire \r_Increment_value_reg[4]_i_1_n_6 ;
  wire \r_Increment_value_reg[4]_i_1_n_7 ;
  wire \r_Increment_value_reg[8]_i_1_n_0 ;
  wire \r_Increment_value_reg[8]_i_1_n_1 ;
  wire \r_Increment_value_reg[8]_i_1_n_2 ;
  wire \r_Increment_value_reg[8]_i_1_n_3 ;
  wire \r_Increment_value_reg[8]_i_1_n_4 ;
  wire \r_Increment_value_reg[8]_i_1_n_5 ;
  wire \r_Increment_value_reg[8]_i_1_n_6 ;
  wire \r_Increment_value_reg[8]_i_1_n_7 ;
  wire \r_Increment_value_reg_n_0_[0] ;
  wire \r_Increment_value_reg_n_0_[1] ;
  wire \r_Increment_value_reg_n_0_[2] ;
  wire \r_Increment_value_reg_n_0_[3] ;
  wire \r_Increment_value_reg_n_0_[4] ;
  wire \r_Message_index[0]_i_1_n_0 ;
  wire \r_Message_index[1]_i_1_n_0 ;
  wire \r_Message_index[2]_i_1_n_0 ;
  wire \r_Message_index_reg[0]_0 ;
  wire \r_Message_index_reg[0]_1 ;
  wire \r_Message_index_reg[0]_2 ;
  wire \r_Message_index_reg[1]_0 ;
  wire \r_Message_index_reg[1]_1 ;
  wire \r_Message_index_reg[1]_2 ;
  wire \r_Message_index_reg[2]_0 ;
  wire [0:0]r_Scroll_offset;
  wire \r_Scroll_offset[2]_i_1_n_0 ;
  wire \r_Scroll_offset[4]_i_2_n_0 ;
  wire \r_Scroll_offset[4]_i_4_n_0 ;
  wire \r_Scroll_offset[4]_i_5_n_0 ;
  wire \r_Scroll_offset[4]_i_6_n_0 ;
  wire \r_Scroll_offset[4]_i_7_n_0 ;
  wire [4:0]r_Scroll_offset_reg;
  wire \r_Scroll_offset_reg[0]_0 ;
  wire [0:0]r_Scroll_timer;
  wire \r_Scroll_timer[0]_i_3_n_0 ;
  wire [26:6]r_Scroll_timer_reg;
  wire \r_Scroll_timer_reg[0]_i_2_n_0 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_1 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_2 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_3 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_4 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_5 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_6 ;
  wire \r_Scroll_timer_reg[0]_i_2_n_7 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_0 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_1 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_2 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_3 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_4 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_5 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_6 ;
  wire \r_Scroll_timer_reg[12]_i_1_n_7 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_0 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_1 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_2 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_3 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_4 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_5 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_6 ;
  wire \r_Scroll_timer_reg[16]_i_1_n_7 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_0 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_1 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_2 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_3 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_4 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_5 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_6 ;
  wire \r_Scroll_timer_reg[20]_i_1_n_7 ;
  wire \r_Scroll_timer_reg[24]_i_1_n_2 ;
  wire \r_Scroll_timer_reg[24]_i_1_n_3 ;
  wire \r_Scroll_timer_reg[24]_i_1_n_5 ;
  wire \r_Scroll_timer_reg[24]_i_1_n_6 ;
  wire \r_Scroll_timer_reg[24]_i_1_n_7 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_0 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_1 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_2 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_3 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_4 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_5 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_6 ;
  wire \r_Scroll_timer_reg[4]_i_1_n_7 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_0 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_1 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_2 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_3 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_4 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_5 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_6 ;
  wire \r_Scroll_timer_reg[8]_i_1_n_7 ;
  wire \r_Scroll_timer_reg_n_0_[0] ;
  wire \r_Scroll_timer_reg_n_0_[1] ;
  wire \r_Scroll_timer_reg_n_0_[2] ;
  wire \r_Scroll_timer_reg_n_0_[3] ;
  wire \r_Scroll_timer_reg_n_0_[4] ;
  wire \r_Scroll_timer_reg_n_0_[5] ;
  wire [2:0]r_display_state;
  wire [2:0]r_display_state__0;
  wire \r_p2_score_reg[0] ;
  wire [1:0]w_Mod_display_state;
  wire [1:0]w_P1_score;
  wire [1:0]w_P2_score;
  wire [2:0]w_Paddle_size;
  wire [3:1]\NLW_r_Blink_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_Blink_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_r_Increment_value_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_Increment_value_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_r_Scroll_timer_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_Scroll_timer_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00D000D000DD00D0)) 
    \FSM_sequential_r_display_state[0]_i_1 
       (.I0(r_display_state[2]),
        .I1(\FSM_sequential_r_display_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_r_display_state_reg[2]_1 ),
        .I3(\FSM_sequential_r_display_state_reg[2]_0 ),
        .I4(w_Mod_display_state[1]),
        .I5(w_Mod_display_state[0]),
        .O(r_display_state__0[0]));
  LUT6 #(
    .INIT(64'h0D000D000D0D0D00)) 
    \FSM_sequential_r_display_state[1]_i_1 
       (.I0(r_display_state[2]),
        .I1(\FSM_sequential_r_display_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_r_display_state_reg[2]_1 ),
        .I3(\FSM_sequential_r_display_state_reg[2]_0 ),
        .I4(w_Mod_display_state[1]),
        .I5(w_Mod_display_state[0]),
        .O(r_display_state__0[1]));
  LUT6 #(
    .INIT(64'h00000000000000D0)) 
    \FSM_sequential_r_display_state[2]_i_1 
       (.I0(r_display_state[2]),
        .I1(\FSM_sequential_r_display_state[2]_i_2_n_0 ),
        .I2(w_Mod_display_state[0]),
        .I3(w_Mod_display_state[1]),
        .I4(\FSM_sequential_r_display_state_reg[2]_0 ),
        .I5(\FSM_sequential_r_display_state_reg[2]_1 ),
        .O(r_display_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_r_display_state[2]_i_2 
       (.I0(r_display_state[1]),
        .I1(r_display_state[0]),
        .O(\FSM_sequential_r_display_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "modifying_paddle:011,modifying_ball:100,waiting:000,game_over:001,playing:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_display_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_display_state__0[0]),
        .Q(r_display_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "modifying_paddle:011,modifying_ball:100,waiting:000,game_over:001,playing:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_display_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_display_state__0[1]),
        .Q(r_display_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "modifying_paddle:011,modifying_ball:100,waiting:000,game_over:001,playing:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_display_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_display_state__0[2]),
        .Q(r_display_state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_Anodes[0]_i_1 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[2]_0 ),
        .O(\o_Anodes[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \o_Anodes[1]_i_1 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .O(\o_Anodes[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_Anodes[2]_i_1 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[2]_0 ),
        .O(\o_Anodes[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_Anodes[3]_i_1 
       (.I0(\r_Message_index_reg[0]_0 ),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .O(\o_Anodes[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \o_Anodes[4]_i_1 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[1]_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .O(\o_Anodes[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_Anodes[5]_i_1 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[1]_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .O(\o_Anodes[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_Anodes[6]_i_1 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .O(\o_Anodes[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_Anodes[7]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\o_Anodes[7]_i_2_n_0 ),
        .O(\o_Anodes[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \o_Anodes[7]_i_2 
       (.I0(\o_Anodes[7]_i_4_n_0 ),
        .I1(\o_Anodes[7]_i_5_n_0 ),
        .I2(r_Increment_value_reg[15]),
        .I3(r_Increment_value_reg[16]),
        .O(\o_Anodes[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_Anodes[7]_i_3 
       (.I0(\r_Message_index_reg[0]_0 ),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .O(\o_Anodes[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_Anodes[7]_i_4 
       (.I0(r_Increment_value_reg[13]),
        .I1(r_Increment_value_reg[14]),
        .I2(r_Increment_value_reg[11]),
        .I3(r_Increment_value_reg[12]),
        .O(\o_Anodes[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \o_Anodes[7]_i_5 
       (.I0(r_Increment_value_reg[7]),
        .I1(r_Increment_value_reg[6]),
        .I2(r_Increment_value_reg[5]),
        .I3(r_Increment_value_reg[8]),
        .I4(r_Increment_value_reg[9]),
        .I5(r_Increment_value_reg[10]),
        .O(\o_Anodes[7]_i_5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[0]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [0]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[1]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [1]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[2]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [2]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[3]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [3]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[4]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [4]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[5]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [5]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[6]_i_1_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [6]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_Anodes_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Anodes[7]_i_2_n_0 ),
        .D(\o_Anodes[7]_i_3_n_0 ),
        .Q(\o_Anodes_reg[7]_0 [7]),
        .S(\o_Anodes[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8A88)) 
    \o_Cathodes[0]_i_1 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[0]_1 ),
        .I2(\o_Cathodes_reg[0]_0 ),
        .I3(\o_Cathodes_reg[0]_1 ),
        .I4(\o_Cathodes[6]_i_3_n_0 ),
        .I5(\o_Cathodes[0]_i_4_n_0 ),
        .O(o_Cathodes[0]));
  LUT6 #(
    .INIT(64'h00FF005D0000005D)) 
    \o_Cathodes[0]_i_4 
       (.I0(r_display_state[0]),
        .I1(\o_Cathodes[4]_i_5_n_0 ),
        .I2(\o_Cathodes[0]_i_5_n_0 ),
        .I3(\o_Cathodes[0]_i_6_n_0 ),
        .I4(r_display_state[1]),
        .I5(\o_Cathodes[0]_i_7_n_0 ),
        .O(\o_Cathodes[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCE02CE0EFE32FE32)) 
    \o_Cathodes[0]_i_5 
       (.I0(\o_Cathodes[3]_i_2_0 ),
        .I1(\o_Cathodes[5]_i_9_n_0 ),
        .I2(\o_Cathodes[5]_i_8_n_0 ),
        .I3(\r_Scroll_offset_reg[0]_0 ),
        .I4(\o_Cathodes_reg[4]_1 ),
        .I5(\r_Message_index_reg[1]_1 ),
        .O(\o_Cathodes[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEBAAAAAAEF)) 
    \o_Cathodes[0]_i_6 
       (.I0(r_display_state[2]),
        .I1(\r_Message_index_reg[1]_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(r_display_state[0]),
        .I4(r_display_state[1]),
        .I5(\r_Message_index_reg[2]_0 ),
        .O(\o_Cathodes[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A888A888A88)) 
    \o_Cathodes[0]_i_7 
       (.I0(\o_Cathodes[3]_i_9_n_0 ),
        .I1(\o_Cathodes[6]_i_11_n_0 ),
        .I2(\r_Message_index_reg[0]_1 ),
        .I3(w_Paddle_size[1]),
        .I4(w_Paddle_size[2]),
        .I5(w_Paddle_size[0]),
        .O(\o_Cathodes[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F4F7F4)) 
    \o_Cathodes[1]_i_1 
       (.I0(\o_Cathodes[1]_i_2_n_0 ),
        .I1(r_display_state[1]),
        .I2(\o_Cathodes[1]_i_3_n_0 ),
        .I3(r_display_state[0]),
        .I4(\o_Cathodes[1]_i_4_n_0 ),
        .I5(\o_Cathodes[1]_i_5_n_0 ),
        .O(o_Cathodes[1]));
  LUT6 #(
    .INIT(64'h00800000A0A0FFFF)) 
    \o_Cathodes[1]_i_2 
       (.I0(r_display_state[0]),
        .I1(\o_Cathodes_reg[1]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(r_Blink_reg_0),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\r_Message_index_reg[2]_0 ),
        .O(\o_Cathodes[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFEAA)) 
    \o_Cathodes[1]_i_3 
       (.I0(r_display_state[2]),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(\r_Message_index_reg[0]_0 ),
        .I4(r_display_state[1]),
        .I5(r_display_state[0]),
        .O(\o_Cathodes[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA88080A8202A2A20)) 
    \o_Cathodes[1]_i_4 
       (.I0(\o_Cathodes[4]_i_5_n_0 ),
        .I1(\r_Message_index_reg[1]_1 ),
        .I2(\o_Cathodes[5]_i_8_n_0 ),
        .I3(r_Scroll_offset_reg[0]),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\o_Cathodes[5]_i_9_n_0 ),
        .O(\o_Cathodes[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000222000000000)) 
    \o_Cathodes[1]_i_5 
       (.I0(\o_Cathodes[1]_i_7_n_0 ),
        .I1(r_display_state[0]),
        .I2(\r_Message_index_reg[2]_0 ),
        .I3(\r_Message_index_reg[0]_0 ),
        .I4(r_display_state[1]),
        .I5(r_display_state[2]),
        .O(\o_Cathodes[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0787070707870787)) 
    \o_Cathodes[1]_i_7 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(r_Blink_reg_0),
        .I4(\o_Cathodes[1]_i_5_0 ),
        .I5(\o_Cathodes_reg[6]_1 [2]),
        .O(\o_Cathodes[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAA88AAAAAA88)) 
    \o_Cathodes[2]_i_1 
       (.I0(\o_Cathodes[2]_i_2_n_0 ),
        .I1(\o_Cathodes[2]_i_3_n_0 ),
        .I2(r_Blink_reg_0),
        .I3(\r_Message_index_reg[1]_0 ),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\r_Message_index_reg[2]_0 ),
        .O(o_Cathodes[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Cathodes[2]_i_10 
       (.I0(\r_Message_index_reg[0]_0 ),
        .I1(\r_Message_index_reg[2]_0 ),
        .O(\r_Message_index_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFF00FFD0FFFFFFD0)) 
    \o_Cathodes[2]_i_2 
       (.I0(\o_Cathodes[4]_i_5_n_0 ),
        .I1(\o_Cathodes[2]_i_4_n_0 ),
        .I2(r_display_state[0]),
        .I3(\o_Cathodes[2]_i_5_n_0 ),
        .I4(r_display_state[1]),
        .I5(\o_Cathodes_reg[2]_i_6_n_0 ),
        .O(\o_Cathodes[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777F777)) 
    \o_Cathodes[2]_i_3 
       (.I0(\FSM_sequential_r_display_state[2]_i_2_n_0 ),
        .I1(r_display_state[2]),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\o_Cathodes_reg[6]_1 [1]),
        .I4(\o_Cathodes_reg[6]_1 [0]),
        .I5(\o_Cathodes_reg[6]_1 [2]),
        .O(\o_Cathodes[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00CFFBFF00CFC8CC)) 
    \o_Cathodes[2]_i_4 
       (.I0(\o_Cathodes_reg[4]_1 ),
        .I1(\o_Cathodes[5]_i_9_n_0 ),
        .I2(\r_Scroll_offset_reg[0]_0 ),
        .I3(\r_Message_index_reg[1]_1 ),
        .I4(\o_Cathodes[5]_i_8_n_0 ),
        .I5(\o_Cathodes[2]_i_2_1 ),
        .O(\o_Cathodes[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEEAAAAAAAB)) 
    \o_Cathodes[2]_i_5 
       (.I0(r_display_state[2]),
        .I1(\r_Message_index_reg[1]_0 ),
        .I2(\r_Message_index_reg[2]_0 ),
        .I3(r_display_state[0]),
        .I4(r_display_state[1]),
        .I5(\r_Message_index_reg[0]_0 ),
        .O(\o_Cathodes[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2220555555550000)) 
    \o_Cathodes[2]_i_9 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(r_Blink_reg_0),
        .I2(w_Paddle_size[0]),
        .I3(w_Paddle_size[2]),
        .I4(\r_Message_index_reg[1]_0 ),
        .I5(\r_Message_index_reg[0]_0 ),
        .O(\o_Cathodes[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AA20AAA8AA20)) 
    \o_Cathodes[3]_i_1 
       (.I0(\o_Cathodes[3]_i_2_n_0 ),
        .I1(\r_Message_index_reg[1]_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\o_Cathodes[6]_i_3_n_0 ),
        .I4(\r_Message_index_reg[2]_0 ),
        .I5(\o_Cathodes_reg[3]_0 ),
        .O(o_Cathodes[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00D0)) 
    \o_Cathodes[3]_i_2 
       (.I0(\o_Cathodes[4]_i_5_n_0 ),
        .I1(\o_Cathodes[3]_i_4_n_0 ),
        .I2(r_display_state[0]),
        .I3(r_display_state[1]),
        .I4(\o_Cathodes[3]_i_5_n_0 ),
        .I5(\o_Cathodes[3]_i_6_n_0 ),
        .O(\o_Cathodes[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0EF20EFE3EC23EC2)) 
    \o_Cathodes[3]_i_4 
       (.I0(\o_Cathodes[3]_i_2_0 ),
        .I1(\o_Cathodes[5]_i_9_n_0 ),
        .I2(\o_Cathodes[5]_i_8_n_0 ),
        .I3(\r_Scroll_offset_reg[0]_0 ),
        .I4(\o_Cathodes_reg[4]_1 ),
        .I5(\r_Message_index_reg[1]_1 ),
        .O(\o_Cathodes[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFBE)) 
    \o_Cathodes[3]_i_5 
       (.I0(r_display_state[2]),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(\r_Message_index_reg[2]_0 ),
        .I4(r_display_state[1]),
        .I5(r_display_state[0]),
        .O(\o_Cathodes[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \o_Cathodes[3]_i_6 
       (.I0(r_display_state[1]),
        .I1(w_Paddle_size[0]),
        .I2(w_Paddle_size[2]),
        .I3(\r_Message_index_reg[0]_1 ),
        .I4(\o_Cathodes[3]_i_8_n_0 ),
        .I5(\o_Cathodes[3]_i_9_n_0 ),
        .O(\o_Cathodes[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F00FFFF0FF0FFFF)) 
    \o_Cathodes[3]_i_8 
       (.I0(r_Blink_reg_0),
        .I1(w_Paddle_size[1]),
        .I2(\r_Message_index_reg[2]_0 ),
        .I3(\r_Message_index_reg[0]_0 ),
        .I4(r_display_state[0]),
        .I5(\r_Message_index_reg[1]_0 ),
        .O(\o_Cathodes[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \o_Cathodes[3]_i_9 
       (.I0(r_display_state[0]),
        .I1(\o_Cathodes[0]_i_7_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\r_Message_index_reg[2]_0 ),
        .O(\o_Cathodes[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEEEE0E0E0E0)) 
    \o_Cathodes[4]_i_1 
       (.I0(\o_Cathodes[4]_i_2_n_0 ),
        .I1(\o_Cathodes[6]_i_3_n_0 ),
        .I2(\o_Cathodes[4]_i_3_n_0 ),
        .I3(\o_Cathodes[4]_i_4_n_0 ),
        .I4(\o_Cathodes[4]_i_5_n_0 ),
        .I5(\o_Cathodes[4]_i_6_n_0 ),
        .O(o_Cathodes[4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hEC80)) 
    \o_Cathodes[4]_i_12 
       (.I0(\r_Message_index_reg[0]_0 ),
        .I1(r_Scroll_offset_reg[1]),
        .I2(r_Scroll_offset_reg[0]),
        .I3(\r_Message_index_reg[1]_0 ),
        .O(\o_Cathodes[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00010031)) 
    \o_Cathodes[4]_i_13 
       (.I0(w_P1_score[0]),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(\r_Message_index_reg[0]_0 ),
        .I4(w_P2_score[0]),
        .O(\o_Cathodes[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00205555AAAA5555)) 
    \o_Cathodes[4]_i_14 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(w_Paddle_size[0]),
        .I2(w_Paddle_size[1]),
        .I3(r_Blink_reg_0),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\r_Message_index_reg[2]_0 ),
        .O(\o_Cathodes[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AA5A5AAAAA5A5)) 
    \o_Cathodes[4]_i_2 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\o_Cathodes_reg[6]_1 [0]),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(r_Blink_reg_0),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\o_Cathodes_reg[4]_0 ),
        .O(\o_Cathodes[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF444F4F4)) 
    \o_Cathodes[4]_i_3 
       (.I0(\o_Cathodes_reg[4]_i_8_n_0 ),
        .I1(r_display_state[1]),
        .I2(\o_Cathodes[4]_i_9_n_0 ),
        .I3(\r_Message_index_reg[1]_0 ),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(r_display_state[2]),
        .O(\o_Cathodes[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF003333EE2E2222)) 
    \o_Cathodes[4]_i_4 
       (.I0(\o_Cathodes_reg[4]_2 ),
        .I1(\o_Cathodes[5]_i_9_n_0 ),
        .I2(\o_Cathodes_reg[4]_1 ),
        .I3(\r_Scroll_offset_reg[0]_0 ),
        .I4(\r_Message_index_reg[1]_1 ),
        .I5(\o_Cathodes[5]_i_8_n_0 ),
        .O(\o_Cathodes[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h11151555)) 
    \o_Cathodes[4]_i_5 
       (.I0(r_Scroll_offset_reg[4]),
        .I1(r_Scroll_offset_reg[3]),
        .I2(\o_Cathodes[4]_i_12_n_0 ),
        .I3(r_Scroll_offset_reg[2]),
        .I4(\r_Message_index_reg[2]_0 ),
        .O(\o_Cathodes[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_Cathodes[4]_i_6 
       (.I0(r_display_state[0]),
        .I1(r_display_state[1]),
        .O(\o_Cathodes[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \o_Cathodes[4]_i_9 
       (.I0(r_display_state[0]),
        .I1(r_display_state[1]),
        .I2(\r_Message_index_reg[2]_0 ),
        .I3(\r_Message_index_reg[0]_0 ),
        .O(\o_Cathodes[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0FFF0F0B0B0)) 
    \o_Cathodes[5]_i_1 
       (.I0(\o_Cathodes_reg[5]_0 ),
        .I1(r_display_state[2]),
        .I2(\o_Cathodes[5]_i_3_n_0 ),
        .I3(\o_Cathodes[5]_i_4_n_0 ),
        .I4(r_display_state[1]),
        .I5(r_display_state[0]),
        .O(o_Cathodes[5]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \o_Cathodes[5]_i_12 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .O(\o_Cathodes[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \o_Cathodes[5]_i_13 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(r_Blink_reg_0),
        .O(\o_Cathodes[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_Cathodes[5]_i_14 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .O(\r_Message_index_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \o_Cathodes[5]_i_15 
       (.I0(w_P2_score[0]),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(\r_Message_index_reg[2]_0 ),
        .O(\r_p2_score_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAAEEA)) 
    \o_Cathodes[5]_i_3 
       (.I0(\o_Cathodes[5]_i_5_n_0 ),
        .I1(\FSM_sequential_r_display_state[2]_i_2_n_0 ),
        .I2(\r_Message_index_reg[1]_0 ),
        .I3(\r_Message_index_reg[2]_0 ),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(r_display_state[2]),
        .O(\o_Cathodes[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA028200AA0282AA)) 
    \o_Cathodes[5]_i_4 
       (.I0(\o_Cathodes[4]_i_5_n_0 ),
        .I1(\r_Scroll_offset_reg[0]_0 ),
        .I2(\r_Message_index_reg[1]_1 ),
        .I3(\o_Cathodes[5]_i_8_n_0 ),
        .I4(\o_Cathodes[5]_i_9_n_0 ),
        .I5(\o_Cathodes_reg[5]_1 ),
        .O(\o_Cathodes[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02A202A2020202A2)) 
    \o_Cathodes[5]_i_5 
       (.I0(r_display_state[1]),
        .I1(\o_Cathodes[5]_i_3_0 ),
        .I2(r_display_state[0]),
        .I3(\o_Cathodes[5]_i_12_n_0 ),
        .I4(w_Paddle_size[2]),
        .I5(\o_Cathodes[5]_i_13_n_0 ),
        .O(\o_Cathodes[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Cathodes[5]_i_6 
       (.I0(r_Scroll_offset_reg[0]),
        .I1(\r_Message_index_reg[0]_0 ),
        .O(\r_Scroll_offset_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \o_Cathodes[5]_i_7 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(r_Scroll_offset_reg[0]),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(r_Scroll_offset_reg[1]),
        .O(\r_Message_index_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h565A6AAAA9A59555)) 
    \o_Cathodes[5]_i_8 
       (.I0(\r_Message_index_reg[2]_0 ),
        .I1(\r_Message_index_reg[0]_0 ),
        .I2(r_Scroll_offset_reg[1]),
        .I3(r_Scroll_offset_reg[0]),
        .I4(\r_Message_index_reg[1]_0 ),
        .I5(r_Scroll_offset_reg[2]),
        .O(\o_Cathodes[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hA995)) 
    \o_Cathodes[5]_i_9 
       (.I0(r_Scroll_offset_reg[3]),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(r_Scroll_offset_reg[2]),
        .I3(\o_Cathodes[4]_i_12_n_0 ),
        .O(\o_Cathodes[5]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \o_Cathodes[6]_i_1 
       (.I0(r_display_state[2]),
        .I1(r_display_state[1]),
        .I2(r_display_state[0]),
        .I3(CPU_RESETN_IBUF),
        .O(\o_Cathodes[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h428156A956A97EBD)) 
    \o_Cathodes[6]_i_10 
       (.I0(\r_Message_index_reg[1]_0 ),
        .I1(r_Scroll_offset_reg[0]),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(r_Scroll_offset_reg[1]),
        .I4(w_P2_score[1]),
        .I5(w_P1_score[1]),
        .O(\o_Cathodes[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h757F)) 
    \o_Cathodes[6]_i_11 
       (.I0(r_display_state[0]),
        .I1(\r_Message_index_reg[2]_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\r_Message_index_reg[1]_0 ),
        .O(\o_Cathodes[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAFFAAAEAAFA)) 
    \o_Cathodes[6]_i_12 
       (.I0(r_display_state[0]),
        .I1(w_P2_score[1]),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\r_Message_index_reg[2]_0 ),
        .I4(\r_Message_index_reg[1]_0 ),
        .I5(w_P1_score[1]),
        .O(\o_Cathodes[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAEAAA)) 
    \o_Cathodes[6]_i_2 
       (.I0(\o_Cathodes[6]_i_3_n_0 ),
        .I1(\o_Cathodes[6]_i_4_n_0 ),
        .I2(\r_Message_index_reg[2]_0 ),
        .I3(\o_Cathodes_reg[6]_1 [0]),
        .I4(\r_Message_index_reg[0]_1 ),
        .I5(\o_Cathodes[6]_i_6_n_0 ),
        .O(o_Cathodes[6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \o_Cathodes[6]_i_3 
       (.I0(r_display_state[2]),
        .I1(r_display_state[0]),
        .I2(r_display_state[1]),
        .O(\o_Cathodes[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBCCCCFBBFCCCC)) 
    \o_Cathodes[6]_i_4 
       (.I0(r_Blink_reg_0),
        .I1(\r_Message_index_reg[1]_0 ),
        .I2(\o_Cathodes_reg[6]_1 [1]),
        .I3(\o_Cathodes_reg[6]_1 [2]),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\o_Cathodes_reg[6]_1 [3]),
        .O(\o_Cathodes[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \o_Cathodes[6]_i_5 
       (.I0(\r_Message_index_reg[0]_0 ),
        .I1(r_Blink_reg_0),
        .I2(\r_Message_index_reg[1]_0 ),
        .O(\r_Message_index_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000000DDFD)) 
    \o_Cathodes[6]_i_6 
       (.I0(r_display_state[0]),
        .I1(r_display_state[1]),
        .I2(\o_Cathodes[4]_i_5_n_0 ),
        .I3(\o_Cathodes[6]_i_7_n_0 ),
        .I4(\o_Cathodes[6]_i_8_n_0 ),
        .I5(\o_Cathodes[6]_i_9_n_0 ),
        .O(\o_Cathodes[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h03F3F73303F3C400)) 
    \o_Cathodes[6]_i_7 
       (.I0(\o_Cathodes_reg[4]_1 ),
        .I1(\o_Cathodes[5]_i_9_n_0 ),
        .I2(\r_Scroll_offset_reg[0]_0 ),
        .I3(\r_Message_index_reg[1]_1 ),
        .I4(\o_Cathodes[5]_i_8_n_0 ),
        .I5(\o_Cathodes[6]_i_10_n_0 ),
        .O(\o_Cathodes[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAABABAAABAB)) 
    \o_Cathodes[6]_i_8 
       (.I0(r_display_state[2]),
        .I1(r_display_state[0]),
        .I2(r_display_state[1]),
        .I3(\r_Message_index_reg[2]_0 ),
        .I4(\r_Message_index_reg[0]_0 ),
        .I5(\r_Message_index_reg[1]_0 ),
        .O(\o_Cathodes[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000888AAAAAAAAA)) 
    \o_Cathodes[6]_i_9 
       (.I0(r_display_state[1]),
        .I1(\r_Message_index_reg[0]_1 ),
        .I2(w_Paddle_size[1]),
        .I3(w_Paddle_size[2]),
        .I4(\o_Cathodes[6]_i_11_n_0 ),
        .I5(\o_Cathodes[6]_i_12_n_0 ),
        .O(\o_Cathodes[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[0]),
        .Q(\o_Cathodes_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[1]),
        .Q(\o_Cathodes_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[2]),
        .Q(\o_Cathodes_reg[6]_0 [2]),
        .R(1'b0));
  MUXF7 \o_Cathodes_reg[2]_i_6 
       (.I0(\o_Cathodes[2]_i_2_0 ),
        .I1(\o_Cathodes[2]_i_9_n_0 ),
        .O(\o_Cathodes_reg[2]_i_6_n_0 ),
        .S(r_display_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[3]),
        .Q(\o_Cathodes_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[4]),
        .Q(\o_Cathodes_reg[6]_0 [4]),
        .R(1'b0));
  MUXF7 \o_Cathodes_reg[4]_i_8 
       (.I0(\o_Cathodes[4]_i_13_n_0 ),
        .I1(\o_Cathodes[4]_i_14_n_0 ),
        .O(\o_Cathodes_reg[4]_i_8_n_0 ),
        .S(r_display_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[5]),
        .Q(\o_Cathodes_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Cathodes_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(o_Cathodes[6]),
        .Q(\o_Cathodes_reg[6]_0 [6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h47FF)) 
    \o_LED16_bgr[0]_i_1 
       (.I0(r_display_state[2]),
        .I1(r_display_state[1]),
        .I2(r_display_state[0]),
        .I3(CPU_RESETN_IBUF),
        .O(\o_LED16_bgr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hFC44)) 
    \o_LED16_bgr[0]_i_2 
       (.I0(r_display_state[2]),
        .I1(r_display_state[1]),
        .I2(r_display_state[0]),
        .I3(CPU_RESETN_IBUF),
        .O(\o_LED16_bgr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hA83B)) 
    \o_LED16_bgr[1]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_display_state[0]),
        .I2(r_display_state[1]),
        .I3(r_display_state[2]),
        .O(\o_LED16_bgr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hAB08)) 
    \o_LED16_bgr[2]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_display_state[0]),
        .I2(r_display_state[1]),
        .I3(r_display_state[2]),
        .O(\o_LED16_bgr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_LED16_bgr_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_LED16_bgr[0]_i_1_n_0 ),
        .D(\o_LED16_bgr[0]_i_2_n_0 ),
        .Q(\o_LED16_bgr_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_LED16_bgr_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_LED16_bgr[0]_i_1_n_0 ),
        .D(\o_LED16_bgr[1]_i_1_n_0 ),
        .Q(\o_LED16_bgr_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_LED16_bgr_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_LED16_bgr[0]_i_1_n_0 ),
        .D(\o_LED16_bgr[2]_i_1_n_0 ),
        .Q(\o_LED16_bgr_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hDDD0)) 
    \o_LED17_bgr[0]_i_1 
       (.I0(r_display_state[2]),
        .I1(CPU_RESETN_IBUF),
        .I2(r_display_state[0]),
        .I3(r_display_state[1]),
        .O(\o_LED17_bgr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hAD05)) 
    \o_LED17_bgr[1]_i_1 
       (.I0(r_display_state[2]),
        .I1(r_display_state[1]),
        .I2(r_display_state[0]),
        .I3(CPU_RESETN_IBUF),
        .O(\o_LED17_bgr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hAB0C)) 
    \o_LED17_bgr[2]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_display_state[0]),
        .I2(r_display_state[1]),
        .I3(r_display_state[2]),
        .O(\o_LED17_bgr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_LED17_bgr_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(\o_LED17_bgr[0]_i_1_n_0 ),
        .Q(\o_LED17_bgr_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_LED17_bgr_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(\o_LED17_bgr[1]_i_1_n_0 ),
        .Q(\o_LED17_bgr_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_LED17_bgr_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Cathodes[6]_i_1_n_0 ),
        .D(\o_LED17_bgr[2]_i_1_n_0 ),
        .Q(\o_LED17_bgr_reg[0]_0 [0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8A8A8A8A88888A88)) 
    \r_Blink_counter[0]_i_1 
       (.I0(r_Blink_counter_reg[25]),
        .I1(r_Blink_counter_reg[24]),
        .I2(\r_Blink_counter[0]_i_3_n_0 ),
        .I3(r_Blink_counter_reg[17]),
        .I4(\r_Blink_counter[0]_i_4_n_0 ),
        .I5(r_Blink_counter_reg[18]),
        .O(\r_Blink_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_Blink_counter[0]_i_3 
       (.I0(r_Blink_counter_reg[20]),
        .I1(r_Blink_counter_reg[19]),
        .I2(r_Blink_counter_reg[22]),
        .I3(r_Blink_counter_reg[21]),
        .I4(r_Blink_counter_reg[23]),
        .O(\r_Blink_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \r_Blink_counter[0]_i_4 
       (.I0(\r_Blink_counter[0]_i_6_n_0 ),
        .I1(r_Blink_counter_reg[13]),
        .I2(r_Blink_counter_reg[14]),
        .I3(r_Blink_counter_reg[12]),
        .I4(r_Blink_counter_reg[15]),
        .I5(r_Blink_counter_reg[16]),
        .O(\r_Blink_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Blink_counter[0]_i_5 
       (.I0(\r_Blink_counter_reg_n_0_[0] ),
        .O(\r_Blink_counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_Blink_counter[0]_i_6 
       (.I0(r_Blink_counter_reg[8]),
        .I1(r_Blink_counter_reg[10]),
        .I2(r_Blink_counter_reg[7]),
        .I3(r_Blink_counter_reg[11]),
        .I4(r_Blink_counter_reg[9]),
        .O(\r_Blink_counter[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[0]_i_2_n_7 ),
        .Q(\r_Blink_counter_reg_n_0_[0] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_Blink_counter_reg[0]_i_2_n_0 ,\r_Blink_counter_reg[0]_i_2_n_1 ,\r_Blink_counter_reg[0]_i_2_n_2 ,\r_Blink_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_Blink_counter_reg[0]_i_2_n_4 ,\r_Blink_counter_reg[0]_i_2_n_5 ,\r_Blink_counter_reg[0]_i_2_n_6 ,\r_Blink_counter_reg[0]_i_2_n_7 }),
        .S({\r_Blink_counter_reg_n_0_[3] ,\r_Blink_counter_reg_n_0_[2] ,\r_Blink_counter_reg_n_0_[1] ,\r_Blink_counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[8]_i_1_n_5 ),
        .Q(r_Blink_counter_reg[10]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[8]_i_1_n_4 ),
        .Q(r_Blink_counter_reg[11]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[12]_i_1_n_7 ),
        .Q(r_Blink_counter_reg[12]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[12]_i_1 
       (.CI(\r_Blink_counter_reg[8]_i_1_n_0 ),
        .CO({\r_Blink_counter_reg[12]_i_1_n_0 ,\r_Blink_counter_reg[12]_i_1_n_1 ,\r_Blink_counter_reg[12]_i_1_n_2 ,\r_Blink_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Blink_counter_reg[12]_i_1_n_4 ,\r_Blink_counter_reg[12]_i_1_n_5 ,\r_Blink_counter_reg[12]_i_1_n_6 ,\r_Blink_counter_reg[12]_i_1_n_7 }),
        .S(r_Blink_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[12]_i_1_n_6 ),
        .Q(r_Blink_counter_reg[13]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[12]_i_1_n_5 ),
        .Q(r_Blink_counter_reg[14]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[12]_i_1_n_4 ),
        .Q(r_Blink_counter_reg[15]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[16]_i_1_n_7 ),
        .Q(r_Blink_counter_reg[16]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[16]_i_1 
       (.CI(\r_Blink_counter_reg[12]_i_1_n_0 ),
        .CO({\r_Blink_counter_reg[16]_i_1_n_0 ,\r_Blink_counter_reg[16]_i_1_n_1 ,\r_Blink_counter_reg[16]_i_1_n_2 ,\r_Blink_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Blink_counter_reg[16]_i_1_n_4 ,\r_Blink_counter_reg[16]_i_1_n_5 ,\r_Blink_counter_reg[16]_i_1_n_6 ,\r_Blink_counter_reg[16]_i_1_n_7 }),
        .S(r_Blink_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[16]_i_1_n_6 ),
        .Q(r_Blink_counter_reg[17]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[16]_i_1_n_5 ),
        .Q(r_Blink_counter_reg[18]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[16]_i_1_n_4 ),
        .Q(r_Blink_counter_reg[19]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[0]_i_2_n_6 ),
        .Q(\r_Blink_counter_reg_n_0_[1] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[20]_i_1_n_7 ),
        .Q(r_Blink_counter_reg[20]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[20]_i_1 
       (.CI(\r_Blink_counter_reg[16]_i_1_n_0 ),
        .CO({\r_Blink_counter_reg[20]_i_1_n_0 ,\r_Blink_counter_reg[20]_i_1_n_1 ,\r_Blink_counter_reg[20]_i_1_n_2 ,\r_Blink_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Blink_counter_reg[20]_i_1_n_4 ,\r_Blink_counter_reg[20]_i_1_n_5 ,\r_Blink_counter_reg[20]_i_1_n_6 ,\r_Blink_counter_reg[20]_i_1_n_7 }),
        .S(r_Blink_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[20]_i_1_n_6 ),
        .Q(r_Blink_counter_reg[21]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[20]_i_1_n_5 ),
        .Q(r_Blink_counter_reg[22]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[20]_i_1_n_4 ),
        .Q(r_Blink_counter_reg[23]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[24]_i_1_n_7 ),
        .Q(r_Blink_counter_reg[24]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[24]_i_1 
       (.CI(\r_Blink_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_r_Blink_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\r_Blink_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_Blink_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\r_Blink_counter_reg[24]_i_1_n_6 ,\r_Blink_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,r_Blink_counter_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[24]_i_1_n_6 ),
        .Q(r_Blink_counter_reg[25]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[0]_i_2_n_5 ),
        .Q(\r_Blink_counter_reg_n_0_[2] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[0]_i_2_n_4 ),
        .Q(\r_Blink_counter_reg_n_0_[3] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[4]_i_1_n_7 ),
        .Q(\r_Blink_counter_reg_n_0_[4] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[4]_i_1 
       (.CI(\r_Blink_counter_reg[0]_i_2_n_0 ),
        .CO({\r_Blink_counter_reg[4]_i_1_n_0 ,\r_Blink_counter_reg[4]_i_1_n_1 ,\r_Blink_counter_reg[4]_i_1_n_2 ,\r_Blink_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Blink_counter_reg[4]_i_1_n_4 ,\r_Blink_counter_reg[4]_i_1_n_5 ,\r_Blink_counter_reg[4]_i_1_n_6 ,\r_Blink_counter_reg[4]_i_1_n_7 }),
        .S({r_Blink_counter_reg[7],\r_Blink_counter_reg_n_0_[6] ,\r_Blink_counter_reg_n_0_[5] ,\r_Blink_counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[4]_i_1_n_6 ),
        .Q(\r_Blink_counter_reg_n_0_[5] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[4]_i_1_n_5 ),
        .Q(\r_Blink_counter_reg_n_0_[6] ),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[4]_i_1_n_4 ),
        .Q(r_Blink_counter_reg[7]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[8]_i_1_n_7 ),
        .Q(r_Blink_counter_reg[8]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Blink_counter_reg[8]_i_1 
       (.CI(\r_Blink_counter_reg[4]_i_1_n_0 ),
        .CO({\r_Blink_counter_reg[8]_i_1_n_0 ,\r_Blink_counter_reg[8]_i_1_n_1 ,\r_Blink_counter_reg[8]_i_1_n_2 ,\r_Blink_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Blink_counter_reg[8]_i_1_n_4 ,\r_Blink_counter_reg[8]_i_1_n_5 ,\r_Blink_counter_reg[8]_i_1_n_6 ,\r_Blink_counter_reg[8]_i_1_n_7 }),
        .S(r_Blink_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Blink_counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Blink_counter_reg[8]_i_1_n_6 ),
        .Q(r_Blink_counter_reg[9]),
        .R(\r_Blink_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h64)) 
    r_Blink_i_1
       (.I0(r_Blink_reg_0),
        .I1(\r_Blink_counter[0]_i_1_n_0 ),
        .I2(CPU_RESETN_IBUF),
        .O(r_Blink_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_Blink_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_Blink_i_1_n_0),
        .Q(r_Blink_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Increment_value[0]_i_2 
       (.I0(\r_Increment_value_reg_n_0_[0] ),
        .O(\r_Increment_value[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[0]_i_1_n_7 ),
        .Q(\r_Increment_value_reg_n_0_[0] ),
        .R(\o_Anodes[7]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Increment_value_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_Increment_value_reg[0]_i_1_n_0 ,\r_Increment_value_reg[0]_i_1_n_1 ,\r_Increment_value_reg[0]_i_1_n_2 ,\r_Increment_value_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_Increment_value_reg[0]_i_1_n_4 ,\r_Increment_value_reg[0]_i_1_n_5 ,\r_Increment_value_reg[0]_i_1_n_6 ,\r_Increment_value_reg[0]_i_1_n_7 }),
        .S({\r_Increment_value_reg_n_0_[3] ,\r_Increment_value_reg_n_0_[2] ,\r_Increment_value_reg_n_0_[1] ,\r_Increment_value[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[8]_i_1_n_5 ),
        .Q(r_Increment_value_reg[10]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[8]_i_1_n_4 ),
        .Q(r_Increment_value_reg[11]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[12]_i_1_n_7 ),
        .Q(r_Increment_value_reg[12]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Increment_value_reg[12]_i_1 
       (.CI(\r_Increment_value_reg[8]_i_1_n_0 ),
        .CO({\r_Increment_value_reg[12]_i_1_n_0 ,\r_Increment_value_reg[12]_i_1_n_1 ,\r_Increment_value_reg[12]_i_1_n_2 ,\r_Increment_value_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Increment_value_reg[12]_i_1_n_4 ,\r_Increment_value_reg[12]_i_1_n_5 ,\r_Increment_value_reg[12]_i_1_n_6 ,\r_Increment_value_reg[12]_i_1_n_7 }),
        .S(r_Increment_value_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[12]_i_1_n_6 ),
        .Q(r_Increment_value_reg[13]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[12]_i_1_n_5 ),
        .Q(r_Increment_value_reg[14]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[12]_i_1_n_4 ),
        .Q(r_Increment_value_reg[15]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[16]_i_1_n_7 ),
        .Q(r_Increment_value_reg[16]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Increment_value_reg[16]_i_1 
       (.CI(\r_Increment_value_reg[12]_i_1_n_0 ),
        .CO(\NLW_r_Increment_value_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_Increment_value_reg[16]_i_1_O_UNCONNECTED [3:1],\r_Increment_value_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,r_Increment_value_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[0]_i_1_n_6 ),
        .Q(\r_Increment_value_reg_n_0_[1] ),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[0]_i_1_n_5 ),
        .Q(\r_Increment_value_reg_n_0_[2] ),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[0]_i_1_n_4 ),
        .Q(\r_Increment_value_reg_n_0_[3] ),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[4]_i_1_n_7 ),
        .Q(\r_Increment_value_reg_n_0_[4] ),
        .R(\o_Anodes[7]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Increment_value_reg[4]_i_1 
       (.CI(\r_Increment_value_reg[0]_i_1_n_0 ),
        .CO({\r_Increment_value_reg[4]_i_1_n_0 ,\r_Increment_value_reg[4]_i_1_n_1 ,\r_Increment_value_reg[4]_i_1_n_2 ,\r_Increment_value_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Increment_value_reg[4]_i_1_n_4 ,\r_Increment_value_reg[4]_i_1_n_5 ,\r_Increment_value_reg[4]_i_1_n_6 ,\r_Increment_value_reg[4]_i_1_n_7 }),
        .S({r_Increment_value_reg[7:5],\r_Increment_value_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[4]_i_1_n_6 ),
        .Q(r_Increment_value_reg[5]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[4]_i_1_n_5 ),
        .Q(r_Increment_value_reg[6]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[4]_i_1_n_4 ),
        .Q(r_Increment_value_reg[7]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[8]_i_1_n_7 ),
        .Q(r_Increment_value_reg[8]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Increment_value_reg[8]_i_1 
       (.CI(\r_Increment_value_reg[4]_i_1_n_0 ),
        .CO({\r_Increment_value_reg[8]_i_1_n_0 ,\r_Increment_value_reg[8]_i_1_n_1 ,\r_Increment_value_reg[8]_i_1_n_2 ,\r_Increment_value_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Increment_value_reg[8]_i_1_n_4 ,\r_Increment_value_reg[8]_i_1_n_5 ,\r_Increment_value_reg[8]_i_1_n_6 ,\r_Increment_value_reg[8]_i_1_n_7 }),
        .S(r_Increment_value_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Increment_value_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Increment_value_reg[8]_i_1_n_6 ),
        .Q(r_Increment_value_reg[9]),
        .R(\o_Anodes[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h2C)) 
    \r_Message_index[0]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\o_Anodes[7]_i_2_n_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .O(\r_Message_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h2EC0)) 
    \r_Message_index[1]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\o_Anodes[7]_i_2_n_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\r_Message_index_reg[1]_0 ),
        .O(\r_Message_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h2EC0EE00)) 
    \r_Message_index[2]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\o_Anodes[7]_i_2_n_0 ),
        .I2(\r_Message_index_reg[0]_0 ),
        .I3(\r_Message_index_reg[2]_0 ),
        .I4(\r_Message_index_reg[1]_0 ),
        .O(\r_Message_index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_Message_index_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Message_index[0]_i_1_n_0 ),
        .Q(\r_Message_index_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_Message_index_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Message_index[1]_i_1_n_0 ),
        .Q(\r_Message_index_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_Message_index_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Message_index[2]_i_1_n_0 ),
        .Q(\r_Message_index_reg[2]_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Scroll_offset[0]_i_1 
       (.I0(r_Scroll_offset_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_Scroll_offset[1]_i_1 
       (.I0(r_Scroll_offset_reg[0]),
        .I1(r_Scroll_offset_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_Scroll_offset[2]_i_1 
       (.I0(r_Scroll_offset_reg[2]),
        .I1(r_Scroll_offset_reg[1]),
        .I2(r_Scroll_offset_reg[0]),
        .O(\r_Scroll_offset[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_Scroll_offset[3]_i_1 
       (.I0(r_Scroll_offset_reg[3]),
        .I1(r_Scroll_offset_reg[0]),
        .I2(r_Scroll_offset_reg[1]),
        .I3(r_Scroll_offset_reg[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFD111FFFFFFFF)) 
    \r_Scroll_offset[4]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\r_Scroll_offset[4]_i_2_n_0 ),
        .I2(r_Scroll_offset_reg[4]),
        .I3(r_Scroll_offset_reg[3]),
        .I4(r_display_state[2]),
        .I5(\o_Cathodes[4]_i_6_n_0 ),
        .O(r_Scroll_offset));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \r_Scroll_offset[4]_i_2 
       (.I0(r_Scroll_timer_reg[26]),
        .I1(r_Scroll_timer_reg[25]),
        .I2(r_Scroll_timer_reg[23]),
        .I3(r_Scroll_timer_reg[24]),
        .I4(\r_Scroll_offset[4]_i_4_n_0 ),
        .O(\r_Scroll_offset[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_Scroll_offset[4]_i_3 
       (.I0(r_Scroll_offset_reg[4]),
        .I1(r_Scroll_offset_reg[3]),
        .I2(r_Scroll_offset_reg[2]),
        .I3(r_Scroll_offset_reg[1]),
        .I4(r_Scroll_offset_reg[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10555555)) 
    \r_Scroll_offset[4]_i_4 
       (.I0(\r_Scroll_offset[4]_i_5_n_0 ),
        .I1(r_Scroll_timer_reg[12]),
        .I2(\r_Scroll_offset[4]_i_6_n_0 ),
        .I3(r_Scroll_timer_reg[13]),
        .I4(r_Scroll_timer_reg[14]),
        .I5(\r_Scroll_offset[4]_i_7_n_0 ),
        .O(\r_Scroll_offset[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_Scroll_offset[4]_i_5 
       (.I0(r_Scroll_timer_reg[16]),
        .I1(r_Scroll_timer_reg[17]),
        .I2(r_Scroll_timer_reg[15]),
        .I3(r_Scroll_timer_reg[18]),
        .O(\r_Scroll_offset[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00010101FFFFFFFF)) 
    \r_Scroll_offset[4]_i_6 
       (.I0(r_Scroll_timer_reg[8]),
        .I1(r_Scroll_timer_reg[9]),
        .I2(r_Scroll_timer_reg[10]),
        .I3(r_Scroll_timer_reg[7]),
        .I4(r_Scroll_timer_reg[6]),
        .I5(r_Scroll_timer_reg[11]),
        .O(\r_Scroll_offset[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_Scroll_offset[4]_i_7 
       (.I0(r_Scroll_timer_reg[21]),
        .I1(r_Scroll_timer_reg[22]),
        .I2(r_Scroll_timer_reg[19]),
        .I3(r_Scroll_timer_reg[20]),
        .O(\r_Scroll_offset[4]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_offset_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Scroll_offset[4]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(r_Scroll_offset_reg[0]),
        .R(r_Scroll_offset));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_offset_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Scroll_offset[4]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(r_Scroll_offset_reg[1]),
        .R(r_Scroll_offset));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_offset_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Scroll_offset[4]_i_2_n_0 ),
        .D(\r_Scroll_offset[2]_i_1_n_0 ),
        .Q(r_Scroll_offset_reg[2]),
        .R(r_Scroll_offset));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_offset_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Scroll_offset[4]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(r_Scroll_offset_reg[3]),
        .R(r_Scroll_offset));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_offset_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Scroll_offset[4]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(r_Scroll_offset_reg[4]),
        .R(r_Scroll_offset));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \r_Scroll_timer[0]_i_1 
       (.I0(\r_Scroll_offset[4]_i_2_n_0 ),
        .I1(r_display_state[0]),
        .I2(r_display_state[1]),
        .I3(r_display_state[2]),
        .O(r_Scroll_timer));
  LUT1 #(
    .INIT(2'h1)) 
    \r_Scroll_timer[0]_i_3 
       (.I0(\r_Scroll_timer_reg_n_0_[0] ),
        .O(\r_Scroll_timer[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[0]_i_2_n_7 ),
        .Q(\r_Scroll_timer_reg_n_0_[0] ),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_Scroll_timer_reg[0]_i_2_n_0 ,\r_Scroll_timer_reg[0]_i_2_n_1 ,\r_Scroll_timer_reg[0]_i_2_n_2 ,\r_Scroll_timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_Scroll_timer_reg[0]_i_2_n_4 ,\r_Scroll_timer_reg[0]_i_2_n_5 ,\r_Scroll_timer_reg[0]_i_2_n_6 ,\r_Scroll_timer_reg[0]_i_2_n_7 }),
        .S({\r_Scroll_timer_reg_n_0_[3] ,\r_Scroll_timer_reg_n_0_[2] ,\r_Scroll_timer_reg_n_0_[1] ,\r_Scroll_timer[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[8]_i_1_n_5 ),
        .Q(r_Scroll_timer_reg[10]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[8]_i_1_n_4 ),
        .Q(r_Scroll_timer_reg[11]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[12]_i_1_n_7 ),
        .Q(r_Scroll_timer_reg[12]),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[12]_i_1 
       (.CI(\r_Scroll_timer_reg[8]_i_1_n_0 ),
        .CO({\r_Scroll_timer_reg[12]_i_1_n_0 ,\r_Scroll_timer_reg[12]_i_1_n_1 ,\r_Scroll_timer_reg[12]_i_1_n_2 ,\r_Scroll_timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Scroll_timer_reg[12]_i_1_n_4 ,\r_Scroll_timer_reg[12]_i_1_n_5 ,\r_Scroll_timer_reg[12]_i_1_n_6 ,\r_Scroll_timer_reg[12]_i_1_n_7 }),
        .S(r_Scroll_timer_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[12]_i_1_n_6 ),
        .Q(r_Scroll_timer_reg[13]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[12]_i_1_n_5 ),
        .Q(r_Scroll_timer_reg[14]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[12]_i_1_n_4 ),
        .Q(r_Scroll_timer_reg[15]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[16]_i_1_n_7 ),
        .Q(r_Scroll_timer_reg[16]),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[16]_i_1 
       (.CI(\r_Scroll_timer_reg[12]_i_1_n_0 ),
        .CO({\r_Scroll_timer_reg[16]_i_1_n_0 ,\r_Scroll_timer_reg[16]_i_1_n_1 ,\r_Scroll_timer_reg[16]_i_1_n_2 ,\r_Scroll_timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Scroll_timer_reg[16]_i_1_n_4 ,\r_Scroll_timer_reg[16]_i_1_n_5 ,\r_Scroll_timer_reg[16]_i_1_n_6 ,\r_Scroll_timer_reg[16]_i_1_n_7 }),
        .S(r_Scroll_timer_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[16]_i_1_n_6 ),
        .Q(r_Scroll_timer_reg[17]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[16]_i_1_n_5 ),
        .Q(r_Scroll_timer_reg[18]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[16]_i_1_n_4 ),
        .Q(r_Scroll_timer_reg[19]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[0]_i_2_n_6 ),
        .Q(\r_Scroll_timer_reg_n_0_[1] ),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[20]_i_1_n_7 ),
        .Q(r_Scroll_timer_reg[20]),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[20]_i_1 
       (.CI(\r_Scroll_timer_reg[16]_i_1_n_0 ),
        .CO({\r_Scroll_timer_reg[20]_i_1_n_0 ,\r_Scroll_timer_reg[20]_i_1_n_1 ,\r_Scroll_timer_reg[20]_i_1_n_2 ,\r_Scroll_timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Scroll_timer_reg[20]_i_1_n_4 ,\r_Scroll_timer_reg[20]_i_1_n_5 ,\r_Scroll_timer_reg[20]_i_1_n_6 ,\r_Scroll_timer_reg[20]_i_1_n_7 }),
        .S(r_Scroll_timer_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[20]_i_1_n_6 ),
        .Q(r_Scroll_timer_reg[21]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[20]_i_1_n_5 ),
        .Q(r_Scroll_timer_reg[22]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[20]_i_1_n_4 ),
        .Q(r_Scroll_timer_reg[23]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[24]_i_1_n_7 ),
        .Q(r_Scroll_timer_reg[24]),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[24]_i_1 
       (.CI(\r_Scroll_timer_reg[20]_i_1_n_0 ),
        .CO({\NLW_r_Scroll_timer_reg[24]_i_1_CO_UNCONNECTED [3:2],\r_Scroll_timer_reg[24]_i_1_n_2 ,\r_Scroll_timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_Scroll_timer_reg[24]_i_1_O_UNCONNECTED [3],\r_Scroll_timer_reg[24]_i_1_n_5 ,\r_Scroll_timer_reg[24]_i_1_n_6 ,\r_Scroll_timer_reg[24]_i_1_n_7 }),
        .S({1'b0,r_Scroll_timer_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[24]_i_1_n_6 ),
        .Q(r_Scroll_timer_reg[25]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[24]_i_1_n_5 ),
        .Q(r_Scroll_timer_reg[26]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[0]_i_2_n_5 ),
        .Q(\r_Scroll_timer_reg_n_0_[2] ),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[0]_i_2_n_4 ),
        .Q(\r_Scroll_timer_reg_n_0_[3] ),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[4]_i_1_n_7 ),
        .Q(\r_Scroll_timer_reg_n_0_[4] ),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[4]_i_1 
       (.CI(\r_Scroll_timer_reg[0]_i_2_n_0 ),
        .CO({\r_Scroll_timer_reg[4]_i_1_n_0 ,\r_Scroll_timer_reg[4]_i_1_n_1 ,\r_Scroll_timer_reg[4]_i_1_n_2 ,\r_Scroll_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Scroll_timer_reg[4]_i_1_n_4 ,\r_Scroll_timer_reg[4]_i_1_n_5 ,\r_Scroll_timer_reg[4]_i_1_n_6 ,\r_Scroll_timer_reg[4]_i_1_n_7 }),
        .S({r_Scroll_timer_reg[7:6],\r_Scroll_timer_reg_n_0_[5] ,\r_Scroll_timer_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[4]_i_1_n_6 ),
        .Q(\r_Scroll_timer_reg_n_0_[5] ),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[4]_i_1_n_5 ),
        .Q(r_Scroll_timer_reg[6]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[4]_i_1_n_4 ),
        .Q(r_Scroll_timer_reg[7]),
        .R(r_Scroll_timer));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[8]_i_1_n_7 ),
        .Q(r_Scroll_timer_reg[8]),
        .R(r_Scroll_timer));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \r_Scroll_timer_reg[8]_i_1 
       (.CI(\r_Scroll_timer_reg[4]_i_1_n_0 ),
        .CO({\r_Scroll_timer_reg[8]_i_1_n_0 ,\r_Scroll_timer_reg[8]_i_1_n_1 ,\r_Scroll_timer_reg[8]_i_1_n_2 ,\r_Scroll_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_Scroll_timer_reg[8]_i_1_n_4 ,\r_Scroll_timer_reg[8]_i_1_n_5 ,\r_Scroll_timer_reg[8]_i_1_n_6 ,\r_Scroll_timer_reg[8]_i_1_n_7 }),
        .S(r_Scroll_timer_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Scroll_timer_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Scroll_timer_reg[8]_i_1_n_6 ),
        .Q(r_Scroll_timer_reg[9]),
        .R(r_Scroll_timer));
endmodule

module game_mechanics
   (r_Game_state,
    CO,
    Q,
    \r_ball_pos_x_reg[2]_0 ,
    \r_ball_pos_x_reg[3]_0 ,
    \r_ball_state_reg[1] ,
    \r_ball_pos_x_reg[3]_1 ,
    \r_ball_pos_x_reg[0]_0 ,
    \r_ball_pos_x_reg[1]_0 ,
    \r_ball_pos_x_reg[2]_1 ,
    \r_ball_pos_x_reg[3]_2 ,
    \r_ball_pos_x_reg[4]_0 ,
    \r_ball_pos_x_reg[5]_0 ,
    \r_ball_pos_x_reg[6]_0 ,
    \r_ball_pos_x_reg[7]_0 ,
    \r_ball_pos_y_reg[0]_0 ,
    \r_ball_pos_y_reg[5]_0 ,
    \r_ball_pos_y_reg[1]_0 ,
    \r_ball_pos_y_reg[2]_0 ,
    \r_ball_pos_y_reg[3]_0 ,
    \r_ball_pos_y_reg[4]_0 ,
    \r_ball_pos_y_reg[5]_1 ,
    \r_Game_state_reg[1]_0 ,
    \r_Game_state_reg[1]_1 ,
    r_send_pending_reg,
    \r_Game_state_reg[0]_0 ,
    \r_ball_pos_y_reg[1]_1 ,
    \r_ball_pos_x_reg[1]_1 ,
    \r_p1_paddle_pos_reg[0]_0 ,
    \r_p1_paddle_pos_reg[3]_0 ,
    \r_p2_paddle_pos_reg[3]_0 ,
    \r_p2_paddle_pos_reg[5]_0 ,
    \r_p2_paddle_pos_reg[0]_0 ,
    \r_ball_state_reg[1]_0 ,
    \r_ball_state_reg[1]_1 ,
    \r_ball_pos_y_reg[4]_1 ,
    \r_ball_pos_y_reg[5]_2 ,
    \r_ball_pos_y_reg[2]_1 ,
    \r_p2_paddle_pos_reg[1]_0 ,
    \r_p2_paddle_pos_reg[2]_0 ,
    \r_p2_paddle_pos_reg[0]_1 ,
    \r_Paddle_size_reg[2] ,
    \r_p1_paddle_pos_reg[1]_0 ,
    \r_p1_paddle_pos_reg[2]_0 ,
    \r_p1_paddle_pos_reg[0]_1 ,
    \r_Paddle_size_reg[2]_0 ,
    \r_p1_score_reg[0]_0 ,
    w_P1_score,
    w_P2_score,
    \r_Game_state_reg[0]_1 ,
    \FSM_sequential_r_play_state_reg[0]_0 ,
    \r_Game_state_reg[1]_2 ,
    o_Received_new_byte_reg,
    r_game_value,
    r_Game_state__0,
    \r_p2_score_reg[0]_0 ,
    \r_p2_score_reg[0]_1 ,
    \r_p1_score_reg[0]_1 ,
    \r_p2_score_reg[0]_2 ,
    \r_p1_score_reg[1]_0 ,
    \r_p2_score_reg[0]_3 ,
    \r_p2_score_reg[0]_4 ,
    \r_ball_pos_x_reg[5]_1 ,
    \r_ball_pos_x_reg[1]_2 ,
    E,
    \r_pad2_state_reg[1] ,
    \r_pad2_state_reg[1]_0 ,
    \r_ball_state_reg[1]_2 ,
    \r_p1_score_reg[1]_1 ,
    \r_Game_state_reg[1]_3 ,
    \r_p2_paddle_pos_reg[1]_1 ,
    \r_p1_paddle_pos_reg[1]_1 ,
    D,
    \r_pad1_state_reg[0] ,
    \r_pad2_state_reg[0] ,
    \FSM_sequential_r_Game_state_reg[0] ,
    \FSM_sequential_r_Game_state_reg[0]_0 ,
    CLK100MHZ_IBUF_BUFG,
    r_ball_state,
    \r_ball_pre_x_reg[0] ,
    w_TX_ready,
    \r_ball_state_reg[1]_3 ,
    \o_uart_buffer_reg[4] ,
    CPU_RESETN_IBUF,
    r_screen_render_state,
    \r_ball_state[0]_i_2 ,
    \r_ball_state[0]_i_2_0 ,
    \r_ball_state[0]_i_2_1 ,
    r_ball_pre_x,
    \r_pad1_new_pos[5]_i_3_0 ,
    r_old2_pos__0,
    \r_p2_paddle_pos_reg[5]_1 ,
    \r_p2_paddle_pos_reg[4]_0 ,
    \r_p2_paddle_pos_reg[5]_2 ,
    \r_p2_paddle_pos_reg[0]_2 ,
    \r_p2_paddle_pos[5]_i_6 ,
    w_Paddle_size,
    r_ball_dir_x2_carry_0,
    \r_ball_dir_x2_inferred__0/i__carry_0 ,
    \r_ball_dir_x2_inferred__0/i__carry_1 ,
    \r_p1_paddle_pos_reg[5]_0 ,
    \r_p1_paddle_pos_reg[4]_0 ,
    \r_p1_paddle_pos_reg[5]_1 ,
    \r_p1_paddle_pos_reg[0]_2 ,
    \r_p1_paddle_pos[5]_i_6 ,
    \r_ball_dir_x2_inferred__1/i__carry_0 ,
    \r_ball_dir_x2_inferred__2/i__carry_0 ,
    \r_ball_dir_x2_inferred__2/i__carry_1 ,
    \o_Cathodes[5]_i_5 ,
    \o_Cathodes[5]_i_5_0 ,
    \o_Cathodes[5]_i_5_1 ,
    w_New_key,
    \FSM_sequential_r_Game_state_reg[0]_1 ,
    \FSM_sequential_r_Game_state_reg[0]_2 ,
    \FSM_sequential_r_Game_state_reg[0]_3 ,
    \o_Cathodes[3]_i_9 ,
    \o_Cathodes_reg[2]_i_6 ,
    \o_Cathodes[3]_i_4 ,
    \o_Cathodes[3]_i_4_0 ,
    \r_message_index_reg[1] ,
    \r_pad2_new_pos_reg[0] ,
    \o_uart_buffer_reg[32] ,
    \o_uart_buffer_reg[32]_0 ,
    r_winner_reg,
    r_winner_reg_0,
    \r_p2_paddle_pos[5]_i_7 ,
    \r_Game_state_reg[1]_4 ,
    \r_Game_state_reg[1]_5 ,
    \r_pad2_new_pos_reg[5] ,
    \r_pad2_new_pos_reg[5]_0 ,
    \r_p2_paddle_pos_reg[3]_1 ,
    \r_ball_rate_reg[23]_0 ,
    \r_ball_rate_reg[19]_0 ,
    \r_ball_rate_reg[18]_0 ,
    \r_ball_rate_reg[17]_0 ,
    \r_ball_rate_reg[14]_0 ,
    \r_ball_rate_reg[9]_0 ,
    \r_ball_rate_reg[6]_0 ,
    \r_ball_rate_reg[4]_0 ,
    \r_p1_paddle_pos_reg[3]_1 );
  output [1:0]r_Game_state;
  output [0:0]CO;
  output [6:0]Q;
  output \r_ball_pos_x_reg[2]_0 ;
  output \r_ball_pos_x_reg[3]_0 ;
  output \r_ball_state_reg[1] ;
  output \r_ball_pos_x_reg[3]_1 ;
  output \r_ball_pos_x_reg[0]_0 ;
  output \r_ball_pos_x_reg[1]_0 ;
  output \r_ball_pos_x_reg[2]_1 ;
  output \r_ball_pos_x_reg[3]_2 ;
  output \r_ball_pos_x_reg[4]_0 ;
  output \r_ball_pos_x_reg[5]_0 ;
  output \r_ball_pos_x_reg[6]_0 ;
  output \r_ball_pos_x_reg[7]_0 ;
  output \r_ball_pos_y_reg[0]_0 ;
  output [4:0]\r_ball_pos_y_reg[5]_0 ;
  output \r_ball_pos_y_reg[1]_0 ;
  output \r_ball_pos_y_reg[2]_0 ;
  output \r_ball_pos_y_reg[3]_0 ;
  output \r_ball_pos_y_reg[4]_0 ;
  output \r_ball_pos_y_reg[5]_1 ;
  output \r_Game_state_reg[1]_0 ;
  output \r_Game_state_reg[1]_1 ;
  output r_send_pending_reg;
  output \r_Game_state_reg[0]_0 ;
  output \r_ball_pos_y_reg[1]_1 ;
  output \r_ball_pos_x_reg[1]_1 ;
  output \r_p1_paddle_pos_reg[0]_0 ;
  output [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  output \r_p2_paddle_pos_reg[3]_0 ;
  output [5:0]\r_p2_paddle_pos_reg[5]_0 ;
  output \r_p2_paddle_pos_reg[0]_0 ;
  output \r_ball_state_reg[1]_0 ;
  output \r_ball_state_reg[1]_1 ;
  output \r_ball_pos_y_reg[4]_1 ;
  output \r_ball_pos_y_reg[5]_2 ;
  output \r_ball_pos_y_reg[2]_1 ;
  output \r_p2_paddle_pos_reg[1]_0 ;
  output \r_p2_paddle_pos_reg[2]_0 ;
  output \r_p2_paddle_pos_reg[0]_1 ;
  output \r_Paddle_size_reg[2] ;
  output \r_p1_paddle_pos_reg[1]_0 ;
  output \r_p1_paddle_pos_reg[2]_0 ;
  output \r_p1_paddle_pos_reg[0]_1 ;
  output \r_Paddle_size_reg[2]_0 ;
  output \r_p1_score_reg[0]_0 ;
  output [1:0]w_P1_score;
  output [1:0]w_P2_score;
  output \r_Game_state_reg[0]_1 ;
  output \FSM_sequential_r_play_state_reg[0]_0 ;
  output \r_Game_state_reg[1]_2 ;
  output o_Received_new_byte_reg;
  output [0:0]r_game_value;
  output [0:0]r_Game_state__0;
  output \r_p2_score_reg[0]_0 ;
  output \r_p2_score_reg[0]_1 ;
  output \r_p1_score_reg[0]_1 ;
  output \r_p2_score_reg[0]_2 ;
  output \r_p1_score_reg[1]_0 ;
  output \r_p2_score_reg[0]_3 ;
  output \r_p2_score_reg[0]_4 ;
  output \r_ball_pos_x_reg[5]_1 ;
  output \r_ball_pos_x_reg[1]_2 ;
  output [0:0]E;
  output \r_pad2_state_reg[1] ;
  output \r_pad2_state_reg[1]_0 ;
  output \r_ball_state_reg[1]_2 ;
  output \r_p1_score_reg[1]_1 ;
  output \r_Game_state_reg[1]_3 ;
  output \r_p2_paddle_pos_reg[1]_1 ;
  output \r_p1_paddle_pos_reg[1]_1 ;
  output [5:0]D;
  output [0:0]\r_pad1_state_reg[0] ;
  output \r_pad2_state_reg[0] ;
  output \FSM_sequential_r_Game_state_reg[0] ;
  output \FSM_sequential_r_Game_state_reg[0]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]r_ball_state;
  input \r_ball_pre_x_reg[0] ;
  input w_TX_ready;
  input \r_ball_state_reg[1]_3 ;
  input \o_uart_buffer_reg[4] ;
  input CPU_RESETN_IBUF;
  input [1:0]r_screen_render_state;
  input \r_ball_state[0]_i_2 ;
  input \r_ball_state[0]_i_2_0 ;
  input \r_ball_state[0]_i_2_1 ;
  input [2:0]r_ball_pre_x;
  input [5:0]\r_pad1_new_pos[5]_i_3_0 ;
  input [5:0]r_old2_pos__0;
  input \r_p2_paddle_pos_reg[5]_1 ;
  input \r_p2_paddle_pos_reg[4]_0 ;
  input \r_p2_paddle_pos_reg[5]_2 ;
  input \r_p2_paddle_pos_reg[0]_2 ;
  input \r_p2_paddle_pos[5]_i_6 ;
  input [2:0]w_Paddle_size;
  input r_ball_dir_x2_carry_0;
  input \r_ball_dir_x2_inferred__0/i__carry_0 ;
  input \r_ball_dir_x2_inferred__0/i__carry_1 ;
  input \r_p1_paddle_pos_reg[5]_0 ;
  input \r_p1_paddle_pos_reg[4]_0 ;
  input \r_p1_paddle_pos_reg[5]_1 ;
  input \r_p1_paddle_pos_reg[0]_2 ;
  input \r_p1_paddle_pos[5]_i_6 ;
  input \r_ball_dir_x2_inferred__1/i__carry_0 ;
  input \r_ball_dir_x2_inferred__2/i__carry_0 ;
  input \r_ball_dir_x2_inferred__2/i__carry_1 ;
  input \o_Cathodes[5]_i_5 ;
  input \o_Cathodes[5]_i_5_0 ;
  input \o_Cathodes[5]_i_5_1 ;
  input w_New_key;
  input \FSM_sequential_r_Game_state_reg[0]_1 ;
  input \FSM_sequential_r_Game_state_reg[0]_2 ;
  input \FSM_sequential_r_Game_state_reg[0]_3 ;
  input \o_Cathodes[3]_i_9 ;
  input \o_Cathodes_reg[2]_i_6 ;
  input \o_Cathodes[3]_i_4 ;
  input \o_Cathodes[3]_i_4_0 ;
  input \r_message_index_reg[1] ;
  input \r_pad2_new_pos_reg[0] ;
  input \o_uart_buffer_reg[32] ;
  input \o_uart_buffer_reg[32]_0 ;
  input r_winner_reg;
  input r_winner_reg_0;
  input \r_p2_paddle_pos[5]_i_7 ;
  input \r_Game_state_reg[1]_4 ;
  input \r_Game_state_reg[1]_5 ;
  input \r_pad2_new_pos_reg[5] ;
  input \r_pad2_new_pos_reg[5]_0 ;
  input [3:0]\r_p2_paddle_pos_reg[3]_1 ;
  input [16:0]\r_ball_rate_reg[23]_0 ;
  input \r_ball_rate_reg[19]_0 ;
  input \r_ball_rate_reg[18]_0 ;
  input \r_ball_rate_reg[17]_0 ;
  input \r_ball_rate_reg[14]_0 ;
  input \r_ball_rate_reg[9]_0 ;
  input \r_ball_rate_reg[6]_0 ;
  input \r_ball_rate_reg[4]_0 ;
  input [3:0]\r_p1_paddle_pos_reg[3]_1 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]CO;
  wire CPU_RESETN_IBUF;
  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_sequential_r_Game_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_Game_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_Game_state_reg[0] ;
  wire \FSM_sequential_r_Game_state_reg[0]_0 ;
  wire \FSM_sequential_r_Game_state_reg[0]_1 ;
  wire \FSM_sequential_r_Game_state_reg[0]_2 ;
  wire \FSM_sequential_r_Game_state_reg[0]_3 ;
  wire \FSM_sequential_r_play_state[0]_i_1_n_0 ;
  wire \FSM_sequential_r_play_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_play_state[1]_i_1_n_0 ;
  wire \FSM_sequential_r_play_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_play_state[1]_i_3_n_0 ;
  wire \FSM_sequential_r_play_state[1]_i_4_n_0 ;
  wire \FSM_sequential_r_play_state[1]_i_5_n_0 ;
  wire \FSM_sequential_r_play_state[1]_i_6_n_0 ;
  wire \FSM_sequential_r_play_state_reg[0]_0 ;
  wire [6:0]Q;
  wire i___47_carry__0_i_1_n_0;
  wire i___47_carry__0_i_2_n_0;
  wire i___47_carry__0_i_3_n_0;
  wire i___47_carry__0_i_4_n_0;
  wire i___47_carry__1_i_1_n_3;
  wire i___47_carry_i_1_n_0;
  wire i___47_carry_i_2_n_0;
  wire i___47_carry_i_3_n_0;
  wire i___47_carry_i_4_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire \o_Cathodes[3]_i_4 ;
  wire \o_Cathodes[3]_i_4_0 ;
  wire \o_Cathodes[3]_i_9 ;
  wire \o_Cathodes[5]_i_5 ;
  wire \o_Cathodes[5]_i_5_0 ;
  wire \o_Cathodes[5]_i_5_1 ;
  wire \o_Cathodes_reg[2]_i_6 ;
  wire o_Received_new_byte_reg;
  wire \o_uart_buffer[17]_i_5_n_0 ;
  wire \o_uart_buffer[17]_i_6_n_0 ;
  wire \o_uart_buffer[18]_i_5_n_0 ;
  wire \o_uart_buffer[19]_i_8_n_0 ;
  wire \o_uart_buffer[33]_i_10_n_0 ;
  wire \o_uart_buffer[33]_i_14_n_0 ;
  wire \o_uart_buffer[33]_i_15_n_0 ;
  wire \o_uart_buffer[33]_i_16_n_0 ;
  wire \o_uart_buffer[33]_i_17_n_0 ;
  wire \o_uart_buffer[33]_i_18_n_0 ;
  wire \o_uart_buffer[33]_i_19_n_0 ;
  wire \o_uart_buffer[33]_i_9_n_0 ;
  wire \o_uart_buffer_reg[32] ;
  wire \o_uart_buffer_reg[32]_0 ;
  wire \o_uart_buffer_reg[33]_i_8_n_0 ;
  wire \o_uart_buffer_reg[33]_i_8_n_1 ;
  wire \o_uart_buffer_reg[33]_i_8_n_2 ;
  wire \o_uart_buffer_reg[33]_i_8_n_3 ;
  wire \o_uart_buffer_reg[4] ;
  wire [1:0]r_Game_state;
  wire \r_Game_state[0]_i_1_n_0 ;
  wire \r_Game_state[1]_i_1_n_0 ;
  wire [0:0]r_Game_state__0;
  wire \r_Game_state_reg[0]_0 ;
  wire \r_Game_state_reg[0]_1 ;
  wire \r_Game_state_reg[1]_0 ;
  wire \r_Game_state_reg[1]_1 ;
  wire \r_Game_state_reg[1]_2 ;
  wire \r_Game_state_reg[1]_3 ;
  wire \r_Game_state_reg[1]_4 ;
  wire \r_Game_state_reg[1]_5 ;
  wire \r_Paddle_size_reg[2] ;
  wire \r_Paddle_size_reg[2]_0 ;
  wire [0:0]r_ball_count;
  wire r_ball_count0;
  wire r_ball_count0_carry__0_n_0;
  wire r_ball_count0_carry__0_n_1;
  wire r_ball_count0_carry__0_n_2;
  wire r_ball_count0_carry__0_n_3;
  wire r_ball_count0_carry__0_n_4;
  wire r_ball_count0_carry__0_n_5;
  wire r_ball_count0_carry__0_n_6;
  wire r_ball_count0_carry__0_n_7;
  wire r_ball_count0_carry__1_n_0;
  wire r_ball_count0_carry__1_n_1;
  wire r_ball_count0_carry__1_n_2;
  wire r_ball_count0_carry__1_n_3;
  wire r_ball_count0_carry__1_n_4;
  wire r_ball_count0_carry__1_n_5;
  wire r_ball_count0_carry__1_n_6;
  wire r_ball_count0_carry__1_n_7;
  wire r_ball_count0_carry__2_n_0;
  wire r_ball_count0_carry__2_n_1;
  wire r_ball_count0_carry__2_n_2;
  wire r_ball_count0_carry__2_n_3;
  wire r_ball_count0_carry__2_n_4;
  wire r_ball_count0_carry__2_n_5;
  wire r_ball_count0_carry__2_n_6;
  wire r_ball_count0_carry__2_n_7;
  wire r_ball_count0_carry__3_n_0;
  wire r_ball_count0_carry__3_n_1;
  wire r_ball_count0_carry__3_n_2;
  wire r_ball_count0_carry__3_n_3;
  wire r_ball_count0_carry__3_n_4;
  wire r_ball_count0_carry__3_n_5;
  wire r_ball_count0_carry__3_n_6;
  wire r_ball_count0_carry__3_n_7;
  wire r_ball_count0_carry__4_n_2;
  wire r_ball_count0_carry__4_n_3;
  wire r_ball_count0_carry__4_n_5;
  wire r_ball_count0_carry__4_n_6;
  wire r_ball_count0_carry__4_n_7;
  wire r_ball_count0_carry_n_0;
  wire r_ball_count0_carry_n_1;
  wire r_ball_count0_carry_n_2;
  wire r_ball_count0_carry_n_3;
  wire r_ball_count0_carry_n_4;
  wire r_ball_count0_carry_n_5;
  wire r_ball_count0_carry_n_6;
  wire r_ball_count0_carry_n_7;
  wire r_ball_count1_carry__0_i_1_n_0;
  wire r_ball_count1_carry__0_i_2_n_0;
  wire r_ball_count1_carry__0_i_3_n_0;
  wire r_ball_count1_carry__0_i_4_n_0;
  wire r_ball_count1_carry__0_i_5_n_0;
  wire r_ball_count1_carry__0_i_6_n_0;
  wire r_ball_count1_carry__0_i_7_n_0;
  wire r_ball_count1_carry__0_i_8_n_0;
  wire r_ball_count1_carry__0_n_0;
  wire r_ball_count1_carry__0_n_1;
  wire r_ball_count1_carry__0_n_2;
  wire r_ball_count1_carry__0_n_3;
  wire r_ball_count1_carry__1_i_1_n_0;
  wire r_ball_count1_carry__1_i_2_n_0;
  wire r_ball_count1_carry__1_i_3_n_0;
  wire r_ball_count1_carry__1_i_4_n_0;
  wire r_ball_count1_carry__1_i_5_n_0;
  wire r_ball_count1_carry__1_i_6_n_0;
  wire r_ball_count1_carry__1_i_7_n_0;
  wire r_ball_count1_carry__1_i_8_n_0;
  wire r_ball_count1_carry__1_n_0;
  wire r_ball_count1_carry__1_n_1;
  wire r_ball_count1_carry__1_n_2;
  wire r_ball_count1_carry__1_n_3;
  wire r_ball_count1_carry_i_1_n_0;
  wire r_ball_count1_carry_i_2_n_0;
  wire r_ball_count1_carry_i_3_n_0;
  wire r_ball_count1_carry_i_4_n_0;
  wire r_ball_count1_carry_i_5_n_0;
  wire r_ball_count1_carry_i_6_n_0;
  wire r_ball_count1_carry_i_7_n_0;
  wire r_ball_count1_carry_i_8_n_0;
  wire r_ball_count1_carry_n_0;
  wire r_ball_count1_carry_n_1;
  wire r_ball_count1_carry_n_2;
  wire r_ball_count1_carry_n_3;
  wire [23:1]r_ball_count2;
  wire r_ball_count2_carry__0_i_1_n_0;
  wire r_ball_count2_carry__0_i_2_n_0;
  wire r_ball_count2_carry__0_i_3_n_0;
  wire r_ball_count2_carry__0_i_4_n_0;
  wire r_ball_count2_carry__0_n_0;
  wire r_ball_count2_carry__0_n_1;
  wire r_ball_count2_carry__0_n_2;
  wire r_ball_count2_carry__0_n_3;
  wire r_ball_count2_carry__1_i_1_n_0;
  wire r_ball_count2_carry__1_i_2_n_0;
  wire r_ball_count2_carry__1_i_3_n_0;
  wire r_ball_count2_carry__1_i_4_n_0;
  wire r_ball_count2_carry__1_n_0;
  wire r_ball_count2_carry__1_n_1;
  wire r_ball_count2_carry__1_n_2;
  wire r_ball_count2_carry__1_n_3;
  wire r_ball_count2_carry__2_i_1_n_0;
  wire r_ball_count2_carry__2_i_2_n_0;
  wire r_ball_count2_carry__2_i_3_n_0;
  wire r_ball_count2_carry__2_i_4_n_0;
  wire r_ball_count2_carry__2_n_0;
  wire r_ball_count2_carry__2_n_1;
  wire r_ball_count2_carry__2_n_2;
  wire r_ball_count2_carry__2_n_3;
  wire r_ball_count2_carry__3_i_1_n_0;
  wire r_ball_count2_carry__3_i_2_n_0;
  wire r_ball_count2_carry__3_i_3_n_0;
  wire r_ball_count2_carry__3_i_4_n_0;
  wire r_ball_count2_carry__3_n_0;
  wire r_ball_count2_carry__3_n_1;
  wire r_ball_count2_carry__3_n_2;
  wire r_ball_count2_carry__3_n_3;
  wire r_ball_count2_carry__4_i_1_n_0;
  wire r_ball_count2_carry__4_i_2_n_0;
  wire r_ball_count2_carry__4_i_3_n_0;
  wire r_ball_count2_carry__4_n_2;
  wire r_ball_count2_carry__4_n_3;
  wire r_ball_count2_carry_i_1_n_0;
  wire r_ball_count2_carry_i_2_n_0;
  wire r_ball_count2_carry_i_3_n_0;
  wire r_ball_count2_carry_i_4_n_0;
  wire r_ball_count2_carry_n_0;
  wire r_ball_count2_carry_n_1;
  wire r_ball_count2_carry_n_2;
  wire r_ball_count2_carry_n_3;
  wire \r_ball_count[0]_i_1_n_0 ;
  wire \r_ball_count[10]_i_1_n_0 ;
  wire \r_ball_count[11]_i_1_n_0 ;
  wire \r_ball_count[12]_i_1_n_0 ;
  wire \r_ball_count[13]_i_1_n_0 ;
  wire \r_ball_count[14]_i_1_n_0 ;
  wire \r_ball_count[15]_i_1_n_0 ;
  wire \r_ball_count[16]_i_1_n_0 ;
  wire \r_ball_count[17]_i_1_n_0 ;
  wire \r_ball_count[18]_i_1_n_0 ;
  wire \r_ball_count[19]_i_1_n_0 ;
  wire \r_ball_count[1]_i_1_n_0 ;
  wire \r_ball_count[20]_i_1_n_0 ;
  wire \r_ball_count[21]_i_1_n_0 ;
  wire \r_ball_count[22]_i_1_n_0 ;
  wire \r_ball_count[23]_i_3_n_0 ;
  wire \r_ball_count[23]_i_4_n_0 ;
  wire \r_ball_count[23]_i_5_n_0 ;
  wire \r_ball_count[2]_i_1_n_0 ;
  wire \r_ball_count[3]_i_1_n_0 ;
  wire \r_ball_count[4]_i_1_n_0 ;
  wire \r_ball_count[5]_i_1_n_0 ;
  wire \r_ball_count[6]_i_1_n_0 ;
  wire \r_ball_count[7]_i_1_n_0 ;
  wire \r_ball_count[8]_i_1_n_0 ;
  wire \r_ball_count[9]_i_1_n_0 ;
  wire \r_ball_count_reg_n_0_[0] ;
  wire \r_ball_count_reg_n_0_[10] ;
  wire \r_ball_count_reg_n_0_[11] ;
  wire \r_ball_count_reg_n_0_[12] ;
  wire \r_ball_count_reg_n_0_[13] ;
  wire \r_ball_count_reg_n_0_[14] ;
  wire \r_ball_count_reg_n_0_[15] ;
  wire \r_ball_count_reg_n_0_[16] ;
  wire \r_ball_count_reg_n_0_[17] ;
  wire \r_ball_count_reg_n_0_[18] ;
  wire \r_ball_count_reg_n_0_[19] ;
  wire \r_ball_count_reg_n_0_[1] ;
  wire \r_ball_count_reg_n_0_[20] ;
  wire \r_ball_count_reg_n_0_[21] ;
  wire \r_ball_count_reg_n_0_[22] ;
  wire \r_ball_count_reg_n_0_[23] ;
  wire \r_ball_count_reg_n_0_[2] ;
  wire \r_ball_count_reg_n_0_[3] ;
  wire \r_ball_count_reg_n_0_[4] ;
  wire \r_ball_count_reg_n_0_[5] ;
  wire \r_ball_count_reg_n_0_[6] ;
  wire \r_ball_count_reg_n_0_[7] ;
  wire \r_ball_count_reg_n_0_[8] ;
  wire \r_ball_count_reg_n_0_[9] ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry__0_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry__0_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry__0_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry__0_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i___47_carry_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_4 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_5 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_6 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__0_n_7 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_4 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_5 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_6 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__1_n_7 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_4 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_5 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_6 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__2_n_7 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_4 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_5 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_6 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__3_n_7 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_4 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_5 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_6 ;
  wire \r_ball_dir_x1_inferred__3/i__carry__4_n_7 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_0 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_1 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_2 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_3 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_4 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_5 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_6 ;
  wire \r_ball_dir_x1_inferred__3/i__carry_n_7 ;
  wire r_ball_dir_x2;
  wire r_ball_dir_x22_in;
  wire r_ball_dir_x23_in;
  wire r_ball_dir_x24_in;
  wire r_ball_dir_x2_carry_0;
  wire r_ball_dir_x2_carry_i_10_n_0;
  wire r_ball_dir_x2_carry_i_11_n_0;
  wire r_ball_dir_x2_carry_i_2_n_0;
  wire r_ball_dir_x2_carry_i_3_n_0;
  wire r_ball_dir_x2_carry_i_4_n_0;
  wire r_ball_dir_x2_carry_i_5_n_0;
  wire r_ball_dir_x2_carry_i_6_n_0;
  wire r_ball_dir_x2_carry_i_7_n_0;
  wire r_ball_dir_x2_carry_i_8_n_0;
  wire r_ball_dir_x2_carry_n_1;
  wire r_ball_dir_x2_carry_n_2;
  wire r_ball_dir_x2_carry_n_3;
  wire \r_ball_dir_x2_inferred__0/i__carry_0 ;
  wire \r_ball_dir_x2_inferred__0/i__carry_1 ;
  wire \r_ball_dir_x2_inferred__0/i__carry_n_1 ;
  wire \r_ball_dir_x2_inferred__0/i__carry_n_2 ;
  wire \r_ball_dir_x2_inferred__0/i__carry_n_3 ;
  wire \r_ball_dir_x2_inferred__1/i__carry_0 ;
  wire \r_ball_dir_x2_inferred__1/i__carry_n_1 ;
  wire \r_ball_dir_x2_inferred__1/i__carry_n_2 ;
  wire \r_ball_dir_x2_inferred__1/i__carry_n_3 ;
  wire \r_ball_dir_x2_inferred__2/i__carry_0 ;
  wire \r_ball_dir_x2_inferred__2/i__carry_1 ;
  wire \r_ball_dir_x2_inferred__2/i__carry_n_1 ;
  wire \r_ball_dir_x2_inferred__2/i__carry_n_2 ;
  wire \r_ball_dir_x2_inferred__2/i__carry_n_3 ;
  wire [6:6]r_ball_dir_x3;
  wire r_ball_dir_x_i_1_n_0;
  wire r_ball_dir_x_i_2_n_0;
  wire r_ball_dir_x_i_3_n_0;
  wire r_ball_dir_x_i_4_n_0;
  wire r_ball_dir_x_i_5_n_0;
  wire r_ball_dir_x_i_6_n_0;
  wire r_ball_dir_x_i_7_n_0;
  wire r_ball_dir_x_reg_n_0;
  wire r_ball_dir_y_i_1_n_0;
  wire r_ball_dir_y_i_2_n_0;
  wire r_ball_dir_y_i_3_n_0;
  wire r_ball_dir_y_i_4_n_0;
  wire r_ball_dir_y_i_5_n_0;
  wire r_ball_dir_y_reg_n_0;
  wire [0:0]r_ball_pos_x;
  wire \r_ball_pos_x[0]_i_1_n_0 ;
  wire \r_ball_pos_x[0]_i_2_n_0 ;
  wire \r_ball_pos_x[1]_i_1_n_0 ;
  wire \r_ball_pos_x[2]_i_1_n_0 ;
  wire \r_ball_pos_x[3]_i_1_n_0 ;
  wire \r_ball_pos_x[3]_i_2_n_0 ;
  wire \r_ball_pos_x[3]_i_3_n_0 ;
  wire \r_ball_pos_x[3]_i_4_n_0 ;
  wire \r_ball_pos_x[4]_i_1_n_0 ;
  wire \r_ball_pos_x[4]_i_2_n_0 ;
  wire \r_ball_pos_x[4]_i_3_n_0 ;
  wire \r_ball_pos_x[5]_i_1_n_0 ;
  wire \r_ball_pos_x[5]_i_2_n_0 ;
  wire \r_ball_pos_x[5]_i_3_n_0 ;
  wire \r_ball_pos_x[6]_i_1_n_0 ;
  wire \r_ball_pos_x[6]_i_2_n_0 ;
  wire \r_ball_pos_x[6]_i_3_n_0 ;
  wire \r_ball_pos_x[6]_i_4_n_0 ;
  wire \r_ball_pos_x[6]_i_5_n_0 ;
  wire \r_ball_pos_x[7]_i_2_n_0 ;
  wire \r_ball_pos_x[7]_i_3_n_0 ;
  wire \r_ball_pos_x[7]_i_4_n_0 ;
  wire \r_ball_pos_x_reg[0]_0 ;
  wire \r_ball_pos_x_reg[1]_0 ;
  wire \r_ball_pos_x_reg[1]_1 ;
  wire \r_ball_pos_x_reg[1]_2 ;
  wire \r_ball_pos_x_reg[2]_0 ;
  wire \r_ball_pos_x_reg[2]_1 ;
  wire \r_ball_pos_x_reg[3]_0 ;
  wire \r_ball_pos_x_reg[3]_1 ;
  wire \r_ball_pos_x_reg[3]_2 ;
  wire \r_ball_pos_x_reg[4]_0 ;
  wire \r_ball_pos_x_reg[5]_0 ;
  wire \r_ball_pos_x_reg[5]_1 ;
  wire \r_ball_pos_x_reg[6]_0 ;
  wire \r_ball_pos_x_reg[7]_0 ;
  wire [0:0]r_ball_pos_y;
  wire \r_ball_pos_y[0]_i_1_n_0 ;
  wire \r_ball_pos_y[1]_i_1_n_0 ;
  wire \r_ball_pos_y[1]_i_2_n_0 ;
  wire \r_ball_pos_y[1]_i_3_n_0 ;
  wire \r_ball_pos_y[1]_i_4_n_0 ;
  wire \r_ball_pos_y[2]_i_1_n_0 ;
  wire \r_ball_pos_y[3]_i_1_n_0 ;
  wire \r_ball_pos_y[4]_i_1_n_0 ;
  wire \r_ball_pos_y[4]_i_2_n_0 ;
  wire \r_ball_pos_y[4]_i_3_n_0 ;
  wire \r_ball_pos_y[4]_i_4_n_0 ;
  wire \r_ball_pos_y[5]_i_2_n_0 ;
  wire \r_ball_pos_y[5]_i_3_n_0 ;
  wire \r_ball_pos_y[5]_i_4_n_0 ;
  wire \r_ball_pos_y[5]_i_5_n_0 ;
  wire \r_ball_pos_y[5]_i_6_n_0 ;
  wire \r_ball_pos_y[5]_i_7_n_0 ;
  wire \r_ball_pos_y[5]_i_8_n_0 ;
  wire \r_ball_pos_y[5]_i_9_n_0 ;
  wire \r_ball_pos_y_reg[0]_0 ;
  wire \r_ball_pos_y_reg[1]_0 ;
  wire \r_ball_pos_y_reg[1]_1 ;
  wire \r_ball_pos_y_reg[2]_0 ;
  wire \r_ball_pos_y_reg[2]_1 ;
  wire \r_ball_pos_y_reg[3]_0 ;
  wire \r_ball_pos_y_reg[4]_0 ;
  wire \r_ball_pos_y_reg[4]_1 ;
  wire [4:0]\r_ball_pos_y_reg[5]_0 ;
  wire \r_ball_pos_y_reg[5]_1 ;
  wire \r_ball_pos_y_reg[5]_2 ;
  wire [2:0]r_ball_pre_x;
  wire \r_ball_pre_x_reg[0] ;
  wire \r_ball_rate[19]_i_1_n_0 ;
  wire \r_ball_rate[23]_i_1_n_0 ;
  wire \r_ball_rate_reg[14]_0 ;
  wire \r_ball_rate_reg[17]_0 ;
  wire \r_ball_rate_reg[18]_0 ;
  wire \r_ball_rate_reg[19]_0 ;
  wire [16:0]\r_ball_rate_reg[23]_0 ;
  wire \r_ball_rate_reg[4]_0 ;
  wire \r_ball_rate_reg[6]_0 ;
  wire \r_ball_rate_reg[9]_0 ;
  wire \r_ball_rate_reg_n_0_[0] ;
  wire \r_ball_rate_reg_n_0_[10] ;
  wire \r_ball_rate_reg_n_0_[11] ;
  wire \r_ball_rate_reg_n_0_[12] ;
  wire \r_ball_rate_reg_n_0_[13] ;
  wire \r_ball_rate_reg_n_0_[14] ;
  wire \r_ball_rate_reg_n_0_[15] ;
  wire \r_ball_rate_reg_n_0_[16] ;
  wire \r_ball_rate_reg_n_0_[17] ;
  wire \r_ball_rate_reg_n_0_[18] ;
  wire \r_ball_rate_reg_n_0_[19] ;
  wire \r_ball_rate_reg_n_0_[1] ;
  wire \r_ball_rate_reg_n_0_[20] ;
  wire \r_ball_rate_reg_n_0_[21] ;
  wire \r_ball_rate_reg_n_0_[22] ;
  wire \r_ball_rate_reg_n_0_[23] ;
  wire \r_ball_rate_reg_n_0_[2] ;
  wire \r_ball_rate_reg_n_0_[3] ;
  wire \r_ball_rate_reg_n_0_[4] ;
  wire \r_ball_rate_reg_n_0_[5] ;
  wire \r_ball_rate_reg_n_0_[6] ;
  wire \r_ball_rate_reg_n_0_[7] ;
  wire \r_ball_rate_reg_n_0_[8] ;
  wire \r_ball_rate_reg_n_0_[9] ;
  wire [0:0]r_ball_state;
  wire \r_ball_state[0]_i_2 ;
  wire \r_ball_state[0]_i_2_0 ;
  wire \r_ball_state[0]_i_2_1 ;
  wire \r_ball_state_reg[1] ;
  wire \r_ball_state_reg[1]_0 ;
  wire \r_ball_state_reg[1]_1 ;
  wire \r_ball_state_reg[1]_2 ;
  wire \r_ball_state_reg[1]_3 ;
  wire [0:0]r_game_value;
  wire \r_message_index_reg[1] ;
  wire [5:0]r_old2_pos__0;
  wire [0:0]r_p1_paddle_pos;
  wire \r_p1_paddle_pos[4]_i_1_n_0 ;
  wire \r_p1_paddle_pos[4]_i_2_n_0 ;
  wire \r_p1_paddle_pos[5]_i_10_n_0 ;
  wire \r_p1_paddle_pos[5]_i_2_n_0 ;
  wire \r_p1_paddle_pos[5]_i_4_n_0 ;
  wire \r_p1_paddle_pos[5]_i_5_n_0 ;
  wire \r_p1_paddle_pos[5]_i_6 ;
  wire \r_p1_paddle_pos_reg[0]_0 ;
  wire \r_p1_paddle_pos_reg[0]_1 ;
  wire \r_p1_paddle_pos_reg[0]_2 ;
  wire \r_p1_paddle_pos_reg[1]_0 ;
  wire \r_p1_paddle_pos_reg[1]_1 ;
  wire \r_p1_paddle_pos_reg[2]_0 ;
  wire [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  wire [3:0]\r_p1_paddle_pos_reg[3]_1 ;
  wire \r_p1_paddle_pos_reg[4]_0 ;
  wire \r_p1_paddle_pos_reg[5]_0 ;
  wire \r_p1_paddle_pos_reg[5]_1 ;
  wire \r_p1_score[0]_i_1_n_0 ;
  wire \r_p1_score[1]_i_1_n_0 ;
  wire \r_p1_score[1]_i_2_n_0 ;
  wire \r_p1_score[1]_i_3_n_0 ;
  wire \r_p1_score_reg[0]_0 ;
  wire \r_p1_score_reg[0]_1 ;
  wire \r_p1_score_reg[1]_0 ;
  wire \r_p1_score_reg[1]_1 ;
  wire [0:0]r_p2_paddle_pos;
  wire \r_p2_paddle_pos[4]_i_1_n_0 ;
  wire \r_p2_paddle_pos[4]_i_2_n_0 ;
  wire \r_p2_paddle_pos[5]_i_11_n_0 ;
  wire \r_p2_paddle_pos[5]_i_2_n_0 ;
  wire \r_p2_paddle_pos[5]_i_4_n_0 ;
  wire \r_p2_paddle_pos[5]_i_5_n_0 ;
  wire \r_p2_paddle_pos[5]_i_6 ;
  wire \r_p2_paddle_pos[5]_i_7 ;
  wire \r_p2_paddle_pos_reg[0]_0 ;
  wire \r_p2_paddle_pos_reg[0]_1 ;
  wire \r_p2_paddle_pos_reg[0]_2 ;
  wire \r_p2_paddle_pos_reg[1]_0 ;
  wire \r_p2_paddle_pos_reg[1]_1 ;
  wire \r_p2_paddle_pos_reg[2]_0 ;
  wire \r_p2_paddle_pos_reg[3]_0 ;
  wire [3:0]\r_p2_paddle_pos_reg[3]_1 ;
  wire \r_p2_paddle_pos_reg[4]_0 ;
  wire [5:0]\r_p2_paddle_pos_reg[5]_0 ;
  wire \r_p2_paddle_pos_reg[5]_1 ;
  wire \r_p2_paddle_pos_reg[5]_2 ;
  wire \r_p2_score[0]_i_1_n_0 ;
  wire \r_p2_score[1]_i_1_n_0 ;
  wire \r_p2_score[1]_i_2_n_0 ;
  wire \r_p2_score[1]_i_3_n_0 ;
  wire \r_p2_score[1]_i_4_n_0 ;
  wire \r_p2_score_reg[0]_0 ;
  wire \r_p2_score_reg[0]_1 ;
  wire \r_p2_score_reg[0]_2 ;
  wire \r_p2_score_reg[0]_3 ;
  wire \r_p2_score_reg[0]_4 ;
  wire [5:0]\r_pad1_new_pos[5]_i_3_0 ;
  wire \r_pad1_new_pos[5]_i_5_n_0 ;
  wire \r_pad1_new_pos[5]_i_6_n_0 ;
  wire [0:0]\r_pad1_state_reg[0] ;
  wire \r_pad2_new_pos_reg[0] ;
  wire \r_pad2_new_pos_reg[5] ;
  wire \r_pad2_new_pos_reg[5]_0 ;
  wire \r_pad2_state_reg[0] ;
  wire \r_pad2_state_reg[1] ;
  wire \r_pad2_state_reg[1]_0 ;
  wire [1:0]r_play_state;
  wire r_point_p2_i_1_n_0;
  wire r_point_p2_i_2_n_0;
  wire r_point_p2_i_3_n_0;
  wire r_point_p2_i_4_n_0;
  wire r_point_p2_reg_n_0;
  wire [1:0]r_screen_render_state;
  wire r_send_pending_reg;
  wire \r_serve_pattern[0]_i_1_n_0 ;
  wire \r_serve_pattern[1]_i_1_n_0 ;
  wire \r_serve_pattern_reg_n_0_[0] ;
  wire \r_serve_pattern_reg_n_0_[1] ;
  wire r_winner_reg;
  wire r_winner_reg_0;
  wire [0:0]r_y_step_count;
  wire \r_y_step_count[0]_i_1_n_0 ;
  wire \r_y_step_count[0]_i_3_n_0 ;
  wire \r_y_step_count[0]_i_4_n_0 ;
  wire \r_y_step_count[2]_i_1_n_0 ;
  wire \r_y_step_count[2]_i_2_n_0 ;
  wire \r_y_step_count_reg_n_0_[0] ;
  wire \r_y_step_count_reg_n_0_[2] ;
  wire [2:2]w_Ball_pos_x;
  wire [2:2]w_Ball_pos_y;
  wire w_New_key;
  wire [5:4]w_P1_paddle;
  wire [1:0]w_P1_score;
  wire [1:0]w_P2_score;
  wire [2:0]w_Paddle_size;
  wire w_TX_ready;
  wire [3:1]NLW_i___47_carry__1_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_i___47_carry__1_i_1_O_UNCONNECTED;
  wire [3:1]\NLW_o_uart_buffer_reg[33]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_uart_buffer_reg[33]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_o_uart_buffer_reg[33]_i_8_O_UNCONNECTED ;
  wire [3:2]NLW_r_ball_count0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_r_ball_count0_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_r_ball_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_r_ball_count1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_ball_count1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_r_ball_count2_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_r_ball_count2_carry__4_O_UNCONNECTED;
  wire [3:0]\NLW_r_ball_dir_x1_inferred__3/i___47_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_r_ball_dir_x1_inferred__3/i___47_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_r_ball_dir_x2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_r_ball_dir_x2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_r_ball_dir_x2_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_r_ball_dir_x2_inferred__2/i__carry_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00808080)) 
    \FSM_sequential_r_Game_state[0]_i_1 
       (.I0(\FSM_sequential_r_Game_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_r_Game_state_reg[0]_1 ),
        .I2(CPU_RESETN_IBUF),
        .I3(\FSM_sequential_r_Game_state_reg[0]_2 ),
        .I4(w_New_key),
        .I5(\FSM_sequential_r_Game_state_reg[0]_3 ),
        .O(\FSM_sequential_r_Game_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000777)) 
    \FSM_sequential_r_Game_state[0]_i_2 
       (.I0(w_P1_score[0]),
        .I1(w_P1_score[1]),
        .I2(w_P2_score[0]),
        .I3(w_P2_score[1]),
        .I4(\FSM_sequential_r_Game_state_reg[0]_2 ),
        .O(\FSM_sequential_r_Game_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0044004400443044)) 
    \FSM_sequential_r_Game_state[1]_i_1 
       (.I0(\FSM_sequential_r_Game_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_r_Game_state_reg[0]_1 ),
        .I2(CPU_RESETN_IBUF),
        .I3(\FSM_sequential_r_Game_state_reg[0]_2 ),
        .I4(w_New_key),
        .I5(\FSM_sequential_r_Game_state_reg[0]_3 ),
        .O(\FSM_sequential_r_Game_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \FSM_sequential_r_Game_state[1]_i_2 
       (.I0(w_P2_score[1]),
        .I1(w_P2_score[0]),
        .I2(w_P1_score[1]),
        .I3(w_P1_score[0]),
        .O(\FSM_sequential_r_Game_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FFF200)) 
    \FSM_sequential_r_play_state[0]_i_1 
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .I2(r_play_state[1]),
        .I3(\FSM_sequential_r_play_state[0]_i_2_n_0 ),
        .I4(r_play_state[0]),
        .O(\FSM_sequential_r_play_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0155FFFF)) 
    \FSM_sequential_r_play_state[0]_i_2 
       (.I0(\FSM_sequential_r_play_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_r_play_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_r_play_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_r_play_state[1]_i_5_n_0 ),
        .I4(CPU_RESETN_IBUF),
        .O(\FSM_sequential_r_play_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAA030001000300)) 
    \FSM_sequential_r_play_state[1]_i_1 
       (.I0(\FSM_sequential_r_play_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_r_play_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_r_play_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_r_play_state[1]_i_5_n_0 ),
        .I4(CPU_RESETN_IBUF),
        .I5(r_play_state[1]),
        .O(\FSM_sequential_r_play_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \FSM_sequential_r_play_state[1]_i_2 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(r_Game_state[1]),
        .I3(r_Game_state[0]),
        .O(\FSM_sequential_r_play_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00D5FFFF)) 
    \FSM_sequential_r_play_state[1]_i_3 
       (.I0(\FSM_sequential_r_play_state[1]_i_6_n_0 ),
        .I1(r_ball_dir_x22_in),
        .I2(r_ball_dir_x2),
        .I3(r_point_p2_i_3_n_0),
        .I4(\r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 ),
        .O(\FSM_sequential_r_play_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_r_play_state[1]_i_4 
       (.I0(r_point_p2_i_3_n_0),
        .I1(r_ball_dir_x24_in),
        .I2(r_ball_dir_x23_in),
        .O(\FSM_sequential_r_play_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \FSM_sequential_r_play_state[1]_i_5 
       (.I0(r_play_state[1]),
        .I1(r_play_state[0]),
        .I2(r_Game_state[0]),
        .I3(r_Game_state[1]),
        .O(\FSM_sequential_r_play_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF800000000000000)) 
    \FSM_sequential_r_play_state[1]_i_6 
       (.I0(Q[2]),
        .I1(w_Ball_pos_x),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\FSM_sequential_r_play_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "ps_playing:01,ps_point_scored:10,ps_idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_play_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_r_play_state[0]_i_1_n_0 ),
        .Q(r_play_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ps_playing:01,ps_point_scored:10,ps_idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_play_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_r_play_state[1]_i_1_n_0 ),
        .Q(r_play_state[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry__0_i_1
       (.I0(\r_ball_count_reg_n_0_[23] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry__4_n_4 ),
        .I2(\r_ball_count_reg_n_0_[21] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__4_n_6 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__4_n_5 ),
        .I5(\r_ball_count_reg_n_0_[22] ),
        .O(i___47_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry__0_i_2
       (.I0(\r_ball_count_reg_n_0_[20] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry__4_n_7 ),
        .I2(\r_ball_count_reg_n_0_[18] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__3_n_5 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__3_n_4 ),
        .I5(\r_ball_count_reg_n_0_[19] ),
        .O(i___47_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry__0_i_3
       (.I0(\r_ball_count_reg_n_0_[15] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry__2_n_4 ),
        .I2(\r_ball_count_reg_n_0_[16] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__3_n_7 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__3_n_6 ),
        .I5(\r_ball_count_reg_n_0_[17] ),
        .O(i___47_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry__0_i_4
       (.I0(\r_ball_count_reg_n_0_[12] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry__2_n_7 ),
        .I2(\r_ball_count_reg_n_0_[13] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__2_n_6 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__2_n_5 ),
        .I5(\r_ball_count_reg_n_0_[14] ),
        .O(i___47_carry__0_i_4_n_0));
  CARRY4 i___47_carry__1_i_1
       (.CI(\r_ball_dir_x1_inferred__3/i__carry__4_n_0 ),
        .CO({NLW_i___47_carry__1_i_1_CO_UNCONNECTED[3:1],i___47_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i___47_carry__1_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry_i_1
       (.I0(\r_ball_count_reg_n_0_[10] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry__1_n_5 ),
        .I2(\r_ball_count_reg_n_0_[9] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__1_n_6 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__1_n_4 ),
        .I5(\r_ball_count_reg_n_0_[11] ),
        .O(i___47_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry_i_2
       (.I0(\r_ball_count_reg_n_0_[8] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry__1_n_7 ),
        .I2(\r_ball_count_reg_n_0_[6] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__0_n_5 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__0_n_4 ),
        .I5(\r_ball_count_reg_n_0_[7] ),
        .O(i___47_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry_i_3
       (.I0(\r_ball_count_reg_n_0_[3] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry_n_4 ),
        .I2(\r_ball_count_reg_n_0_[4] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry__0_n_7 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry__0_n_6 ),
        .I5(\r_ball_count_reg_n_0_[5] ),
        .O(i___47_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i___47_carry_i_4
       (.I0(\r_ball_count_reg_n_0_[1] ),
        .I1(\r_ball_dir_x1_inferred__3/i__carry_n_6 ),
        .I2(\r_ball_count_reg_n_0_[0] ),
        .I3(\r_ball_dir_x1_inferred__3/i__carry_n_7 ),
        .I4(\r_ball_dir_x1_inferred__3/i__carry_n_5 ),
        .I5(\r_ball_count_reg_n_0_[2] ),
        .O(i___47_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\r_ball_rate_reg_n_0_[7] ),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(\r_ball_rate_reg_n_0_[6] ),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(\r_ball_rate_reg_n_0_[5] ),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(\r_ball_rate_reg_n_0_[4] ),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(\r_ball_rate_reg_n_0_[11] ),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(\r_ball_rate_reg_n_0_[10] ),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(\r_ball_rate_reg_n_0_[9] ),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(\r_ball_rate_reg_n_0_[8] ),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(\r_ball_rate_reg_n_0_[15] ),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(\r_ball_rate_reg_n_0_[14] ),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(\r_ball_rate_reg_n_0_[13] ),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(\r_ball_rate_reg_n_0_[12] ),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(\r_ball_rate_reg_n_0_[19] ),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(\r_ball_rate_reg_n_0_[18] ),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(\r_ball_rate_reg_n_0_[17] ),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(\r_ball_rate_reg_n_0_[16] ),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(\r_ball_rate_reg_n_0_[23] ),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(\r_ball_rate_reg_n_0_[22] ),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(\r_ball_rate_reg_n_0_[21] ),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(\r_ball_rate_reg_n_0_[20] ),
        .O(i__carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    i__carry_i_1
       (.I0(\r_ball_dir_x2_inferred__0/i__carry_1 ),
        .I1(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [4]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hBB2B0000FFFFBB2B)) 
    i__carry_i_10__0
       (.I0(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I5(w_Paddle_size[2]),
        .O(i__carry_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_11
       (.I0(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [0]),
        .O(i__carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    i__carry_i_1__0
       (.I0(\r_ball_dir_x2_inferred__1/i__carry_0 ),
        .I1(w_P1_paddle[5]),
        .I2(w_P1_paddle[4]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I5(w_Paddle_size[2]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    i__carry_i_1__1
       (.I0(\r_ball_dir_x2_inferred__2/i__carry_1 ),
        .I1(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I2(w_P1_paddle[5]),
        .I3(w_P1_paddle[4]),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__2
       (.I0(\r_ball_rate_reg_n_0_[3] ),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h45551000CF755510)) 
    i__carry_i_2
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(\r_ball_dir_x2_inferred__0/i__carry_1 ),
        .I2(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0A2AAFBC0002AAA8)) 
    i__carry_i_2__0
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(i__carry_i_10__0_n_0),
        .I2(w_P1_paddle[4]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I4(w_P1_paddle[5]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h45551000CF755510)) 
    i__carry_i_2__1
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(\r_ball_dir_x2_inferred__2/i__carry_1 ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I3(w_P1_paddle[4]),
        .I4(w_P1_paddle[5]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(i__carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__2
       (.I0(\r_ball_rate_reg_n_0_[2] ),
        .O(i__carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h01155440433DD554)) 
    i__carry_i_3
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(\r_ball_dir_x2_inferred__0/i__carry_0 ),
        .I2(w_Paddle_size[2]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I5(w_Ball_pos_y),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hAE8A38E38A0820A2)) 
    i__carry_i_3__0
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(i__carry_i_11_n_0),
        .I2(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I3(w_Paddle_size[2]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I5(w_Ball_pos_y),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h01155440433DD554)) 
    i__carry_i_3__1
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(\r_ball_dir_x2_inferred__2/i__carry_0 ),
        .I2(w_Paddle_size[2]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I5(w_Ball_pos_y),
        .O(i__carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__2
       (.I0(\r_ball_rate_reg_n_0_[1] ),
        .O(i__carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h40151540543D3D54)) 
    i__carry_i_4
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(w_Paddle_size[0]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I3(w_Paddle_size[1]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h40151540543D3D54)) 
    i__carry_i_4__0
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(w_Paddle_size[0]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I3(w_Paddle_size[1]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hEB8228EB82822882)) 
    i__carry_i_4__1
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I3(w_Paddle_size[0]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    i__carry_i_5
       (.I0(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I3(\r_ball_dir_x2_inferred__0/i__carry_1 ),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    i__carry_i_5__0
       (.I0(w_Paddle_size[2]),
        .I1(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I3(w_P1_paddle[4]),
        .I4(w_P1_paddle[5]),
        .I5(\r_ball_dir_x2_inferred__1/i__carry_0 ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    i__carry_i_5__1
       (.I0(w_P1_paddle[4]),
        .I1(w_P1_paddle[5]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I3(\r_ball_dir_x2_inferred__2/i__carry_1 ),
        .O(i__carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h9009909009600909)) 
    i__carry_i_6
       (.I0(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I1(\r_ball_pos_y_reg[5]_0 [4]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I3(\r_ball_dir_x2_inferred__0/i__carry_1 ),
        .I4(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    i__carry_i_6__0
       (.I0(w_P1_paddle[5]),
        .I1(\r_ball_pos_y_reg[5]_0 [4]),
        .I2(w_P1_paddle[4]),
        .I3(i__carry_i_10__0_n_0),
        .I4(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(i__carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9009909009600909)) 
    i__carry_i_6__1
       (.I0(w_P1_paddle[5]),
        .I1(\r_ball_pos_y_reg[5]_0 [4]),
        .I2(w_P1_paddle[4]),
        .I3(\r_ball_dir_x2_inferred__2/i__carry_1 ),
        .I4(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(i__carry_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h6009099006606009)) 
    i__carry_i_7
       (.I0(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I1(\r_ball_pos_y_reg[5]_0 [2]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I3(w_Paddle_size[2]),
        .I4(\r_ball_dir_x2_inferred__0/i__carry_0 ),
        .I5(w_Ball_pos_y),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6006096009609009)) 
    i__carry_i_7__0
       (.I0(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I1(\r_ball_pos_y_reg[5]_0 [2]),
        .I2(i__carry_i_11_n_0),
        .I3(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I4(w_Paddle_size[2]),
        .I5(w_Ball_pos_y),
        .O(i__carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6009099006606009)) 
    i__carry_i_7__1
       (.I0(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I1(\r_ball_pos_y_reg[5]_0 [2]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I3(w_Paddle_size[2]),
        .I4(\r_ball_dir_x2_inferred__2/i__carry_0 ),
        .I5(w_Ball_pos_y),
        .O(i__carry_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h4128281414828241)) 
    i__carry_i_8
       (.I0(\r_ball_pos_y_reg[5]_0 [0]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I2(w_Paddle_size[1]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I4(w_Paddle_size[0]),
        .I5(\r_ball_pos_y_reg[5]_0 [1]),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h4128281414828241)) 
    i__carry_i_8__0
       (.I0(\r_ball_pos_y_reg[5]_0 [0]),
        .I1(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I2(w_Paddle_size[1]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I4(w_Paddle_size[0]),
        .I5(\r_ball_pos_y_reg[5]_0 [1]),
        .O(i__carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h0069960069000069)) 
    i__carry_i_8__1
       (.I0(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(w_Paddle_size[0]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(i__carry_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h40C0FFFF105CFFFF)) 
    \o_Cathodes[2]_i_7 
       (.I0(w_P2_score[0]),
        .I1(w_P1_score[1]),
        .I2(w_P2_score[1]),
        .I3(w_P1_score[0]),
        .I4(\o_Cathodes[3]_i_4 ),
        .I5(\o_Cathodes[3]_i_4_0 ),
        .O(\r_p2_score_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000000BFBFB0BF)) 
    \o_Cathodes[2]_i_8 
       (.I0(w_P2_score[0]),
        .I1(w_P2_score[1]),
        .I2(\o_Cathodes[3]_i_9 ),
        .I3(w_P1_score[1]),
        .I4(w_P1_score[0]),
        .I5(\o_Cathodes_reg[2]_i_6 ),
        .O(\r_p2_score_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    \o_Cathodes[3]_i_10 
       (.I0(w_P2_score[0]),
        .I1(w_P2_score[1]),
        .I2(\o_Cathodes[3]_i_9 ),
        .I3(w_P1_score[0]),
        .I4(w_P1_score[1]),
        .O(\r_p2_score_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h2B092100FFFFFFFF)) 
    \o_Cathodes[3]_i_7 
       (.I0(\o_Cathodes[3]_i_4_0 ),
        .I1(w_P1_score[1]),
        .I2(w_P2_score[1]),
        .I3(w_P1_score[0]),
        .I4(w_P2_score[0]),
        .I5(\o_Cathodes[3]_i_4 ),
        .O(\r_p1_score_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hDEDD4484FFFFFFFF)) 
    \o_Cathodes[4]_i_10 
       (.I0(\o_Cathodes[3]_i_4_0 ),
        .I1(w_P2_score[0]),
        .I2(w_P1_score[1]),
        .I3(w_P2_score[1]),
        .I4(w_P1_score[0]),
        .I5(\o_Cathodes[3]_i_4 ),
        .O(\r_p2_score_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h20F2)) 
    \o_Cathodes[4]_i_11 
       (.I0(w_P2_score[0]),
        .I1(w_P1_score[0]),
        .I2(w_P2_score[1]),
        .I3(w_P1_score[1]),
        .O(\r_p2_score_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFF5DDD5FFFFFFFD)) 
    \o_Cathodes[5]_i_10 
       (.I0(\o_Cathodes[3]_i_4 ),
        .I1(w_P1_score[0]),
        .I2(w_P2_score[0]),
        .I3(w_P2_score[1]),
        .I4(w_P1_score[1]),
        .I5(\o_Cathodes[3]_i_4_0 ),
        .O(\r_p1_score_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000100010001FFFF)) 
    \o_Cathodes[5]_i_11 
       (.I0(w_P1_score[0]),
        .I1(\o_Cathodes[5]_i_5 ),
        .I2(\o_Cathodes[5]_i_5_0 ),
        .I3(w_P1_score[1]),
        .I4(\o_Cathodes[5]_i_5_1 ),
        .I5(w_P2_score[1]),
        .O(\r_p1_score_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \o_uart_buffer[17]_i_3 
       (.I0(\o_uart_buffer[17]_i_5_n_0 ),
        .I1(\o_uart_buffer[18]_i_5_n_0 ),
        .I2(Q[2]),
        .I3(\o_uart_buffer[17]_i_6_n_0 ),
        .I4(w_Ball_pos_x),
        .I5(Q[1]),
        .O(\r_ball_pos_x_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hD96D2692)) 
    \o_uart_buffer[17]_i_5 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[2]),
        .O(\o_uart_buffer[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6D3C492C)) 
    \o_uart_buffer[17]_i_6 
       (.I0(Q[3]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\o_uart_buffer[17]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hD22DFFFF)) 
    \o_uart_buffer[18]_i_2 
       (.I0(\r_ball_pos_x_reg[3]_1 ),
        .I1(Q[1]),
        .I2(w_Ball_pos_x),
        .I3(\o_uart_buffer[18]_i_5_n_0 ),
        .I4(r_ball_state),
        .O(\r_ball_pos_x_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h4FB42DF20DB024D2)) 
    \o_uart_buffer[18]_i_5 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(w_Ball_pos_x),
        .O(\o_uart_buffer[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h880800C0808C0800)) 
    \o_uart_buffer[19]_i_5 
       (.I0(\r_ball_pos_x_reg[3]_1 ),
        .I1(r_ball_state),
        .I2(w_Ball_pos_x),
        .I3(Q[1]),
        .I4(\o_uart_buffer[19]_i_8_n_0 ),
        .I5(\o_uart_buffer[18]_i_5_n_0 ),
        .O(\r_ball_state_reg[1] ));
  LUT6 #(
    .INIT(64'h69A65AA59A69A65A)) 
    \o_uart_buffer[19]_i_8 
       (.I0(w_Ball_pos_x),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\o_uart_buffer[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9C67FE61DE63F761)) 
    \o_uart_buffer[25]_i_4 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(w_Ball_pos_x),
        .O(\r_ball_pos_x_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hF01F00FC00F80F00)) 
    \o_uart_buffer[26]_i_4 
       (.I0(w_Ball_pos_x),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[4]),
        .O(\r_ball_pos_x_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \o_uart_buffer[27]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_Game_state[1]),
        .I2(r_Game_state[0]),
        .I3(w_TX_ready),
        .I4(\r_ball_state_reg[1]_3 ),
        .O(\r_Game_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h01C00C0001801C00)) 
    \o_uart_buffer[27]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(w_Ball_pos_x),
        .O(\r_ball_pos_x_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0015555540555555)) 
    \o_uart_buffer[32]_i_2 
       (.I0(\r_Game_state_reg[1]_1 ),
        .I1(r_ball_state),
        .I2(Q[6]),
        .I3(\o_uart_buffer_reg[32] ),
        .I4(\o_uart_buffer_reg[32]_0 ),
        .I5(CO),
        .O(\r_ball_state_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_uart_buffer[33]_i_10 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\o_uart_buffer[33]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \o_uart_buffer[33]_i_14 
       (.I0(Q[6]),
        .I1(Q[4]),
        .O(\o_uart_buffer[33]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_uart_buffer[33]_i_15 
       (.I0(Q[2]),
        .O(\o_uart_buffer[33]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC9)) 
    \o_uart_buffer[33]_i_16 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\o_uart_buffer[33]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_uart_buffer[33]_i_17 
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(\o_uart_buffer[33]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_uart_buffer[33]_i_18 
       (.I0(Q[3]),
        .O(\o_uart_buffer[33]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \o_uart_buffer[33]_i_19 
       (.I0(w_Ball_pos_x),
        .I1(Q[6]),
        .I2(Q[2]),
        .O(\o_uart_buffer[33]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_uart_buffer[33]_i_9 
       (.I0(Q[6]),
        .O(\o_uart_buffer[33]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hD20DDB2D)) 
    \o_uart_buffer[49]_i_14 
       (.I0(\r_ball_pos_y_reg[5]_0 [3]),
        .I1(w_Ball_pos_y),
        .I2(\r_ball_pos_y_reg[5]_0 [4]),
        .I3(\r_ball_pos_y_reg[5]_0 [2]),
        .I4(\r_ball_pos_y_reg[5]_0 [1]),
        .O(\r_ball_pos_y_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000000D0)) 
    \o_uart_buffer[4]_i_3 
       (.I0(r_Game_state[1]),
        .I1(r_Game_state[0]),
        .I2(w_TX_ready),
        .I3(\r_ball_state_reg[1]_3 ),
        .I4(\o_uart_buffer_reg[4] ),
        .O(\r_Game_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2028822028082028)) 
    \o_uart_buffer[50]_i_9 
       (.I0(r_ball_state),
        .I1(\r_ball_pos_y_reg[5]_0 [3]),
        .I2(w_Ball_pos_y),
        .I3(\r_ball_pos_y_reg[5]_0 [4]),
        .I4(\r_ball_pos_y_reg[5]_0 [2]),
        .I5(\r_ball_pos_y_reg[5]_0 [1]),
        .O(\r_ball_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0820020800028000)) 
    \o_uart_buffer[51]_i_15 
       (.I0(r_ball_state),
        .I1(\r_ball_pos_y_reg[5]_0 [1]),
        .I2(w_Ball_pos_y),
        .I3(\r_ball_pos_y_reg[5]_0 [4]),
        .I4(\r_ball_pos_y_reg[5]_0 [2]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(\r_ball_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h73C7)) 
    \o_uart_buffer[57]_i_23 
       (.I0(w_Ball_pos_y),
        .I1(\r_ball_pos_y_reg[5]_0 [3]),
        .I2(\r_ball_pos_y_reg[5]_0 [4]),
        .I3(\r_ball_pos_y_reg[5]_0 [2]),
        .O(\r_ball_pos_y_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o_uart_buffer[58]_i_16 
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(\r_ball_pos_y_reg[5]_0 [2]),
        .I2(\r_ball_pos_y_reg[5]_0 [3]),
        .O(\r_ball_pos_y_reg[5]_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_uart_buffer_reg[33]_i_6 
       (.CI(\o_uart_buffer_reg[33]_i_8_n_0 ),
        .CO({\NLW_o_uart_buffer_reg[33]_i_6_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_uart_buffer[33]_i_9_n_0 }),
        .O(\NLW_o_uart_buffer_reg[33]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\o_uart_buffer[33]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_uart_buffer_reg[33]_i_8 
       (.CI(1'b0),
        .CO({\o_uart_buffer_reg[33]_i_8_n_0 ,\o_uart_buffer_reg[33]_i_8_n_1 ,\o_uart_buffer_reg[33]_i_8_n_2 ,\o_uart_buffer_reg[33]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_uart_buffer[33]_i_14_n_0 ,1'b0,1'b0,\o_uart_buffer[33]_i_15_n_0 }),
        .O(\NLW_o_uart_buffer_reg[33]_i_8_O_UNCONNECTED [3:0]),
        .S({\o_uart_buffer[33]_i_16_n_0 ,\o_uart_buffer[33]_i_17_n_0 ,\o_uart_buffer[33]_i_18_n_0 ,\o_uart_buffer[33]_i_19_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Game_state[0]_i_1 
       (.I0(\r_Game_state_reg[1]_5 ),
        .I1(\r_Game_state_reg[1]_4 ),
        .O(\r_Game_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Game_state[1]_i_1 
       (.I0(\r_Game_state_reg[1]_4 ),
        .I1(\r_Game_state_reg[1]_5 ),
        .O(\r_Game_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Game_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Game_state[0]_i_1_n_0 ),
        .Q(r_Game_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Game_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Game_state[1]_i_1_n_0 ),
        .Q(r_Game_state[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count0_carry
       (.CI(1'b0),
        .CO({r_ball_count0_carry_n_0,r_ball_count0_carry_n_1,r_ball_count0_carry_n_2,r_ball_count0_carry_n_3}),
        .CYINIT(\r_ball_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_ball_count0_carry_n_4,r_ball_count0_carry_n_5,r_ball_count0_carry_n_6,r_ball_count0_carry_n_7}),
        .S({\r_ball_count_reg_n_0_[4] ,\r_ball_count_reg_n_0_[3] ,\r_ball_count_reg_n_0_[2] ,\r_ball_count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count0_carry__0
       (.CI(r_ball_count0_carry_n_0),
        .CO({r_ball_count0_carry__0_n_0,r_ball_count0_carry__0_n_1,r_ball_count0_carry__0_n_2,r_ball_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_ball_count0_carry__0_n_4,r_ball_count0_carry__0_n_5,r_ball_count0_carry__0_n_6,r_ball_count0_carry__0_n_7}),
        .S({\r_ball_count_reg_n_0_[8] ,\r_ball_count_reg_n_0_[7] ,\r_ball_count_reg_n_0_[6] ,\r_ball_count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count0_carry__1
       (.CI(r_ball_count0_carry__0_n_0),
        .CO({r_ball_count0_carry__1_n_0,r_ball_count0_carry__1_n_1,r_ball_count0_carry__1_n_2,r_ball_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_ball_count0_carry__1_n_4,r_ball_count0_carry__1_n_5,r_ball_count0_carry__1_n_6,r_ball_count0_carry__1_n_7}),
        .S({\r_ball_count_reg_n_0_[12] ,\r_ball_count_reg_n_0_[11] ,\r_ball_count_reg_n_0_[10] ,\r_ball_count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count0_carry__2
       (.CI(r_ball_count0_carry__1_n_0),
        .CO({r_ball_count0_carry__2_n_0,r_ball_count0_carry__2_n_1,r_ball_count0_carry__2_n_2,r_ball_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_ball_count0_carry__2_n_4,r_ball_count0_carry__2_n_5,r_ball_count0_carry__2_n_6,r_ball_count0_carry__2_n_7}),
        .S({\r_ball_count_reg_n_0_[16] ,\r_ball_count_reg_n_0_[15] ,\r_ball_count_reg_n_0_[14] ,\r_ball_count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count0_carry__3
       (.CI(r_ball_count0_carry__2_n_0),
        .CO({r_ball_count0_carry__3_n_0,r_ball_count0_carry__3_n_1,r_ball_count0_carry__3_n_2,r_ball_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_ball_count0_carry__3_n_4,r_ball_count0_carry__3_n_5,r_ball_count0_carry__3_n_6,r_ball_count0_carry__3_n_7}),
        .S({\r_ball_count_reg_n_0_[20] ,\r_ball_count_reg_n_0_[19] ,\r_ball_count_reg_n_0_[18] ,\r_ball_count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count0_carry__4
       (.CI(r_ball_count0_carry__3_n_0),
        .CO({NLW_r_ball_count0_carry__4_CO_UNCONNECTED[3:2],r_ball_count0_carry__4_n_2,r_ball_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_ball_count0_carry__4_O_UNCONNECTED[3],r_ball_count0_carry__4_n_5,r_ball_count0_carry__4_n_6,r_ball_count0_carry__4_n_7}),
        .S({1'b0,\r_ball_count_reg_n_0_[23] ,\r_ball_count_reg_n_0_[22] ,\r_ball_count_reg_n_0_[21] }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 r_ball_count1_carry
       (.CI(1'b0),
        .CO({r_ball_count1_carry_n_0,r_ball_count1_carry_n_1,r_ball_count1_carry_n_2,r_ball_count1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r_ball_count1_carry_i_1_n_0,r_ball_count1_carry_i_2_n_0,r_ball_count1_carry_i_3_n_0,r_ball_count1_carry_i_4_n_0}),
        .O(NLW_r_ball_count1_carry_O_UNCONNECTED[3:0]),
        .S({r_ball_count1_carry_i_5_n_0,r_ball_count1_carry_i_6_n_0,r_ball_count1_carry_i_7_n_0,r_ball_count1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 r_ball_count1_carry__0
       (.CI(r_ball_count1_carry_n_0),
        .CO({r_ball_count1_carry__0_n_0,r_ball_count1_carry__0_n_1,r_ball_count1_carry__0_n_2,r_ball_count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r_ball_count1_carry__0_i_1_n_0,r_ball_count1_carry__0_i_2_n_0,r_ball_count1_carry__0_i_3_n_0,r_ball_count1_carry__0_i_4_n_0}),
        .O(NLW_r_ball_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({r_ball_count1_carry__0_i_5_n_0,r_ball_count1_carry__0_i_6_n_0,r_ball_count1_carry__0_i_7_n_0,r_ball_count1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__0_i_1
       (.I0(\r_ball_count_reg_n_0_[15] ),
        .I1(r_ball_count2[15]),
        .I2(\r_ball_count_reg_n_0_[14] ),
        .I3(r_ball_count2[14]),
        .O(r_ball_count1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__0_i_2
       (.I0(\r_ball_count_reg_n_0_[13] ),
        .I1(r_ball_count2[13]),
        .I2(\r_ball_count_reg_n_0_[12] ),
        .I3(r_ball_count2[12]),
        .O(r_ball_count1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__0_i_3
       (.I0(\r_ball_count_reg_n_0_[11] ),
        .I1(r_ball_count2[11]),
        .I2(\r_ball_count_reg_n_0_[10] ),
        .I3(r_ball_count2[10]),
        .O(r_ball_count1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__0_i_4
       (.I0(\r_ball_count_reg_n_0_[9] ),
        .I1(r_ball_count2[9]),
        .I2(\r_ball_count_reg_n_0_[8] ),
        .I3(r_ball_count2[8]),
        .O(r_ball_count1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__0_i_5
       (.I0(r_ball_count2[15]),
        .I1(\r_ball_count_reg_n_0_[15] ),
        .I2(r_ball_count2[14]),
        .I3(\r_ball_count_reg_n_0_[14] ),
        .O(r_ball_count1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__0_i_6
       (.I0(r_ball_count2[13]),
        .I1(\r_ball_count_reg_n_0_[13] ),
        .I2(r_ball_count2[12]),
        .I3(\r_ball_count_reg_n_0_[12] ),
        .O(r_ball_count1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__0_i_7
       (.I0(r_ball_count2[11]),
        .I1(\r_ball_count_reg_n_0_[11] ),
        .I2(r_ball_count2[10]),
        .I3(\r_ball_count_reg_n_0_[10] ),
        .O(r_ball_count1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__0_i_8
       (.I0(r_ball_count2[9]),
        .I1(\r_ball_count_reg_n_0_[9] ),
        .I2(r_ball_count2[8]),
        .I3(\r_ball_count_reg_n_0_[8] ),
        .O(r_ball_count1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 r_ball_count1_carry__1
       (.CI(r_ball_count1_carry__0_n_0),
        .CO({r_ball_count1_carry__1_n_0,r_ball_count1_carry__1_n_1,r_ball_count1_carry__1_n_2,r_ball_count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r_ball_count1_carry__1_i_1_n_0,r_ball_count1_carry__1_i_2_n_0,r_ball_count1_carry__1_i_3_n_0,r_ball_count1_carry__1_i_4_n_0}),
        .O(NLW_r_ball_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({r_ball_count1_carry__1_i_5_n_0,r_ball_count1_carry__1_i_6_n_0,r_ball_count1_carry__1_i_7_n_0,r_ball_count1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__1_i_1
       (.I0(\r_ball_count_reg_n_0_[23] ),
        .I1(r_ball_count2[23]),
        .I2(\r_ball_count_reg_n_0_[22] ),
        .I3(r_ball_count2[22]),
        .O(r_ball_count1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__1_i_2
       (.I0(\r_ball_count_reg_n_0_[21] ),
        .I1(r_ball_count2[21]),
        .I2(\r_ball_count_reg_n_0_[20] ),
        .I3(r_ball_count2[20]),
        .O(r_ball_count1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__1_i_3
       (.I0(\r_ball_count_reg_n_0_[19] ),
        .I1(r_ball_count2[19]),
        .I2(\r_ball_count_reg_n_0_[18] ),
        .I3(r_ball_count2[18]),
        .O(r_ball_count1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry__1_i_4
       (.I0(\r_ball_count_reg_n_0_[17] ),
        .I1(r_ball_count2[17]),
        .I2(\r_ball_count_reg_n_0_[16] ),
        .I3(r_ball_count2[16]),
        .O(r_ball_count1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__1_i_5
       (.I0(r_ball_count2[23]),
        .I1(\r_ball_count_reg_n_0_[23] ),
        .I2(r_ball_count2[22]),
        .I3(\r_ball_count_reg_n_0_[22] ),
        .O(r_ball_count1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__1_i_6
       (.I0(r_ball_count2[21]),
        .I1(\r_ball_count_reg_n_0_[21] ),
        .I2(r_ball_count2[20]),
        .I3(\r_ball_count_reg_n_0_[20] ),
        .O(r_ball_count1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__1_i_7
       (.I0(r_ball_count2[19]),
        .I1(\r_ball_count_reg_n_0_[19] ),
        .I2(r_ball_count2[18]),
        .I3(\r_ball_count_reg_n_0_[18] ),
        .O(r_ball_count1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry__1_i_8
       (.I0(r_ball_count2[17]),
        .I1(\r_ball_count_reg_n_0_[17] ),
        .I2(r_ball_count2[16]),
        .I3(\r_ball_count_reg_n_0_[16] ),
        .O(r_ball_count1_carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry_i_1
       (.I0(\r_ball_count_reg_n_0_[7] ),
        .I1(r_ball_count2[7]),
        .I2(\r_ball_count_reg_n_0_[6] ),
        .I3(r_ball_count2[6]),
        .O(r_ball_count1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry_i_2
       (.I0(\r_ball_count_reg_n_0_[5] ),
        .I1(r_ball_count2[5]),
        .I2(\r_ball_count_reg_n_0_[4] ),
        .I3(r_ball_count2[4]),
        .O(r_ball_count1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    r_ball_count1_carry_i_3
       (.I0(\r_ball_count_reg_n_0_[3] ),
        .I1(r_ball_count2[3]),
        .I2(\r_ball_count_reg_n_0_[2] ),
        .I3(r_ball_count2[2]),
        .O(r_ball_count1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    r_ball_count1_carry_i_4
       (.I0(\r_ball_count_reg_n_0_[1] ),
        .I1(r_ball_count2[1]),
        .I2(\r_ball_rate_reg_n_0_[0] ),
        .I3(\r_ball_count_reg_n_0_[0] ),
        .O(r_ball_count1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry_i_5
       (.I0(r_ball_count2[7]),
        .I1(\r_ball_count_reg_n_0_[7] ),
        .I2(r_ball_count2[6]),
        .I3(\r_ball_count_reg_n_0_[6] ),
        .O(r_ball_count1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry_i_6
       (.I0(r_ball_count2[5]),
        .I1(\r_ball_count_reg_n_0_[5] ),
        .I2(r_ball_count2[4]),
        .I3(\r_ball_count_reg_n_0_[4] ),
        .O(r_ball_count1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_ball_count1_carry_i_7
       (.I0(r_ball_count2[3]),
        .I1(\r_ball_count_reg_n_0_[3] ),
        .I2(r_ball_count2[2]),
        .I3(\r_ball_count_reg_n_0_[2] ),
        .O(r_ball_count1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    r_ball_count1_carry_i_8
       (.I0(\r_ball_count_reg_n_0_[0] ),
        .I1(\r_ball_rate_reg_n_0_[0] ),
        .I2(r_ball_count2[1]),
        .I3(\r_ball_count_reg_n_0_[1] ),
        .O(r_ball_count1_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count2_carry
       (.CI(1'b0),
        .CO({r_ball_count2_carry_n_0,r_ball_count2_carry_n_1,r_ball_count2_carry_n_2,r_ball_count2_carry_n_3}),
        .CYINIT(\r_ball_rate_reg_n_0_[0] ),
        .DI({\r_ball_rate_reg_n_0_[4] ,\r_ball_rate_reg_n_0_[3] ,\r_ball_rate_reg_n_0_[2] ,\r_ball_rate_reg_n_0_[1] }),
        .O(r_ball_count2[4:1]),
        .S({r_ball_count2_carry_i_1_n_0,r_ball_count2_carry_i_2_n_0,r_ball_count2_carry_i_3_n_0,r_ball_count2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count2_carry__0
       (.CI(r_ball_count2_carry_n_0),
        .CO({r_ball_count2_carry__0_n_0,r_ball_count2_carry__0_n_1,r_ball_count2_carry__0_n_2,r_ball_count2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[8] ,\r_ball_rate_reg_n_0_[7] ,\r_ball_rate_reg_n_0_[6] ,\r_ball_rate_reg_n_0_[5] }),
        .O(r_ball_count2[8:5]),
        .S({r_ball_count2_carry__0_i_1_n_0,r_ball_count2_carry__0_i_2_n_0,r_ball_count2_carry__0_i_3_n_0,r_ball_count2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__0_i_1
       (.I0(\r_ball_rate_reg_n_0_[8] ),
        .O(r_ball_count2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__0_i_2
       (.I0(\r_ball_rate_reg_n_0_[7] ),
        .O(r_ball_count2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__0_i_3
       (.I0(\r_ball_rate_reg_n_0_[6] ),
        .O(r_ball_count2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__0_i_4
       (.I0(\r_ball_rate_reg_n_0_[5] ),
        .O(r_ball_count2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count2_carry__1
       (.CI(r_ball_count2_carry__0_n_0),
        .CO({r_ball_count2_carry__1_n_0,r_ball_count2_carry__1_n_1,r_ball_count2_carry__1_n_2,r_ball_count2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[12] ,\r_ball_rate_reg_n_0_[11] ,\r_ball_rate_reg_n_0_[10] ,\r_ball_rate_reg_n_0_[9] }),
        .O(r_ball_count2[12:9]),
        .S({r_ball_count2_carry__1_i_1_n_0,r_ball_count2_carry__1_i_2_n_0,r_ball_count2_carry__1_i_3_n_0,r_ball_count2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__1_i_1
       (.I0(\r_ball_rate_reg_n_0_[12] ),
        .O(r_ball_count2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__1_i_2
       (.I0(\r_ball_rate_reg_n_0_[11] ),
        .O(r_ball_count2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__1_i_3
       (.I0(\r_ball_rate_reg_n_0_[10] ),
        .O(r_ball_count2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__1_i_4
       (.I0(\r_ball_rate_reg_n_0_[9] ),
        .O(r_ball_count2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count2_carry__2
       (.CI(r_ball_count2_carry__1_n_0),
        .CO({r_ball_count2_carry__2_n_0,r_ball_count2_carry__2_n_1,r_ball_count2_carry__2_n_2,r_ball_count2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[16] ,\r_ball_rate_reg_n_0_[15] ,\r_ball_rate_reg_n_0_[14] ,\r_ball_rate_reg_n_0_[13] }),
        .O(r_ball_count2[16:13]),
        .S({r_ball_count2_carry__2_i_1_n_0,r_ball_count2_carry__2_i_2_n_0,r_ball_count2_carry__2_i_3_n_0,r_ball_count2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__2_i_1
       (.I0(\r_ball_rate_reg_n_0_[16] ),
        .O(r_ball_count2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__2_i_2
       (.I0(\r_ball_rate_reg_n_0_[15] ),
        .O(r_ball_count2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__2_i_3
       (.I0(\r_ball_rate_reg_n_0_[14] ),
        .O(r_ball_count2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__2_i_4
       (.I0(\r_ball_rate_reg_n_0_[13] ),
        .O(r_ball_count2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count2_carry__3
       (.CI(r_ball_count2_carry__2_n_0),
        .CO({r_ball_count2_carry__3_n_0,r_ball_count2_carry__3_n_1,r_ball_count2_carry__3_n_2,r_ball_count2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[20] ,\r_ball_rate_reg_n_0_[19] ,\r_ball_rate_reg_n_0_[18] ,\r_ball_rate_reg_n_0_[17] }),
        .O(r_ball_count2[20:17]),
        .S({r_ball_count2_carry__3_i_1_n_0,r_ball_count2_carry__3_i_2_n_0,r_ball_count2_carry__3_i_3_n_0,r_ball_count2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__3_i_1
       (.I0(\r_ball_rate_reg_n_0_[20] ),
        .O(r_ball_count2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__3_i_2
       (.I0(\r_ball_rate_reg_n_0_[19] ),
        .O(r_ball_count2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__3_i_3
       (.I0(\r_ball_rate_reg_n_0_[18] ),
        .O(r_ball_count2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__3_i_4
       (.I0(\r_ball_rate_reg_n_0_[17] ),
        .O(r_ball_count2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_ball_count2_carry__4
       (.CI(r_ball_count2_carry__3_n_0),
        .CO({NLW_r_ball_count2_carry__4_CO_UNCONNECTED[3:2],r_ball_count2_carry__4_n_2,r_ball_count2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r_ball_rate_reg_n_0_[22] ,\r_ball_rate_reg_n_0_[21] }),
        .O({NLW_r_ball_count2_carry__4_O_UNCONNECTED[3],r_ball_count2[23:21]}),
        .S({1'b0,r_ball_count2_carry__4_i_1_n_0,r_ball_count2_carry__4_i_2_n_0,r_ball_count2_carry__4_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__4_i_1
       (.I0(\r_ball_rate_reg_n_0_[23] ),
        .O(r_ball_count2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__4_i_2
       (.I0(\r_ball_rate_reg_n_0_[22] ),
        .O(r_ball_count2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry__4_i_3
       (.I0(\r_ball_rate_reg_n_0_[21] ),
        .O(r_ball_count2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry_i_1
       (.I0(\r_ball_rate_reg_n_0_[4] ),
        .O(r_ball_count2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry_i_2
       (.I0(\r_ball_rate_reg_n_0_[3] ),
        .O(r_ball_count2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry_i_3
       (.I0(\r_ball_rate_reg_n_0_[2] ),
        .O(r_ball_count2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_ball_count2_carry_i_4
       (.I0(\r_ball_rate_reg_n_0_[1] ),
        .O(r_ball_count2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \r_ball_count[0]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(\r_ball_count_reg_n_0_[0] ),
        .O(\r_ball_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[10]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__1_n_6),
        .O(\r_ball_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[11]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__1_n_5),
        .O(\r_ball_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[12]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__1_n_4),
        .O(\r_ball_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[13]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__2_n_7),
        .O(\r_ball_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[14]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__2_n_6),
        .O(\r_ball_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[15]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__2_n_5),
        .O(\r_ball_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[16]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__2_n_4),
        .O(\r_ball_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[17]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__3_n_7),
        .O(\r_ball_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[18]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__3_n_6),
        .O(\r_ball_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[19]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__3_n_5),
        .O(\r_ball_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[1]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry_n_7),
        .O(\r_ball_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[20]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__3_n_4),
        .O(\r_ball_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[21]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__4_n_7),
        .O(\r_ball_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[22]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__4_n_6),
        .O(\r_ball_count[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_count[23]_i_1 
       (.I0(r_play_state[1]),
        .I1(r_play_state[0]),
        .O(r_ball_count0));
  LUT5 #(
    .INIT(32'h4054FFFF)) 
    \r_ball_count[23]_i_2 
       (.I0(r_play_state[1]),
        .I1(r_play_state[0]),
        .I2(r_Game_state[0]),
        .I3(r_Game_state[1]),
        .I4(CPU_RESETN_IBUF),
        .O(r_ball_count));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \r_ball_count[23]_i_3 
       (.I0(\r_ball_count[23]_i_4_n_0 ),
        .I1(r_ball_count0_carry__4_n_5),
        .I2(\r_ball_count[23]_i_5_n_0 ),
        .O(\r_ball_count[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFAEFF)) 
    \r_ball_count[23]_i_4 
       (.I0(r_ball_count1_carry__1_n_0),
        .I1(r_Game_state[1]),
        .I2(r_Game_state[0]),
        .I3(r_play_state[0]),
        .I4(r_play_state[1]),
        .O(\r_ball_count[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB0A0F0B0)) 
    \r_ball_count[23]_i_5 
       (.I0(r_play_state[1]),
        .I1(r_play_state[0]),
        .I2(CPU_RESETN_IBUF),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .O(\r_ball_count[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[2]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry_n_6),
        .O(\r_ball_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[3]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry_n_5),
        .O(\r_ball_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[4]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry_n_4),
        .O(\r_ball_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[5]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__0_n_7),
        .O(\r_ball_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[6]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__0_n_6),
        .O(\r_ball_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[7]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__0_n_5),
        .O(\r_ball_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[8]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__0_n_4),
        .O(\r_ball_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_ball_count[9]_i_1 
       (.I0(\r_ball_count[23]_i_5_n_0 ),
        .I1(\r_ball_count[23]_i_4_n_0 ),
        .I2(r_ball_count0_carry__1_n_7),
        .O(\r_ball_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[0]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[0] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[10]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[10] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[11]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[11] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[12]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[12] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[13]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[13] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[14]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[14] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[15]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[15] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[16]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[16] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[17]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[17] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[18]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[18] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[19]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[19] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[1]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[1] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[20]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[20] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[21]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[21] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[22]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[22] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[23]_i_3_n_0 ),
        .Q(\r_ball_count_reg_n_0_[23] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[2]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[2] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[3]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[3] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[4]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[4] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[5]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[5] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[6]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[6] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[7]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[7] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[8]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[8] ),
        .R(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_count),
        .D(\r_ball_count[9]_i_1_n_0 ),
        .Q(\r_ball_count_reg_n_0_[9] ),
        .R(r_ball_count0));
  CARRY4 \r_ball_dir_x1_inferred__3/i___47_carry 
       (.CI(1'b0),
        .CO({\r_ball_dir_x1_inferred__3/i___47_carry_n_0 ,\r_ball_dir_x1_inferred__3/i___47_carry_n_1 ,\r_ball_dir_x1_inferred__3/i___47_carry_n_2 ,\r_ball_dir_x1_inferred__3/i___47_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r_ball_dir_x1_inferred__3/i___47_carry_O_UNCONNECTED [3:0]),
        .S({i___47_carry_i_1_n_0,i___47_carry_i_2_n_0,i___47_carry_i_3_n_0,i___47_carry_i_4_n_0}));
  CARRY4 \r_ball_dir_x1_inferred__3/i___47_carry__0 
       (.CI(\r_ball_dir_x1_inferred__3/i___47_carry_n_0 ),
        .CO({\r_ball_dir_x1_inferred__3/i___47_carry__0_n_0 ,\r_ball_dir_x1_inferred__3/i___47_carry__0_n_1 ,\r_ball_dir_x1_inferred__3/i___47_carry__0_n_2 ,\r_ball_dir_x1_inferred__3/i___47_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r_ball_dir_x1_inferred__3/i___47_carry__0_O_UNCONNECTED [3:0]),
        .S({i___47_carry__0_i_1_n_0,i___47_carry__0_i_2_n_0,i___47_carry__0_i_3_n_0,i___47_carry__0_i_4_n_0}));
  CARRY4 \r_ball_dir_x1_inferred__3/i___47_carry__1 
       (.CI(\r_ball_dir_x1_inferred__3/i___47_carry__0_n_0 ),
        .CO({\NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_CO_UNCONNECTED [3:1],\r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r_ball_dir_x1_inferred__3/i___47_carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i___47_carry__1_i_1_n_3}));
  CARRY4 \r_ball_dir_x1_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\r_ball_dir_x1_inferred__3/i__carry_n_0 ,\r_ball_dir_x1_inferred__3/i__carry_n_1 ,\r_ball_dir_x1_inferred__3/i__carry_n_2 ,\r_ball_dir_x1_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[3] ,\r_ball_rate_reg_n_0_[2] ,\r_ball_rate_reg_n_0_[1] ,1'b0}),
        .O({\r_ball_dir_x1_inferred__3/i__carry_n_4 ,\r_ball_dir_x1_inferred__3/i__carry_n_5 ,\r_ball_dir_x1_inferred__3/i__carry_n_6 ,\r_ball_dir_x1_inferred__3/i__carry_n_7 }),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,\r_ball_rate_reg_n_0_[0] }));
  CARRY4 \r_ball_dir_x1_inferred__3/i__carry__0 
       (.CI(\r_ball_dir_x1_inferred__3/i__carry_n_0 ),
        .CO({\r_ball_dir_x1_inferred__3/i__carry__0_n_0 ,\r_ball_dir_x1_inferred__3/i__carry__0_n_1 ,\r_ball_dir_x1_inferred__3/i__carry__0_n_2 ,\r_ball_dir_x1_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[7] ,\r_ball_rate_reg_n_0_[6] ,\r_ball_rate_reg_n_0_[5] ,\r_ball_rate_reg_n_0_[4] }),
        .O({\r_ball_dir_x1_inferred__3/i__carry__0_n_4 ,\r_ball_dir_x1_inferred__3/i__carry__0_n_5 ,\r_ball_dir_x1_inferred__3/i__carry__0_n_6 ,\r_ball_dir_x1_inferred__3/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \r_ball_dir_x1_inferred__3/i__carry__1 
       (.CI(\r_ball_dir_x1_inferred__3/i__carry__0_n_0 ),
        .CO({\r_ball_dir_x1_inferred__3/i__carry__1_n_0 ,\r_ball_dir_x1_inferred__3/i__carry__1_n_1 ,\r_ball_dir_x1_inferred__3/i__carry__1_n_2 ,\r_ball_dir_x1_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[11] ,\r_ball_rate_reg_n_0_[10] ,\r_ball_rate_reg_n_0_[9] ,\r_ball_rate_reg_n_0_[8] }),
        .O({\r_ball_dir_x1_inferred__3/i__carry__1_n_4 ,\r_ball_dir_x1_inferred__3/i__carry__1_n_5 ,\r_ball_dir_x1_inferred__3/i__carry__1_n_6 ,\r_ball_dir_x1_inferred__3/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \r_ball_dir_x1_inferred__3/i__carry__2 
       (.CI(\r_ball_dir_x1_inferred__3/i__carry__1_n_0 ),
        .CO({\r_ball_dir_x1_inferred__3/i__carry__2_n_0 ,\r_ball_dir_x1_inferred__3/i__carry__2_n_1 ,\r_ball_dir_x1_inferred__3/i__carry__2_n_2 ,\r_ball_dir_x1_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[15] ,\r_ball_rate_reg_n_0_[14] ,\r_ball_rate_reg_n_0_[13] ,\r_ball_rate_reg_n_0_[12] }),
        .O({\r_ball_dir_x1_inferred__3/i__carry__2_n_4 ,\r_ball_dir_x1_inferred__3/i__carry__2_n_5 ,\r_ball_dir_x1_inferred__3/i__carry__2_n_6 ,\r_ball_dir_x1_inferred__3/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \r_ball_dir_x1_inferred__3/i__carry__3 
       (.CI(\r_ball_dir_x1_inferred__3/i__carry__2_n_0 ),
        .CO({\r_ball_dir_x1_inferred__3/i__carry__3_n_0 ,\r_ball_dir_x1_inferred__3/i__carry__3_n_1 ,\r_ball_dir_x1_inferred__3/i__carry__3_n_2 ,\r_ball_dir_x1_inferred__3/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[19] ,\r_ball_rate_reg_n_0_[18] ,\r_ball_rate_reg_n_0_[17] ,\r_ball_rate_reg_n_0_[16] }),
        .O({\r_ball_dir_x1_inferred__3/i__carry__3_n_4 ,\r_ball_dir_x1_inferred__3/i__carry__3_n_5 ,\r_ball_dir_x1_inferred__3/i__carry__3_n_6 ,\r_ball_dir_x1_inferred__3/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \r_ball_dir_x1_inferred__3/i__carry__4 
       (.CI(\r_ball_dir_x1_inferred__3/i__carry__3_n_0 ),
        .CO({\r_ball_dir_x1_inferred__3/i__carry__4_n_0 ,\r_ball_dir_x1_inferred__3/i__carry__4_n_1 ,\r_ball_dir_x1_inferred__3/i__carry__4_n_2 ,\r_ball_dir_x1_inferred__3/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\r_ball_rate_reg_n_0_[23] ,\r_ball_rate_reg_n_0_[22] ,\r_ball_rate_reg_n_0_[21] ,\r_ball_rate_reg_n_0_[20] }),
        .O({\r_ball_dir_x1_inferred__3/i__carry__4_n_4 ,\r_ball_dir_x1_inferred__3/i__carry__4_n_5 ,\r_ball_dir_x1_inferred__3/i__carry__4_n_6 ,\r_ball_dir_x1_inferred__3/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 r_ball_dir_x2_carry
       (.CI(1'b0),
        .CO({r_ball_dir_x2,r_ball_dir_x2_carry_n_1,r_ball_dir_x2_carry_n_2,r_ball_dir_x2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r_ball_dir_x3,r_ball_dir_x2_carry_i_2_n_0,r_ball_dir_x2_carry_i_3_n_0,r_ball_dir_x2_carry_i_4_n_0}),
        .O(NLW_r_ball_dir_x2_carry_O_UNCONNECTED[3:0]),
        .S({r_ball_dir_x2_carry_i_5_n_0,r_ball_dir_x2_carry_i_6_n_0,r_ball_dir_x2_carry_i_7_n_0,r_ball_dir_x2_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    r_ball_dir_x2_carry_i_1
       (.I0(r_ball_dir_x2_carry_0),
        .I1(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I5(w_Paddle_size[2]),
        .O(r_ball_dir_x3));
  LUT6 #(
    .INIT(64'hBB2B0000FFFFBB2B)) 
    r_ball_dir_x2_carry_i_10
       (.I0(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I5(w_Paddle_size[2]),
        .O(r_ball_dir_x2_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    r_ball_dir_x2_carry_i_11
       (.I0(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [0]),
        .O(r_ball_dir_x2_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0A2AAFBC0002AAA8)) 
    r_ball_dir_x2_carry_i_2
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(r_ball_dir_x2_carry_i_10_n_0),
        .I2(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(r_ball_dir_x2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hAE8A38E38A0820A2)) 
    r_ball_dir_x2_carry_i_3
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(r_ball_dir_x2_carry_i_11_n_0),
        .I2(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I3(w_Paddle_size[2]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I5(w_Ball_pos_y),
        .O(r_ball_dir_x2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hEB8228EB82822882)) 
    r_ball_dir_x2_carry_i_4
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I3(w_Paddle_size[0]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(r_ball_dir_x2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    r_ball_dir_x2_carry_i_5
       (.I0(w_Paddle_size[2]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I5(r_ball_dir_x2_carry_0),
        .O(r_ball_dir_x2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    r_ball_dir_x2_carry_i_6
       (.I0(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I1(\r_ball_pos_y_reg[5]_0 [4]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I3(r_ball_dir_x2_carry_i_10_n_0),
        .I4(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(r_ball_dir_x2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h6006096009609009)) 
    r_ball_dir_x2_carry_i_7
       (.I0(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I1(\r_ball_pos_y_reg[5]_0 [2]),
        .I2(r_ball_dir_x2_carry_i_11_n_0),
        .I3(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I4(w_Paddle_size[2]),
        .I5(w_Ball_pos_y),
        .O(r_ball_dir_x2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0069960069000069)) 
    r_ball_dir_x2_carry_i_8
       (.I0(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(w_Paddle_size[0]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(r_ball_dir_x2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \r_ball_dir_x2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({r_ball_dir_x22_in,\r_ball_dir_x2_inferred__0/i__carry_n_1 ,\r_ball_dir_x2_inferred__0/i__carry_n_2 ,\r_ball_dir_x2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_r_ball_dir_x2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \r_ball_dir_x2_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({r_ball_dir_x23_in,\r_ball_dir_x2_inferred__1/i__carry_n_1 ,\r_ball_dir_x2_inferred__1/i__carry_n_2 ,\r_ball_dir_x2_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_r_ball_dir_x2_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \r_ball_dir_x2_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({r_ball_dir_x24_in,\r_ball_dir_x2_inferred__2/i__carry_n_1 ,\r_ball_dir_x2_inferred__2/i__carry_n_2 ,\r_ball_dir_x2_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_r_ball_dir_x2_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__0_n_0}));
  LUT6 #(
    .INIT(64'hCCECCFFFCCECC000)) 
    r_ball_dir_x_i_1
       (.I0(CPU_RESETN_IBUF),
        .I1(r_ball_dir_x_i_2_n_0),
        .I2(r_ball_dir_x_i_3_n_0),
        .I3(r_ball_dir_x_i_4_n_0),
        .I4(r_ball_dir_x_i_5_n_0),
        .I5(r_ball_dir_x_reg_n_0),
        .O(r_ball_dir_x_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAAABAA)) 
    r_ball_dir_x_i_2
       (.I0(r_ball_dir_x_i_6_n_0),
        .I1(\r_serve_pattern_reg_n_0_[1] ),
        .I2(r_play_state[0]),
        .I3(r_play_state[1]),
        .I4(r_point_p2_reg_n_0),
        .I5(r_ball_dir_x_i_7_n_0),
        .O(r_ball_dir_x_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    r_ball_dir_x_i_3
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .O(r_ball_dir_x_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    r_ball_dir_x_i_4
       (.I0(r_ball_dir_x23_in),
        .I1(r_ball_dir_x24_in),
        .I2(r_point_p2_i_3_n_0),
        .I3(\r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 ),
        .I4(r_Game_state[1]),
        .I5(r_Game_state[0]),
        .O(r_ball_dir_x_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF5D5F5D5D)) 
    r_ball_dir_x_i_5
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[1]),
        .I2(r_play_state[0]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .I5(r_ball_dir_x_i_6_n_0),
        .O(r_ball_dir_x_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    r_ball_dir_x_i_6
       (.I0(\FSM_sequential_r_play_state[1]_i_6_n_0 ),
        .I1(r_ball_dir_x_i_3_n_0),
        .I2(r_ball_dir_x22_in),
        .I3(r_ball_dir_x2),
        .I4(\r_Game_state_reg[1]_2 ),
        .I5(\r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 ),
        .O(r_ball_dir_x_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h82808282)) 
    r_ball_dir_x_i_7
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .O(r_ball_dir_x_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_ball_dir_x_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_ball_dir_x_i_1_n_0),
        .Q(r_ball_dir_x_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFCF554FC0C0FFC0)) 
    r_ball_dir_y_i_1
       (.I0(r_ball_dir_y_i_2_n_0),
        .I1(r_ball_dir_y_i_3_n_0),
        .I2(\r_ball_pos_y[5]_i_3_n_0 ),
        .I3(r_ball_dir_x_i_3_n_0),
        .I4(r_ball_dir_y_i_4_n_0),
        .I5(r_ball_dir_y_reg_n_0),
        .O(r_ball_dir_y_i_1_n_0));
  LUT6 #(
    .INIT(64'h00FF99F0FFFF99FF)) 
    r_ball_dir_y_i_2
       (.I0(\r_serve_pattern_reg_n_0_[0] ),
        .I1(\r_serve_pattern_reg_n_0_[1] ),
        .I2(\r_Game_state_reg[0]_1 ),
        .I3(r_play_state[1]),
        .I4(r_play_state[0]),
        .I5(CPU_RESETN_IBUF),
        .O(r_ball_dir_y_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF600060FF6F0060)) 
    r_ball_dir_y_i_3
       (.I0(\r_serve_pattern_reg_n_0_[1] ),
        .I1(\r_serve_pattern_reg_n_0_[0] ),
        .I2(r_play_state[1]),
        .I3(r_play_state[0]),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_Game_state_reg[0]_1 ),
        .O(r_ball_dir_y_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF15555555)) 
    r_ball_dir_y_i_4
       (.I0(\r_ball_pos_y[5]_i_5_n_0 ),
        .I1(\r_ball_pos_y_reg[5]_0 [3]),
        .I2(w_Ball_pos_y),
        .I3(\r_ball_pos_y_reg[5]_0 [4]),
        .I4(\r_ball_pos_y_reg[5]_0 [2]),
        .I5(r_ball_dir_y_i_5_n_0),
        .O(r_ball_dir_y_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    r_ball_dir_y_i_5
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .I2(\r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 ),
        .O(r_ball_dir_y_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_ball_dir_y_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_ball_dir_y_i_1_n_0),
        .Q(r_ball_dir_y_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000DD0F0000)) 
    \r_ball_pos_x[0]_i_1 
       (.I0(\r_ball_pos_x[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\r_ball_pos_x[6]_i_3_n_0 ),
        .I3(r_ball_dir_x_reg_n_0),
        .I4(\r_ball_pos_x[6]_i_5_n_0 ),
        .I5(Q[0]),
        .O(\r_ball_pos_x[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_ball_pos_x[0]_i_2 
       (.I0(w_Ball_pos_x),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\r_ball_pos_x[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE33EFFFF)) 
    \r_ball_pos_x[1]_i_1 
       (.I0(\r_ball_pos_x[6]_i_3_n_0 ),
        .I1(r_ball_dir_x_reg_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\r_ball_pos_x[6]_i_5_n_0 ),
        .O(\r_ball_pos_x[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9FF6AFFFFFFFF)) 
    \r_ball_pos_x[2]_i_1 
       (.I0(w_Ball_pos_x),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\r_ball_pos_x[6]_i_3_n_0 ),
        .I4(r_ball_dir_x_reg_n_0),
        .I5(\r_ball_pos_x[6]_i_5_n_0 ),
        .O(\r_ball_pos_x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020002020)) 
    \r_ball_pos_x[3]_i_1 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(r_ball_count1_carry__1_n_0),
        .I3(r_Game_state[0]),
        .I4(r_Game_state[1]),
        .I5(\r_ball_pos_x[3]_i_2_n_0 ),
        .O(\r_ball_pos_x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h433333317777777D)) 
    \r_ball_pos_x[3]_i_2 
       (.I0(\r_ball_pos_x[3]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(w_Ball_pos_x),
        .I5(\r_ball_pos_x[3]_i_4_n_0 ),
        .O(\r_ball_pos_x[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \r_ball_pos_x[3]_i_3 
       (.I0(r_ball_dir_x_reg_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\r_ball_pos_x[0]_i_2_n_0 ),
        .O(\r_ball_pos_x[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_ball_pos_x[3]_i_4 
       (.I0(r_ball_dir_x_reg_n_0),
        .I1(\r_ball_pos_x[6]_i_3_n_0 ),
        .O(\r_ball_pos_x[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAF655F6FFFFFFFF)) 
    \r_ball_pos_x[4]_i_1 
       (.I0(Q[3]),
        .I1(\r_ball_pos_x[4]_i_2_n_0 ),
        .I2(\r_ball_pos_x[6]_i_3_n_0 ),
        .I3(r_ball_dir_x_reg_n_0),
        .I4(\r_ball_pos_x[4]_i_3_n_0 ),
        .I5(\r_ball_pos_x[6]_i_5_n_0 ),
        .O(\r_ball_pos_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_ball_pos_x[4]_i_2 
       (.I0(w_Ball_pos_x),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\r_ball_pos_x[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_ball_pos_x[4]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(w_Ball_pos_x),
        .O(\r_ball_pos_x[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF655F6FFFFFFFF)) 
    \r_ball_pos_x[5]_i_1 
       (.I0(Q[4]),
        .I1(\r_ball_pos_x[5]_i_2_n_0 ),
        .I2(\r_ball_pos_x[6]_i_3_n_0 ),
        .I3(r_ball_dir_x_reg_n_0),
        .I4(\r_ball_pos_x[5]_i_3_n_0 ),
        .I5(\r_ball_pos_x[6]_i_5_n_0 ),
        .O(\r_ball_pos_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_ball_pos_x[5]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(w_Ball_pos_x),
        .I4(Q[3]),
        .O(\r_ball_pos_x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_ball_pos_x[5]_i_3 
       (.I0(Q[3]),
        .I1(w_Ball_pos_x),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\r_ball_pos_x[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55F6AAF6FFFFFFFF)) 
    \r_ball_pos_x[6]_i_1 
       (.I0(Q[5]),
        .I1(\r_ball_pos_x[6]_i_2_n_0 ),
        .I2(\r_ball_pos_x[6]_i_3_n_0 ),
        .I3(r_ball_dir_x_reg_n_0),
        .I4(\r_ball_pos_x[6]_i_4_n_0 ),
        .I5(\r_ball_pos_x[6]_i_5_n_0 ),
        .O(\r_ball_pos_x[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_ball_pos_x[6]_i_2 
       (.I0(Q[3]),
        .I1(w_Ball_pos_x),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\r_ball_pos_x[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \r_ball_pos_x[6]_i_3 
       (.I0(\FSM_sequential_r_play_state[1]_i_6_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\r_ball_pos_x[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_ball_pos_x[6]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(w_Ball_pos_x),
        .I5(Q[3]),
        .O(\r_ball_pos_x[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    \r_ball_pos_x[6]_i_5 
       (.I0(r_Game_state[1]),
        .I1(r_Game_state[0]),
        .I2(r_ball_count1_carry__1_n_0),
        .I3(r_play_state[1]),
        .I4(r_play_state[0]),
        .O(\r_ball_pos_x[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55575555)) 
    \r_ball_pos_x[7]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .I5(\r_ball_pos_x[7]_i_3_n_0 ),
        .O(r_ball_pos_x));
  LUT6 #(
    .INIT(64'h0000000020002020)) 
    \r_ball_pos_x[7]_i_2 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(r_ball_count1_carry__1_n_0),
        .I3(r_Game_state[0]),
        .I4(r_Game_state[1]),
        .I5(\r_ball_pos_x[7]_i_4_n_0 ),
        .O(\r_ball_pos_x[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A028A8A8A8A)) 
    \r_ball_pos_x[7]_i_3 
       (.I0(\r_ball_pos_x[6]_i_5_n_0 ),
        .I1(r_ball_dir_x_reg_n_0),
        .I2(\r_ball_pos_x[6]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\r_ball_pos_x[0]_i_2_n_0 ),
        .O(\r_ball_pos_x[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h33B830B8FCFFFFFF)) 
    \r_ball_pos_x[7]_i_4 
       (.I0(\r_ball_pos_x[6]_i_4_n_0 ),
        .I1(r_ball_dir_x_reg_n_0),
        .I2(\r_ball_pos_x[6]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(\r_ball_pos_x[6]_i_2_n_0 ),
        .I5(Q[6]),
        .O(\r_ball_pos_x[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pos_x_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(r_ball_count0));
  FDSE #(
    .INIT(1'b1)) 
    \r_ball_pos_x_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(r_ball_count0));
  FDSE #(
    .INIT(1'b1)) 
    \r_ball_pos_x_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[2]_i_1_n_0 ),
        .Q(w_Ball_pos_x),
        .S(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pos_x_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(r_ball_count0));
  FDSE #(
    .INIT(1'b1)) 
    \r_ball_pos_x_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[4]_i_1_n_0 ),
        .Q(Q[3]),
        .S(r_ball_count0));
  FDSE #(
    .INIT(1'b1)) 
    \r_ball_pos_x_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[5]_i_1_n_0 ),
        .Q(Q[4]),
        .S(r_ball_count0));
  FDSE #(
    .INIT(1'b1)) 
    \r_ball_pos_x_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[6]_i_1_n_0 ),
        .Q(Q[5]),
        .S(r_ball_count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pos_x_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_x),
        .D(\r_ball_pos_x[7]_i_2_n_0 ),
        .Q(Q[6]),
        .R(r_ball_count0));
  LUT6 #(
    .INIT(64'hFBBF0000FBBFFBBF)) 
    \r_ball_pos_y[0]_i_1 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(\r_serve_pattern_reg_n_0_[0] ),
        .I3(\r_serve_pattern_reg_n_0_[1] ),
        .I4(\r_ball_pos_y[5]_i_4_n_0 ),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(\r_ball_pos_y[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAEAAAEEA)) 
    \r_ball_pos_y[1]_i_1 
       (.I0(\r_ball_pos_y[1]_i_2_n_0 ),
        .I1(\r_ball_pos_y[5]_i_7_n_0 ),
        .I2(\r_ball_pos_y[1]_i_3_n_0 ),
        .I3(r_ball_dir_y_reg_n_0),
        .I4(\r_ball_pos_y[1]_i_4_n_0 ),
        .I5(\r_ball_pos_y[5]_i_5_n_0 ),
        .O(\r_ball_pos_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \r_ball_pos_y[1]_i_2 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(\r_serve_pattern_reg_n_0_[0] ),
        .I3(\r_serve_pattern_reg_n_0_[1] ),
        .O(\r_ball_pos_y[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ball_pos_y[1]_i_3 
       (.I0(\r_ball_pos_y_reg[5]_0 [0]),
        .I1(\r_ball_pos_y_reg[5]_0 [1]),
        .O(\r_ball_pos_y[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \r_ball_pos_y[1]_i_4 
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(\r_ball_pos_y_reg[5]_0 [0]),
        .I2(\r_ball_pos_y_reg[5]_0 [2]),
        .I3(\r_ball_pos_y_reg[5]_0 [4]),
        .I4(w_Ball_pos_y),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(\r_ball_pos_y[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEABBFEA)) 
    \r_ball_pos_y[2]_i_1 
       (.I0(\r_ball_pos_y[5]_i_4_n_0 ),
        .I1(\r_ball_pos_y_reg[5]_0 [0]),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(w_Ball_pos_y),
        .I4(r_ball_dir_y_reg_n_0),
        .O(\r_ball_pos_y[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABBFFFEAAA)) 
    \r_ball_pos_y[3]_i_1 
       (.I0(\r_ball_pos_y[5]_i_4_n_0 ),
        .I1(w_Ball_pos_y),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(\r_ball_pos_y_reg[5]_0 [0]),
        .I4(\r_ball_pos_y_reg[5]_0 [2]),
        .I5(r_ball_dir_y_reg_n_0),
        .O(\r_ball_pos_y[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA88A8A8AA88AA8A8)) 
    \r_ball_pos_y[4]_i_1 
       (.I0(\r_ball_pos_y[4]_i_2_n_0 ),
        .I1(\r_ball_pos_y[5]_i_4_n_0 ),
        .I2(\r_ball_pos_y_reg[5]_0 [3]),
        .I3(\r_ball_pos_y[4]_i_3_n_0 ),
        .I4(r_ball_dir_y_reg_n_0),
        .I5(\r_ball_pos_y[4]_i_4_n_0 ),
        .O(\r_ball_pos_y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFF9F)) 
    \r_ball_pos_y[4]_i_2 
       (.I0(\r_serve_pattern_reg_n_0_[1] ),
        .I1(\r_serve_pattern_reg_n_0_[0] ),
        .I2(r_play_state[1]),
        .I3(r_play_state[0]),
        .O(\r_ball_pos_y[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_ball_pos_y[4]_i_3 
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(\r_ball_pos_y_reg[5]_0 [0]),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(w_Ball_pos_y),
        .O(\r_ball_pos_y[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_ball_pos_y[4]_i_4 
       (.I0(\r_ball_pos_y_reg[5]_0 [0]),
        .I1(\r_ball_pos_y_reg[5]_0 [1]),
        .I2(w_Ball_pos_y),
        .I3(\r_ball_pos_y_reg[5]_0 [2]),
        .O(\r_ball_pos_y[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABBB)) 
    \r_ball_pos_y[5]_i_1 
       (.I0(\r_ball_pos_y[5]_i_3_n_0 ),
        .I1(\r_ball_pos_y[5]_i_4_n_0 ),
        .I2(r_ball_dir_y_reg_n_0),
        .I3(\r_ball_pos_y[5]_i_5_n_0 ),
        .O(r_ball_pos_y));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pos_y[5]_i_10 
       (.I0(r_Game_state[1]),
        .I1(r_Game_state[0]),
        .O(\r_Game_state_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \r_ball_pos_y[5]_i_2 
       (.I0(\r_serve_pattern_reg_n_0_[1] ),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(\r_serve_pattern_reg_n_0_[0] ),
        .I4(\r_ball_pos_y[5]_i_6_n_0 ),
        .I5(\r_ball_pos_y[5]_i_7_n_0 ),
        .O(\r_ball_pos_y[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0F02FFFF)) 
    \r_ball_pos_y[5]_i_3 
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .I2(r_play_state[0]),
        .I3(r_play_state[1]),
        .I4(CPU_RESETN_IBUF),
        .O(\r_ball_pos_y[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \r_ball_pos_y[5]_i_4 
       (.I0(r_ball_dir_y_reg_n_0),
        .I1(\r_ball_pos_y[1]_i_4_n_0 ),
        .I2(\r_ball_pos_y[5]_i_7_n_0 ),
        .O(\r_ball_pos_y[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_ball_pos_y[5]_i_5 
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(\r_ball_pos_y_reg[5]_0 [2]),
        .I2(\r_ball_pos_y_reg[5]_0 [0]),
        .I3(\r_ball_pos_y_reg[5]_0 [1]),
        .I4(w_Ball_pos_y),
        .I5(\r_ball_pos_y_reg[5]_0 [3]),
        .O(\r_ball_pos_y[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FCDFFCD)) 
    \r_ball_pos_y[5]_i_6 
       (.I0(\r_ball_pos_y[5]_i_8_n_0 ),
        .I1(\r_ball_pos_y[1]_i_4_n_0 ),
        .I2(\r_ball_pos_y_reg[5]_0 [4]),
        .I3(r_ball_dir_y_reg_n_0),
        .I4(\r_ball_pos_y[5]_i_9_n_0 ),
        .O(\r_ball_pos_y[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000400000)) 
    \r_ball_pos_y[5]_i_7 
       (.I0(r_play_state[1]),
        .I1(r_play_state[0]),
        .I2(r_ball_count1_carry__1_n_0),
        .I3(\r_Game_state_reg[1]_2 ),
        .I4(\r_y_step_count_reg_n_0_[0] ),
        .I5(\r_y_step_count_reg_n_0_[2] ),
        .O(\r_ball_pos_y[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_ball_pos_y[5]_i_8 
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(w_Ball_pos_y),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(\r_ball_pos_y_reg[5]_0 [0]),
        .I4(\r_ball_pos_y_reg[5]_0 [3]),
        .O(\r_ball_pos_y[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_ball_pos_y[5]_i_9 
       (.I0(\r_ball_pos_y_reg[5]_0 [3]),
        .I1(w_Ball_pos_y),
        .I2(\r_ball_pos_y_reg[5]_0 [1]),
        .I3(\r_ball_pos_y_reg[5]_0 [0]),
        .I4(\r_ball_pos_y_reg[5]_0 [2]),
        .O(\r_ball_pos_y[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_ball_pos_y_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_y),
        .D(\r_ball_pos_y[0]_i_1_n_0 ),
        .Q(\r_ball_pos_y_reg[5]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pos_y_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_y),
        .D(\r_ball_pos_y[1]_i_1_n_0 ),
        .Q(\r_ball_pos_y_reg[5]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_ball_pos_y_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_y),
        .D(\r_ball_pos_y[2]_i_1_n_0 ),
        .Q(w_Ball_pos_y),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_ball_pos_y_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_y),
        .D(\r_ball_pos_y[3]_i_1_n_0 ),
        .Q(\r_ball_pos_y_reg[5]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_ball_pos_y_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_y),
        .D(\r_ball_pos_y[4]_i_1_n_0 ),
        .Q(\r_ball_pos_y_reg[5]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pos_y_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pos_y),
        .D(\r_ball_pos_y[5]_i_2_n_0 ),
        .Q(\r_ball_pos_y_reg[5]_0 [4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[0]_i_1 
       (.I0(Q[0]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[1]_i_1 
       (.I0(Q[1]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[2]_i_1 
       (.I0(w_Ball_pos_x),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[3]_i_1 
       (.I0(Q[2]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[4]_i_1 
       (.I0(Q[3]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[5]_i_1 
       (.I0(Q[4]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[6]_i_1 
       (.I0(Q[5]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_x[7]_i_1 
       (.I0(Q[6]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_x_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_y[0]_i_1 
       (.I0(\r_ball_pos_y_reg[5]_0 [0]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_y_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_y[1]_i_1 
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_y_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_y[2]_i_1 
       (.I0(w_Ball_pos_y),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_y_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_y[3]_i_1 
       (.I0(\r_ball_pos_y_reg[5]_0 [2]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_y_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_y[4]_i_1 
       (.I0(\r_ball_pos_y_reg[5]_0 [3]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_y_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_pre_y[5]_i_2 
       (.I0(\r_ball_pos_y_reg[5]_0 [4]),
        .I1(\r_ball_pre_x_reg[0] ),
        .O(\r_ball_pos_y_reg[5]_1 ));
  LUT5 #(
    .INIT(32'h55555551)) 
    \r_ball_rate[19]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .I3(r_play_state[1]),
        .I4(r_play_state[0]),
        .O(\r_ball_rate[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \r_ball_rate[23]_i_1 
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .I2(r_play_state[1]),
        .I3(r_play_state[0]),
        .I4(CPU_RESETN_IBUF),
        .O(\r_ball_rate[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_ball_rate[23]_i_3 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(r_Game_state[1]),
        .I3(r_Game_state[0]),
        .O(\FSM_sequential_r_play_state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_ball_rate_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [0]),
        .Q(\r_ball_rate_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [7]),
        .Q(\r_ball_rate_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [8]),
        .Q(\r_ball_rate_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [9]),
        .Q(\r_ball_rate_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [10]),
        .Q(\r_ball_rate_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[14]_0 ),
        .Q(\r_ball_rate_reg_n_0_[14] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [11]),
        .Q(\r_ball_rate_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [12]),
        .Q(\r_ball_rate_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[17]_0 ),
        .Q(\r_ball_rate_reg_n_0_[17] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[18]_0 ),
        .Q(\r_ball_rate_reg_n_0_[18] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[19]_0 ),
        .Q(\r_ball_rate_reg_n_0_[19] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [1]),
        .Q(\r_ball_rate_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [13]),
        .Q(\r_ball_rate_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [14]),
        .Q(\r_ball_rate_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [15]),
        .Q(\r_ball_rate_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [16]),
        .Q(\r_ball_rate_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [2]),
        .Q(\r_ball_rate_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [3]),
        .Q(\r_ball_rate_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[4]_0 ),
        .Q(\r_ball_rate_reg_n_0_[4] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [4]),
        .Q(\r_ball_rate_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[6]_0 ),
        .Q(\r_ball_rate_reg_n_0_[6] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [5]),
        .Q(\r_ball_rate_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[23]_0 [6]),
        .Q(\r_ball_rate_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_rate_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_ball_rate[23]_i_1_n_0 ),
        .D(\r_ball_rate_reg[9]_0 ),
        .Q(\r_ball_rate_reg_n_0_[9] ),
        .R(\r_ball_rate[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    \r_ball_state[0]_i_4 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .O(\r_Game_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_ball_state[0]_i_5 
       (.I0(Q[1]),
        .I1(r_ball_pre_x[1]),
        .I2(w_Ball_pos_x),
        .I3(r_ball_pre_x[2]),
        .I4(r_ball_pre_x[0]),
        .I5(Q[0]),
        .O(\r_ball_pos_x_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_ball_state[0]_i_9 
       (.I0(\r_ball_pos_y_reg[5]_0 [1]),
        .I1(\r_ball_state[0]_i_2 ),
        .I2(w_Ball_pos_y),
        .I3(\r_ball_state[0]_i_2_0 ),
        .I4(\r_ball_state[0]_i_2_1 ),
        .I5(\r_ball_pos_y_reg[5]_0 [0]),
        .O(\r_ball_pos_y_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \r_ball_state[1]_i_2 
       (.I0(\r_ball_state_reg[1]_3 ),
        .I1(w_TX_ready),
        .I2(r_Game_state[0]),
        .I3(r_Game_state[1]),
        .O(r_send_pending_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBAF0000)) 
    \r_game_value[0]_i_2 
       (.I0(\FSM_sequential_r_Game_state[0]_i_2_n_0 ),
        .I1(w_New_key),
        .I2(\FSM_sequential_r_Game_state_reg[0]_1 ),
        .I3(\FSM_sequential_r_Game_state_reg[0]_2 ),
        .I4(CPU_RESETN_IBUF),
        .I5(\FSM_sequential_r_Game_state_reg[0]_3 ),
        .O(o_Received_new_byte_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAAAFFFF)) 
    \r_game_value[0]_i_3 
       (.I0(r_Game_state__0),
        .I1(\FSM_sequential_r_Game_state_reg[0]_1 ),
        .I2(w_New_key),
        .I3(\FSM_sequential_r_Game_state_reg[0]_2 ),
        .I4(CPU_RESETN_IBUF),
        .I5(\FSM_sequential_r_Game_state_reg[0]_3 ),
        .O(r_game_value));
  LUT6 #(
    .INIT(64'h4444400040004000)) 
    \r_game_value[1]_i_4 
       (.I0(\FSM_sequential_r_Game_state_reg[0]_2 ),
        .I1(\FSM_sequential_r_Game_state_reg[0]_1 ),
        .I2(w_P1_score[0]),
        .I3(w_P1_score[1]),
        .I4(w_P2_score[0]),
        .I5(w_P2_score[1]),
        .O(r_Game_state__0));
  LUT6 #(
    .INIT(64'h000000D0FFFFFFFF)) 
    \r_message_index[0]_i_1 
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .I2(\r_message_index_reg[1] ),
        .I3(r_screen_render_state[0]),
        .I4(r_screen_render_state[1]),
        .I5(CPU_RESETN_IBUF),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_p1_paddle_pos[3]_i_2 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I1(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [2]),
        .O(\r_p1_paddle_pos_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hBBABBBABABBBBBAB)) 
    \r_p1_paddle_pos[4]_i_1 
       (.I0(\r_p1_paddle_pos_reg[5]_0 ),
        .I1(\r_p1_paddle_pos[4]_i_2_n_0 ),
        .I2(\r_p1_paddle_pos_reg[4]_0 ),
        .I3(w_P1_paddle[4]),
        .I4(\r_p1_paddle_pos_reg[1]_0 ),
        .I5(\r_p1_paddle_pos_reg[3]_0 [3]),
        .O(\r_p1_paddle_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800000002AAAAAAA)) 
    \r_p1_paddle_pos[4]_i_2 
       (.I0(\r_p1_paddle_pos_reg[5]_1 ),
        .I1(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I5(w_P1_paddle[4]),
        .O(\r_p1_paddle_pos[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_p1_paddle_pos[4]_i_4 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I1(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [2]),
        .O(\r_p1_paddle_pos_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2002F00F00002002)) 
    \r_p1_paddle_pos[4]_i_5 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I1(w_Paddle_size[0]),
        .I2(w_Paddle_size[2]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I4(w_Paddle_size[1]),
        .I5(\r_p1_paddle_pos_reg[3]_0 [1]),
        .O(\r_p1_paddle_pos_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \r_p1_paddle_pos[4]_i_6 
       (.I0(w_Paddle_size[2]),
        .I1(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I3(w_P1_paddle[4]),
        .I4(w_P1_paddle[5]),
        .O(\r_Paddle_size_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h55575555FFFFFFFF)) 
    \r_p1_paddle_pos[5]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .I5(\r_p1_paddle_pos_reg[0]_2 ),
        .O(r_p1_paddle_pos));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_p1_paddle_pos[5]_i_10 
       (.I0(w_P1_paddle[4]),
        .I1(w_P1_paddle[5]),
        .O(\r_p1_paddle_pos[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000BC88)) 
    \r_p1_paddle_pos[5]_i_2 
       (.I0(\r_p1_paddle_pos[5]_i_4_n_0 ),
        .I1(w_P1_paddle[5]),
        .I2(\r_p1_paddle_pos[5]_i_5_n_0 ),
        .I3(\r_p1_paddle_pos_reg[5]_1 ),
        .I4(\r_p1_paddle_pos_reg[5]_0 ),
        .O(\r_p1_paddle_pos[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \r_p1_paddle_pos[5]_i_4 
       (.I0(\r_p1_paddle_pos_reg[4]_0 ),
        .I1(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I2(w_P1_paddle[4]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I5(\r_p1_paddle_pos_reg[3]_0 [2]),
        .O(\r_p1_paddle_pos[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_p1_paddle_pos[5]_i_5 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I1(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I2(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I4(w_P1_paddle[4]),
        .O(\r_p1_paddle_pos[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEECC000)) 
    \r_p1_paddle_pos[5]_i_8 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I1(\r_p1_paddle_pos[5]_i_6 ),
        .I2(w_Paddle_size[2]),
        .I3(w_Paddle_size[1]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I5(\r_p1_paddle_pos[5]_i_10_n_0 ),
        .O(\r_p1_paddle_pos_reg[2]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_p1_paddle_pos_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p1_paddle_pos),
        .D(\r_p1_paddle_pos_reg[3]_1 [0]),
        .Q(\r_p1_paddle_pos_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_p1_paddle_pos_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p1_paddle_pos),
        .D(\r_p1_paddle_pos_reg[3]_1 [1]),
        .Q(\r_p1_paddle_pos_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_p1_paddle_pos_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p1_paddle_pos),
        .D(\r_p1_paddle_pos_reg[3]_1 [2]),
        .Q(\r_p1_paddle_pos_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_p1_paddle_pos_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p1_paddle_pos),
        .D(\r_p1_paddle_pos_reg[3]_1 [3]),
        .Q(\r_p1_paddle_pos_reg[3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_p1_paddle_pos_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p1_paddle_pos),
        .D(\r_p1_paddle_pos[4]_i_1_n_0 ),
        .Q(w_P1_paddle[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_p1_paddle_pos_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p1_paddle_pos),
        .D(\r_p1_paddle_pos[5]_i_2_n_0 ),
        .Q(w_P1_paddle[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAA02200000F00)) 
    \r_p1_score[0]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\r_Game_state_reg[0]_1 ),
        .I2(r_point_p2_reg_n_0),
        .I3(r_play_state[1]),
        .I4(r_play_state[0]),
        .I5(w_P1_score[0]),
        .O(\r_p1_score[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFAFFFEFEFA00)) 
    \r_p1_score[1]_i_1 
       (.I0(\r_p2_score[1]_i_2_n_0 ),
        .I1(w_P1_score[0]),
        .I2(\r_p1_score[1]_i_2_n_0 ),
        .I3(\r_ball_rate[23]_i_1_n_0 ),
        .I4(\r_p1_score[1]_i_3_n_0 ),
        .I5(w_P1_score[1]),
        .O(\r_p1_score[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \r_p1_score[1]_i_2 
       (.I0(r_play_state[1]),
        .I1(r_play_state[0]),
        .I2(r_point_p2_reg_n_0),
        .I3(CPU_RESETN_IBUF),
        .O(\r_p1_score[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_p1_score[1]_i_3 
       (.I0(r_play_state[0]),
        .I1(r_play_state[1]),
        .I2(r_point_p2_reg_n_0),
        .O(\r_p1_score[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_p1_score_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_p1_score[0]_i_1_n_0 ),
        .Q(w_P1_score[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_p1_score_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_p1_score[1]_i_1_n_0 ),
        .Q(w_P1_score[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_p2_paddle_pos[3]_i_2 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [2]),
        .O(\r_p2_paddle_pos_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hBBABBBABABBBBBAB)) 
    \r_p2_paddle_pos[4]_i_1 
       (.I0(\r_p2_paddle_pos_reg[5]_1 ),
        .I1(\r_p2_paddle_pos[4]_i_2_n_0 ),
        .I2(\r_p2_paddle_pos_reg[4]_0 ),
        .I3(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I4(\r_p2_paddle_pos_reg[1]_0 ),
        .I5(\r_p2_paddle_pos_reg[5]_0 [3]),
        .O(\r_p2_paddle_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800000002AAAAAAA)) 
    \r_p2_paddle_pos[4]_i_2 
       (.I0(\r_p2_paddle_pos_reg[5]_2 ),
        .I1(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I5(\r_p2_paddle_pos_reg[5]_0 [4]),
        .O(\r_p2_paddle_pos[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_p2_paddle_pos[4]_i_4 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [2]),
        .O(\r_p2_paddle_pos_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2002F00F00002002)) 
    \r_p2_paddle_pos[4]_i_5 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I1(w_Paddle_size[0]),
        .I2(w_Paddle_size[2]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I4(w_Paddle_size[1]),
        .I5(\r_p2_paddle_pos_reg[5]_0 [1]),
        .O(\r_p2_paddle_pos_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \r_p2_paddle_pos[4]_i_6 
       (.I0(w_Paddle_size[2]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [5]),
        .O(\r_Paddle_size_reg[2] ));
  LUT6 #(
    .INIT(64'h55575555FFFFFFFF)) 
    \r_p2_paddle_pos[5]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .I5(\r_p2_paddle_pos_reg[0]_2 ),
        .O(r_p2_paddle_pos));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_p2_paddle_pos[5]_i_11 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [5]),
        .O(\r_p2_paddle_pos[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000BC88)) 
    \r_p2_paddle_pos[5]_i_2 
       (.I0(\r_p2_paddle_pos[5]_i_4_n_0 ),
        .I1(\r_p2_paddle_pos_reg[5]_0 [5]),
        .I2(\r_p2_paddle_pos[5]_i_5_n_0 ),
        .I3(\r_p2_paddle_pos_reg[5]_2 ),
        .I4(\r_p2_paddle_pos_reg[5]_1 ),
        .O(\r_p2_paddle_pos[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \r_p2_paddle_pos[5]_i_4 
       (.I0(\r_p2_paddle_pos_reg[4]_0 ),
        .I1(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I5(\r_p2_paddle_pos_reg[5]_0 [2]),
        .O(\r_p2_paddle_pos[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_p2_paddle_pos[5]_i_5 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I1(\r_p2_paddle_pos_reg[5]_0 [1]),
        .I2(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [4]),
        .O(\r_p2_paddle_pos[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEECC000)) 
    \r_p2_paddle_pos[5]_i_8 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I1(\r_p2_paddle_pos[5]_i_6 ),
        .I2(w_Paddle_size[2]),
        .I3(w_Paddle_size[1]),
        .I4(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I5(\r_p2_paddle_pos[5]_i_11_n_0 ),
        .O(\r_p2_paddle_pos_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFAEFF)) 
    \r_p2_paddle_pos[5]_i_9 
       (.I0(\r_p2_paddle_pos[5]_i_7 ),
        .I1(r_Game_state[1]),
        .I2(r_Game_state[0]),
        .I3(r_play_state[0]),
        .I4(r_play_state[1]),
        .O(\r_Game_state_reg[1]_3 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_p2_paddle_pos_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p2_paddle_pos),
        .D(\r_p2_paddle_pos_reg[3]_1 [0]),
        .Q(\r_p2_paddle_pos_reg[5]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_p2_paddle_pos_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p2_paddle_pos),
        .D(\r_p2_paddle_pos_reg[3]_1 [1]),
        .Q(\r_p2_paddle_pos_reg[5]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_p2_paddle_pos_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p2_paddle_pos),
        .D(\r_p2_paddle_pos_reg[3]_1 [2]),
        .Q(\r_p2_paddle_pos_reg[5]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_p2_paddle_pos_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p2_paddle_pos),
        .D(\r_p2_paddle_pos_reg[3]_1 [3]),
        .Q(\r_p2_paddle_pos_reg[5]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_p2_paddle_pos_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p2_paddle_pos),
        .D(\r_p2_paddle_pos[4]_i_1_n_0 ),
        .Q(\r_p2_paddle_pos_reg[5]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_p2_paddle_pos_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_p2_paddle_pos),
        .D(\r_p2_paddle_pos[5]_i_2_n_0 ),
        .Q(\r_p2_paddle_pos_reg[5]_0 [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA02AAA200F00000)) 
    \r_p2_score[0]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\r_Game_state_reg[0]_1 ),
        .I2(r_play_state[1]),
        .I3(r_play_state[0]),
        .I4(r_point_p2_reg_n_0),
        .I5(w_P2_score[0]),
        .O(\r_p2_score[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEEFFFEFEEE00)) 
    \r_p2_score[1]_i_1 
       (.I0(\r_p2_score[1]_i_2_n_0 ),
        .I1(\r_p2_score[1]_i_3_n_0 ),
        .I2(w_P2_score[0]),
        .I3(\r_ball_rate[23]_i_1_n_0 ),
        .I4(\r_p2_score[1]_i_4_n_0 ),
        .I5(w_P2_score[1]),
        .O(\r_p2_score[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hA2A0A2A2)) 
    \r_p2_score[1]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[1]),
        .I2(r_play_state[0]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .O(\r_p2_score[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \r_p2_score[1]_i_3 
       (.I0(r_point_p2_reg_n_0),
        .I1(r_play_state[1]),
        .I2(r_play_state[0]),
        .I3(CPU_RESETN_IBUF),
        .O(\r_p2_score[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \r_p2_score[1]_i_4 
       (.I0(r_point_p2_reg_n_0),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .O(\r_p2_score[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_p2_score_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_p2_score[0]_i_1_n_0 ),
        .Q(w_P2_score[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_p2_score_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_p2_score[1]_i_1_n_0 ),
        .Q(w_P2_score[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF780)) 
    \r_pad1_new_pos[0]_i_1 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I3(CPU_RESETN_IBUF),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF780)) 
    \r_pad1_new_pos[1]_i_1 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I3(CPU_RESETN_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF780)) 
    \r_pad1_new_pos[2]_i_1 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I3(CPU_RESETN_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF780)) 
    \r_pad1_new_pos[3]_i_1 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I3(CPU_RESETN_IBUF),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF780)) 
    \r_pad1_new_pos[4]_i_1 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(w_P1_paddle[4]),
        .I3(CPU_RESETN_IBUF),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \r_pad1_new_pos[5]_i_1 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(CPU_RESETN_IBUF),
        .O(\r_pad1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF780)) 
    \r_pad1_new_pos[5]_i_2 
       (.I0(\r_p1_paddle_pos_reg[0]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(w_P1_paddle[5]),
        .I3(CPU_RESETN_IBUF),
        .O(D[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \r_pad1_new_pos[5]_i_3 
       (.I0(\r_pad1_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad1_new_pos[5]_i_6_n_0 ),
        .O(\r_p1_paddle_pos_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_pad1_new_pos[5]_i_5 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I1(\r_pad1_new_pos[5]_i_3_0 [0]),
        .I2(\r_pad1_new_pos[5]_i_3_0 [2]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I4(\r_pad1_new_pos[5]_i_3_0 [1]),
        .I5(\r_p1_paddle_pos_reg[3]_0 [1]),
        .O(\r_pad1_new_pos[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_pad1_new_pos[5]_i_6 
       (.I0(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I1(\r_pad1_new_pos[5]_i_3_0 [3]),
        .I2(\r_pad1_new_pos[5]_i_3_0 [4]),
        .I3(w_P1_paddle[4]),
        .I4(\r_pad1_new_pos[5]_i_3_0 [5]),
        .I5(w_P1_paddle[5]),
        .O(\r_pad1_new_pos[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \r_pad2_new_pos[5]_i_2 
       (.I0(\r_pad2_state_reg[1]_0 ),
        .I1(\r_pad2_new_pos_reg[0] ),
        .I2(CPU_RESETN_IBUF),
        .O(\r_pad2_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFF2)) 
    \r_pad2_new_pos[5]_i_4 
       (.I0(\r_p2_paddle_pos_reg[0]_0 ),
        .I1(\r_p2_paddle_pos_reg[3]_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_new_pos_reg[5] ),
        .O(\r_pad2_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \r_pad2_new_pos[5]_i_7 
       (.I0(\r_p2_paddle_pos_reg[0]_0 ),
        .I1(\r_p2_paddle_pos_reg[3]_0 ),
        .I2(\r_pad2_new_pos_reg[5] ),
        .I3(\r_pad2_new_pos_reg[5]_0 ),
        .I4(CPU_RESETN_IBUF),
        .O(\r_pad2_state_reg[0] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_pad2_step[3]_i_3 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [0]),
        .I1(r_old2_pos__0[0]),
        .I2(r_old2_pos__0[2]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [2]),
        .I4(r_old2_pos__0[1]),
        .I5(\r_p2_paddle_pos_reg[5]_0 [1]),
        .O(\r_p2_paddle_pos_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_pad2_step[3]_i_4 
       (.I0(\r_p2_paddle_pos_reg[5]_0 [3]),
        .I1(r_old2_pos__0[3]),
        .I2(r_old2_pos__0[4]),
        .I3(\r_p2_paddle_pos_reg[5]_0 [4]),
        .I4(r_old2_pos__0[5]),
        .I5(\r_p2_paddle_pos_reg[5]_0 [5]),
        .O(\r_p2_paddle_pos_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFC4444000C4444)) 
    r_point_p2_i_1
       (.I0(r_point_p2_i_2_n_0),
        .I1(r_point_p2_i_3_n_0),
        .I2(r_point_p2_i_4_n_0),
        .I3(\FSM_sequential_r_play_state[1]_i_4_n_0 ),
        .I4(CPU_RESETN_IBUF),
        .I5(r_point_p2_reg_n_0),
        .O(r_point_p2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFBFBFBFFFFFFFF)) 
    r_point_p2_i_2
       (.I0(\r_Game_state_reg[1]_2 ),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(r_ball_dir_x23_in),
        .I4(r_ball_dir_x24_in),
        .I5(\r_ball_dir_x1_inferred__3/i___47_carry__1_n_3 ),
        .O(r_point_p2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    r_point_p2_i_3
       (.I0(\r_ball_pos_x[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(r_point_p2_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFAEFF)) 
    r_point_p2_i_4
       (.I0(\FSM_sequential_r_play_state[1]_i_3_n_0 ),
        .I1(r_Game_state[1]),
        .I2(r_Game_state[0]),
        .I3(r_play_state[0]),
        .I4(r_play_state[1]),
        .O(r_point_p2_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_point_p2_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_point_p2_i_1_n_0),
        .Q(r_point_p2_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FD00000F000F00)) 
    \r_serve_pattern[0]_i_1 
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .I2(r_play_state[0]),
        .I3(r_play_state[1]),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_serve_pattern_reg_n_0_[0] ),
        .O(\r_serve_pattern[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F305000A000A00)) 
    \r_serve_pattern[1]_i_1 
       (.I0(\r_serve_pattern_reg_n_0_[0] ),
        .I1(\r_Game_state_reg[0]_1 ),
        .I2(r_play_state[0]),
        .I3(r_play_state[1]),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_serve_pattern_reg_n_0_[1] ),
        .O(\r_serve_pattern[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_serve_pattern[1]_i_2 
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .O(\r_Game_state_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_serve_pattern_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_serve_pattern[0]_i_1_n_0 ),
        .Q(\r_serve_pattern_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_serve_pattern_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_serve_pattern[1]_i_1_n_0 ),
        .Q(\r_serve_pattern_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFF7F7F7F007F7F)) 
    r_winner_i_1
       (.I0(r_winner_reg),
        .I1(w_P1_score[1]),
        .I2(w_P1_score[0]),
        .I3(r_Game_state__0),
        .I4(CPU_RESETN_IBUF),
        .I5(r_winner_reg_0),
        .O(\r_p1_score_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hEEE20000EEE2EEE2)) 
    \r_y_step_count[0]_i_1 
       (.I0(\r_y_step_count_reg_n_0_[0] ),
        .I1(r_y_step_count),
        .I2(\r_y_step_count[0]_i_3_n_0 ),
        .I3(\r_y_step_count[0]_i_4_n_0 ),
        .I4(r_play_state[0]),
        .I5(r_play_state[1]),
        .O(\r_y_step_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D00044FFFFFFFF)) 
    \r_y_step_count[0]_i_2 
       (.I0(r_Game_state[1]),
        .I1(r_Game_state[0]),
        .I2(r_ball_count1_carry__1_n_0),
        .I3(r_play_state[1]),
        .I4(r_play_state[0]),
        .I5(CPU_RESETN_IBUF),
        .O(r_y_step_count));
  LUT6 #(
    .INIT(64'hF1FF000001000000)) 
    \r_y_step_count[0]_i_3 
       (.I0(\r_y_step_count_reg_n_0_[0] ),
        .I1(\r_y_step_count_reg_n_0_[2] ),
        .I2(\r_Game_state_reg[1]_2 ),
        .I3(r_ball_count1_carry__1_n_0),
        .I4(r_ball_dir_x_i_3_n_0),
        .I5(CPU_RESETN_IBUF),
        .O(\r_y_step_count[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hA2A0A2A2)) 
    \r_y_step_count[0]_i_4 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_play_state[0]),
        .I2(r_play_state[1]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .O(\r_y_step_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888000008080088)) 
    \r_y_step_count[2]_i_1 
       (.I0(\r_y_step_count_reg_n_0_[2] ),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_y_step_count[2]_i_2_n_0 ),
        .I3(\r_Game_state_reg[0]_1 ),
        .I4(r_play_state[0]),
        .I5(r_play_state[1]),
        .O(\r_y_step_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \r_y_step_count[2]_i_2 
       (.I0(r_ball_count1_carry__1_n_0),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .O(\r_y_step_count[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_y_step_count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_y_step_count[0]_i_1_n_0 ),
        .Q(\r_y_step_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_y_step_count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_y_step_count[2]_i_1_n_0 ),
        .Q(\r_y_step_count_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module game_module
   (w_TX_count,
    w_TX_send,
    r_Blink,
    w_idle_state,
    Q,
    \r_p1_paddle_pos_reg[3] ,
    \r_p2_paddle_pos_reg[3] ,
    \r_p2_paddle_pos_reg[1] ,
    \r_p2_paddle_pos_reg[2] ,
    \r_p2_paddle_pos_reg[0] ,
    \r_Paddle_size_reg[2] ,
    \r_p1_paddle_pos_reg[1] ,
    \r_p1_paddle_pos_reg[2] ,
    \r_p1_paddle_pos_reg[0] ,
    \r_Paddle_size_reg[2]_0 ,
    \r_Message_index_reg[0] ,
    \r_Message_index_reg[2] ,
    \r_Message_index_reg[0]_0 ,
    \FSM_sequential_r_play_state_reg[0] ,
    r_Game_state,
    \r_Game_state_reg[1] ,
    \r_p2_paddle_pos_reg[1]_0 ,
    \r_p1_paddle_pos_reg[1]_0 ,
    \o_uart_buffer_reg[78] ,
    \o_Anodes_reg[7] ,
    \o_Cathodes_reg[6] ,
    \o_LED17_bgr_reg[0] ,
    \o_LED16_bgr_reg[0] ,
    CLK100MHZ_IBUF_BUFG,
    CPU_RESETN_IBUF,
    \o_uart_buffer_reg[54] ,
    w_TX_ready,
    r_send_pending_reg,
    w_Paddle_size,
    \o_uart_buffer[49]_i_13 ,
    \r_p2_paddle_pos_reg[5] ,
    \r_p2_paddle_pos_reg[4] ,
    \r_p2_paddle_pos_reg[5]_0 ,
    \r_p2_paddle_pos_reg[0]_0 ,
    \r_p2_paddle_pos[5]_i_6 ,
    r_ball_dir_x2_carry,
    \r_ball_dir_x2_inferred__0/i__carry ,
    \r_ball_dir_x2_inferred__0/i__carry_0 ,
    \r_p1_paddle_pos_reg[5] ,
    \r_p1_paddle_pos_reg[4] ,
    \r_p1_paddle_pos_reg[5]_0 ,
    \r_p1_paddle_pos_reg[0]_0 ,
    \r_p1_paddle_pos[5]_i_6 ,
    \r_ball_dir_x2_inferred__1/i__carry ,
    \r_ball_dir_x2_inferred__2/i__carry ,
    \r_ball_dir_x2_inferred__2/i__carry_0 ,
    \o_Cathodes_reg[6]_0 ,
    \o_Cathodes_reg[4] ,
    \o_Cathodes[1]_i_5 ,
    \o_Cathodes_reg[5] ,
    \o_Cathodes_reg[0] ,
    \o_Cathodes_reg[0]_0 ,
    \o_Cathodes_reg[3] ,
    \o_Cathodes_reg[1] ,
    w_Mod_display_state,
    w_New_key,
    \FSM_sequential_r_Game_state_reg[0]_0 ,
    \r_p2_paddle_pos[5]_i_7 ,
    D,
    \r_ball_rate_reg[23] ,
    \r_ball_rate_reg[19] ,
    \r_ball_rate_reg[18] ,
    \r_ball_rate_reg[17] ,
    \r_ball_rate_reg[14] ,
    \r_ball_rate_reg[9] ,
    \r_ball_rate_reg[6] ,
    \r_ball_rate_reg[4] ,
    \r_p1_paddle_pos_reg[3]_0 ,
    \r_game_value_reg[1]_0 ,
    \r_game_value_reg[1]_1 );
  output [0:0]w_TX_count;
  output w_TX_send;
  output r_Blink;
  output w_idle_state;
  output [1:0]Q;
  output [3:0]\r_p1_paddle_pos_reg[3] ;
  output [3:0]\r_p2_paddle_pos_reg[3] ;
  output \r_p2_paddle_pos_reg[1] ;
  output \r_p2_paddle_pos_reg[2] ;
  output \r_p2_paddle_pos_reg[0] ;
  output \r_Paddle_size_reg[2] ;
  output \r_p1_paddle_pos_reg[1] ;
  output \r_p1_paddle_pos_reg[2] ;
  output \r_p1_paddle_pos_reg[0] ;
  output \r_Paddle_size_reg[2]_0 ;
  output \r_Message_index_reg[0] ;
  output \r_Message_index_reg[2] ;
  output \r_Message_index_reg[0]_0 ;
  output \FSM_sequential_r_play_state_reg[0] ;
  output [1:0]r_Game_state;
  output \r_Game_state_reg[1] ;
  output \r_p2_paddle_pos_reg[1]_0 ;
  output \r_p1_paddle_pos_reg[1]_0 ;
  output [69:0]\o_uart_buffer_reg[78] ;
  output [7:0]\o_Anodes_reg[7] ;
  output [6:0]\o_Cathodes_reg[6] ;
  output [2:0]\o_LED17_bgr_reg[0] ;
  output [2:0]\o_LED16_bgr_reg[0] ;
  input CLK100MHZ_IBUF_BUFG;
  input CPU_RESETN_IBUF;
  input \o_uart_buffer_reg[54] ;
  input w_TX_ready;
  input r_send_pending_reg;
  input [2:0]w_Paddle_size;
  input \o_uart_buffer[49]_i_13 ;
  input \r_p2_paddle_pos_reg[5] ;
  input \r_p2_paddle_pos_reg[4] ;
  input \r_p2_paddle_pos_reg[5]_0 ;
  input \r_p2_paddle_pos_reg[0]_0 ;
  input \r_p2_paddle_pos[5]_i_6 ;
  input r_ball_dir_x2_carry;
  input \r_ball_dir_x2_inferred__0/i__carry ;
  input \r_ball_dir_x2_inferred__0/i__carry_0 ;
  input \r_p1_paddle_pos_reg[5] ;
  input \r_p1_paddle_pos_reg[4] ;
  input \r_p1_paddle_pos_reg[5]_0 ;
  input \r_p1_paddle_pos_reg[0]_0 ;
  input \r_p1_paddle_pos[5]_i_6 ;
  input \r_ball_dir_x2_inferred__1/i__carry ;
  input \r_ball_dir_x2_inferred__2/i__carry ;
  input \r_ball_dir_x2_inferred__2/i__carry_0 ;
  input [3:0]\o_Cathodes_reg[6]_0 ;
  input \o_Cathodes_reg[4] ;
  input \o_Cathodes[1]_i_5 ;
  input \o_Cathodes_reg[5] ;
  input \o_Cathodes_reg[0] ;
  input \o_Cathodes_reg[0]_0 ;
  input \o_Cathodes_reg[3] ;
  input \o_Cathodes_reg[1] ;
  input [1:0]w_Mod_display_state;
  input w_New_key;
  input \FSM_sequential_r_Game_state_reg[0]_0 ;
  input \r_p2_paddle_pos[5]_i_7 ;
  input [3:0]D;
  input [16:0]\r_ball_rate_reg[23] ;
  input \r_ball_rate_reg[19] ;
  input \r_ball_rate_reg[18] ;
  input \r_ball_rate_reg[17] ;
  input \r_ball_rate_reg[14] ;
  input \r_ball_rate_reg[9] ;
  input \r_ball_rate_reg[6] ;
  input \r_ball_rate_reg[4] ;
  input [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  input \r_game_value_reg[1]_0 ;
  input \r_game_value_reg[1]_1 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire [3:0]D;
  wire \FSM_sequential_r_Game_state_reg[0]_0 ;
  wire \FSM_sequential_r_play_state_reg[0] ;
  wire [1:0]Q;
  wire game_mechanics_inst_n_10;
  wire game_mechanics_inst_n_100;
  wire game_mechanics_inst_n_101;
  wire game_mechanics_inst_n_102;
  wire game_mechanics_inst_n_11;
  wire game_mechanics_inst_n_12;
  wire game_mechanics_inst_n_13;
  wire game_mechanics_inst_n_14;
  wire game_mechanics_inst_n_15;
  wire game_mechanics_inst_n_16;
  wire game_mechanics_inst_n_17;
  wire game_mechanics_inst_n_18;
  wire game_mechanics_inst_n_19;
  wire game_mechanics_inst_n_2;
  wire game_mechanics_inst_n_20;
  wire game_mechanics_inst_n_21;
  wire game_mechanics_inst_n_22;
  wire game_mechanics_inst_n_28;
  wire game_mechanics_inst_n_29;
  wire game_mechanics_inst_n_30;
  wire game_mechanics_inst_n_31;
  wire game_mechanics_inst_n_32;
  wire game_mechanics_inst_n_33;
  wire game_mechanics_inst_n_34;
  wire game_mechanics_inst_n_35;
  wire game_mechanics_inst_n_36;
  wire game_mechanics_inst_n_37;
  wire game_mechanics_inst_n_38;
  wire game_mechanics_inst_n_39;
  wire game_mechanics_inst_n_44;
  wire game_mechanics_inst_n_51;
  wire game_mechanics_inst_n_52;
  wire game_mechanics_inst_n_53;
  wire game_mechanics_inst_n_54;
  wire game_mechanics_inst_n_55;
  wire game_mechanics_inst_n_56;
  wire game_mechanics_inst_n_65;
  wire game_mechanics_inst_n_70;
  wire game_mechanics_inst_n_72;
  wire game_mechanics_inst_n_73;
  wire game_mechanics_inst_n_76;
  wire game_mechanics_inst_n_77;
  wire game_mechanics_inst_n_78;
  wire game_mechanics_inst_n_79;
  wire game_mechanics_inst_n_80;
  wire game_mechanics_inst_n_81;
  wire game_mechanics_inst_n_82;
  wire game_mechanics_inst_n_83;
  wire game_mechanics_inst_n_84;
  wire game_mechanics_inst_n_85;
  wire game_mechanics_inst_n_86;
  wire game_mechanics_inst_n_87;
  wire game_mechanics_inst_n_88;
  wire game_mechanics_inst_n_89;
  wire game_mechanics_inst_n_93;
  wire game_mechanics_inst_n_94;
  wire game_mechanics_inst_n_95;
  wire game_mechanics_inst_n_96;
  wire game_mechanics_inst_n_97;
  wire game_mechanics_inst_n_98;
  wire game_mechanics_inst_n_99;
  wire game_render_inst_n_10;
  wire game_render_inst_n_11;
  wire game_render_inst_n_12;
  wire game_render_inst_n_13;
  wire game_render_inst_n_14;
  wire game_render_inst_n_15;
  wire game_render_inst_n_18;
  wire game_render_inst_n_19;
  wire game_render_inst_n_20;
  wire game_render_inst_n_21;
  wire game_render_inst_n_22;
  wire game_render_inst_n_23;
  wire game_render_inst_n_3;
  wire game_render_inst_n_30;
  wire game_render_inst_n_31;
  wire local_game_display_inst_n_1;
  wire local_game_display_inst_n_5;
  wire local_game_display_inst_n_6;
  wire local_game_display_inst_n_7;
  wire local_game_display_inst_n_8;
  wire local_game_display_inst_n_9;
  wire [7:0]\o_Anodes_reg[7] ;
  wire \o_Cathodes[1]_i_5 ;
  wire \o_Cathodes_reg[0] ;
  wire \o_Cathodes_reg[0]_0 ;
  wire \o_Cathodes_reg[1] ;
  wire \o_Cathodes_reg[3] ;
  wire \o_Cathodes_reg[4] ;
  wire \o_Cathodes_reg[5] ;
  wire [6:0]\o_Cathodes_reg[6] ;
  wire [3:0]\o_Cathodes_reg[6]_0 ;
  wire [2:0]\o_LED16_bgr_reg[0] ;
  wire [2:0]\o_LED17_bgr_reg[0] ;
  wire o_idle_state_i_1_n_0;
  wire \o_uart_buffer[49]_i_13 ;
  wire \o_uart_buffer_reg[54] ;
  wire [69:0]\o_uart_buffer_reg[78] ;
  wire r_Blink;
  wire [1:0]r_Game_state;
  wire [1:0]r_Game_state_0;
  wire [1:1]r_Game_state__0;
  wire \r_Game_state_reg[1] ;
  wire \r_Message_index_reg[0] ;
  wire \r_Message_index_reg[0]_0 ;
  wire \r_Message_index_reg[2] ;
  wire \r_Paddle_size_reg[2] ;
  wire \r_Paddle_size_reg[2]_0 ;
  wire r_ball_dir_x2_carry;
  wire \r_ball_dir_x2_inferred__0/i__carry ;
  wire \r_ball_dir_x2_inferred__0/i__carry_0 ;
  wire \r_ball_dir_x2_inferred__1/i__carry ;
  wire \r_ball_dir_x2_inferred__2/i__carry ;
  wire \r_ball_dir_x2_inferred__2/i__carry_0 ;
  wire [2:0]r_ball_pre_x;
  wire \r_ball_rate_reg[14] ;
  wire \r_ball_rate_reg[17] ;
  wire \r_ball_rate_reg[18] ;
  wire \r_ball_rate_reg[19] ;
  wire [16:0]\r_ball_rate_reg[23] ;
  wire \r_ball_rate_reg[4] ;
  wire \r_ball_rate_reg[6] ;
  wire \r_ball_rate_reg[9] ;
  wire [1:1]r_ball_state;
  wire [0:0]r_game_value;
  wire \r_game_value[0]_i_1_n_0 ;
  wire \r_game_value[1]_i_1_n_0 ;
  wire \r_game_value[1]_i_2_n_0 ;
  wire \r_game_value_reg[1]_0 ;
  wire \r_game_value_reg[1]_1 ;
  wire \r_game_value_reg_n_0_[0] ;
  wire \r_game_value_reg_n_0_[1] ;
  wire [5:0]r_old1_pos__0;
  wire [5:0]r_old2_pos__0;
  wire \r_p1_paddle_pos[5]_i_6 ;
  wire \r_p1_paddle_pos_reg[0] ;
  wire \r_p1_paddle_pos_reg[0]_0 ;
  wire \r_p1_paddle_pos_reg[1] ;
  wire \r_p1_paddle_pos_reg[1]_0 ;
  wire \r_p1_paddle_pos_reg[2] ;
  wire [3:0]\r_p1_paddle_pos_reg[3] ;
  wire [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  wire \r_p1_paddle_pos_reg[4] ;
  wire \r_p1_paddle_pos_reg[5] ;
  wire \r_p1_paddle_pos_reg[5]_0 ;
  wire \r_p2_paddle_pos[5]_i_6 ;
  wire \r_p2_paddle_pos[5]_i_7 ;
  wire \r_p2_paddle_pos_reg[0] ;
  wire \r_p2_paddle_pos_reg[0]_0 ;
  wire \r_p2_paddle_pos_reg[1] ;
  wire \r_p2_paddle_pos_reg[1]_0 ;
  wire \r_p2_paddle_pos_reg[2] ;
  wire [3:0]\r_p2_paddle_pos_reg[3] ;
  wire \r_p2_paddle_pos_reg[4] ;
  wire \r_p2_paddle_pos_reg[5] ;
  wire \r_p2_paddle_pos_reg[5]_0 ;
  wire [1:0]r_screen_render_state;
  wire r_send_pending_i_1_n_0;
  wire r_send_pending_reg;
  wire [0:0]r_wait_state;
  wire \r_wait_state[0]_i_1_n_0 ;
  wire r_winner_i_2_n_0;
  wire r_winner_reg_n_0;
  wire [7:0]w_Ball_pos_x;
  wire [5:0]w_Ball_pos_y;
  wire [1:0]w_Mod_display_state;
  wire w_New_key;
  wire [1:0]w_P1_score;
  wire [5:4]w_P2_paddle;
  wire [1:0]w_P2_score;
  wire [2:0]w_Paddle_size;
  wire [0:0]w_TX_count;
  wire w_TX_ready;
  wire w_TX_send;
  wire w_idle_state;

  (* FSM_ENCODED_STATES = "playing:01,game_over:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_Game_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(game_mechanics_inst_n_102),
        .Q(r_Game_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "playing:01,game_over:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_Game_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(game_mechanics_inst_n_101),
        .Q(r_Game_state[1]),
        .R(1'b0));
  game_mechanics game_mechanics_inst
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CO(game_mechanics_inst_n_2),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D({game_mechanics_inst_n_93,game_mechanics_inst_n_94,game_mechanics_inst_n_95,game_mechanics_inst_n_96,game_mechanics_inst_n_97,game_mechanics_inst_n_98}),
        .E(game_mechanics_inst_n_85),
        .\FSM_sequential_r_Game_state_reg[0] (game_mechanics_inst_n_101),
        .\FSM_sequential_r_Game_state_reg[0]_0 (game_mechanics_inst_n_102),
        .\FSM_sequential_r_Game_state_reg[0]_1 (r_Game_state[0]),
        .\FSM_sequential_r_Game_state_reg[0]_2 (r_Game_state[1]),
        .\FSM_sequential_r_Game_state_reg[0]_3 (\FSM_sequential_r_Game_state_reg[0]_0 ),
        .\FSM_sequential_r_play_state_reg[0]_0 (\FSM_sequential_r_play_state_reg[0] ),
        .Q({w_Ball_pos_x[7:3],w_Ball_pos_x[1:0]}),
        .\o_Cathodes[3]_i_4 (local_game_display_inst_n_5),
        .\o_Cathodes[3]_i_4_0 (local_game_display_inst_n_6),
        .\o_Cathodes[3]_i_9 (local_game_display_inst_n_1),
        .\o_Cathodes[5]_i_5 (local_game_display_inst_n_7),
        .\o_Cathodes[5]_i_5_0 (\r_Message_index_reg[2] ),
        .\o_Cathodes[5]_i_5_1 (local_game_display_inst_n_8),
        .\o_Cathodes_reg[2]_i_6 (local_game_display_inst_n_9),
        .o_Received_new_byte_reg(game_mechanics_inst_n_73),
        .\o_uart_buffer_reg[32] (game_render_inst_n_20),
        .\o_uart_buffer_reg[32]_0 (game_render_inst_n_3),
        .\o_uart_buffer_reg[4] (game_render_inst_n_15),
        .r_Game_state(r_Game_state_0),
        .r_Game_state__0(r_Game_state__0),
        .\r_Game_state_reg[0]_0 (game_mechanics_inst_n_36),
        .\r_Game_state_reg[0]_1 (game_mechanics_inst_n_70),
        .\r_Game_state_reg[1]_0 (game_mechanics_inst_n_33),
        .\r_Game_state_reg[1]_1 (game_mechanics_inst_n_34),
        .\r_Game_state_reg[1]_2 (game_mechanics_inst_n_72),
        .\r_Game_state_reg[1]_3 (\r_Game_state_reg[1] ),
        .\r_Game_state_reg[1]_4 (\r_game_value_reg_n_0_[1] ),
        .\r_Game_state_reg[1]_5 (\r_game_value_reg_n_0_[0] ),
        .\r_Paddle_size_reg[2] (\r_Paddle_size_reg[2] ),
        .\r_Paddle_size_reg[2]_0 (\r_Paddle_size_reg[2]_0 ),
        .r_ball_dir_x2_carry_0(r_ball_dir_x2_carry),
        .\r_ball_dir_x2_inferred__0/i__carry_0 (\r_ball_dir_x2_inferred__0/i__carry ),
        .\r_ball_dir_x2_inferred__0/i__carry_1 (\r_ball_dir_x2_inferred__0/i__carry_0 ),
        .\r_ball_dir_x2_inferred__1/i__carry_0 (\r_ball_dir_x2_inferred__1/i__carry ),
        .\r_ball_dir_x2_inferred__2/i__carry_0 (\r_ball_dir_x2_inferred__2/i__carry ),
        .\r_ball_dir_x2_inferred__2/i__carry_1 (\r_ball_dir_x2_inferred__2/i__carry_0 ),
        .\r_ball_pos_x_reg[0]_0 (game_mechanics_inst_n_14),
        .\r_ball_pos_x_reg[1]_0 (game_mechanics_inst_n_15),
        .\r_ball_pos_x_reg[1]_1 (game_mechanics_inst_n_38),
        .\r_ball_pos_x_reg[1]_2 (game_mechanics_inst_n_84),
        .\r_ball_pos_x_reg[2]_0 (game_mechanics_inst_n_10),
        .\r_ball_pos_x_reg[2]_1 (game_mechanics_inst_n_16),
        .\r_ball_pos_x_reg[3]_0 (game_mechanics_inst_n_11),
        .\r_ball_pos_x_reg[3]_1 (game_mechanics_inst_n_13),
        .\r_ball_pos_x_reg[3]_2 (game_mechanics_inst_n_17),
        .\r_ball_pos_x_reg[4]_0 (game_mechanics_inst_n_18),
        .\r_ball_pos_x_reg[5]_0 (game_mechanics_inst_n_19),
        .\r_ball_pos_x_reg[5]_1 (game_mechanics_inst_n_83),
        .\r_ball_pos_x_reg[6]_0 (game_mechanics_inst_n_20),
        .\r_ball_pos_x_reg[7]_0 (game_mechanics_inst_n_21),
        .\r_ball_pos_y_reg[0]_0 (game_mechanics_inst_n_22),
        .\r_ball_pos_y_reg[1]_0 (game_mechanics_inst_n_28),
        .\r_ball_pos_y_reg[1]_1 (game_mechanics_inst_n_37),
        .\r_ball_pos_y_reg[2]_0 (game_mechanics_inst_n_29),
        .\r_ball_pos_y_reg[2]_1 (game_mechanics_inst_n_56),
        .\r_ball_pos_y_reg[3]_0 (game_mechanics_inst_n_30),
        .\r_ball_pos_y_reg[4]_0 (game_mechanics_inst_n_31),
        .\r_ball_pos_y_reg[4]_1 (game_mechanics_inst_n_54),
        .\r_ball_pos_y_reg[5]_0 ({w_Ball_pos_y[5:3],w_Ball_pos_y[1:0]}),
        .\r_ball_pos_y_reg[5]_1 (game_mechanics_inst_n_32),
        .\r_ball_pos_y_reg[5]_2 (game_mechanics_inst_n_55),
        .r_ball_pre_x(r_ball_pre_x),
        .\r_ball_pre_x_reg[0] (game_render_inst_n_10),
        .\r_ball_rate_reg[14]_0 (\r_ball_rate_reg[14] ),
        .\r_ball_rate_reg[17]_0 (\r_ball_rate_reg[17] ),
        .\r_ball_rate_reg[18]_0 (\r_ball_rate_reg[18] ),
        .\r_ball_rate_reg[19]_0 (\r_ball_rate_reg[19] ),
        .\r_ball_rate_reg[23]_0 (\r_ball_rate_reg[23] ),
        .\r_ball_rate_reg[4]_0 (\r_ball_rate_reg[4] ),
        .\r_ball_rate_reg[6]_0 (\r_ball_rate_reg[6] ),
        .\r_ball_rate_reg[9]_0 (\r_ball_rate_reg[9] ),
        .r_ball_state(r_ball_state),
        .\r_ball_state[0]_i_2 (game_render_inst_n_30),
        .\r_ball_state[0]_i_2_0 (game_render_inst_n_31),
        .\r_ball_state[0]_i_2_1 (game_render_inst_n_23),
        .\r_ball_state_reg[1] (game_mechanics_inst_n_12),
        .\r_ball_state_reg[1]_0 (game_mechanics_inst_n_52),
        .\r_ball_state_reg[1]_1 (game_mechanics_inst_n_53),
        .\r_ball_state_reg[1]_2 (game_mechanics_inst_n_88),
        .\r_ball_state_reg[1]_3 (w_TX_send),
        .r_game_value(r_game_value),
        .\r_message_index_reg[1] (\o_uart_buffer_reg[54] ),
        .r_old2_pos__0(r_old2_pos__0),
        .\r_p1_paddle_pos[5]_i_6 (\r_p1_paddle_pos[5]_i_6 ),
        .\r_p1_paddle_pos_reg[0]_0 (game_mechanics_inst_n_39),
        .\r_p1_paddle_pos_reg[0]_1 (\r_p1_paddle_pos_reg[0] ),
        .\r_p1_paddle_pos_reg[0]_2 (\r_p1_paddle_pos_reg[0]_0 ),
        .\r_p1_paddle_pos_reg[1]_0 (\r_p1_paddle_pos_reg[1] ),
        .\r_p1_paddle_pos_reg[1]_1 (\r_p1_paddle_pos_reg[1]_0 ),
        .\r_p1_paddle_pos_reg[2]_0 (\r_p1_paddle_pos_reg[2] ),
        .\r_p1_paddle_pos_reg[3]_0 (\r_p1_paddle_pos_reg[3] ),
        .\r_p1_paddle_pos_reg[3]_1 (\r_p1_paddle_pos_reg[3]_0 ),
        .\r_p1_paddle_pos_reg[4]_0 (\r_p1_paddle_pos_reg[4] ),
        .\r_p1_paddle_pos_reg[5]_0 (\r_p1_paddle_pos_reg[5] ),
        .\r_p1_paddle_pos_reg[5]_1 (\r_p1_paddle_pos_reg[5]_0 ),
        .\r_p1_score_reg[0]_0 (game_mechanics_inst_n_65),
        .\r_p1_score_reg[0]_1 (game_mechanics_inst_n_78),
        .\r_p1_score_reg[1]_0 (game_mechanics_inst_n_80),
        .\r_p1_score_reg[1]_1 (game_mechanics_inst_n_89),
        .\r_p2_paddle_pos[5]_i_6 (\r_p2_paddle_pos[5]_i_6 ),
        .\r_p2_paddle_pos[5]_i_7 (\r_p2_paddle_pos[5]_i_7 ),
        .\r_p2_paddle_pos_reg[0]_0 (game_mechanics_inst_n_51),
        .\r_p2_paddle_pos_reg[0]_1 (\r_p2_paddle_pos_reg[0] ),
        .\r_p2_paddle_pos_reg[0]_2 (\r_p2_paddle_pos_reg[0]_0 ),
        .\r_p2_paddle_pos_reg[1]_0 (\r_p2_paddle_pos_reg[1] ),
        .\r_p2_paddle_pos_reg[1]_1 (\r_p2_paddle_pos_reg[1]_0 ),
        .\r_p2_paddle_pos_reg[2]_0 (\r_p2_paddle_pos_reg[2] ),
        .\r_p2_paddle_pos_reg[3]_0 (game_mechanics_inst_n_44),
        .\r_p2_paddle_pos_reg[3]_1 (D),
        .\r_p2_paddle_pos_reg[4]_0 (\r_p2_paddle_pos_reg[4] ),
        .\r_p2_paddle_pos_reg[5]_0 ({w_P2_paddle,\r_p2_paddle_pos_reg[3] }),
        .\r_p2_paddle_pos_reg[5]_1 (\r_p2_paddle_pos_reg[5] ),
        .\r_p2_paddle_pos_reg[5]_2 (\r_p2_paddle_pos_reg[5]_0 ),
        .\r_p2_score_reg[0]_0 (game_mechanics_inst_n_76),
        .\r_p2_score_reg[0]_1 (game_mechanics_inst_n_77),
        .\r_p2_score_reg[0]_2 (game_mechanics_inst_n_79),
        .\r_p2_score_reg[0]_3 (game_mechanics_inst_n_81),
        .\r_p2_score_reg[0]_4 (game_mechanics_inst_n_82),
        .\r_pad1_new_pos[5]_i_3_0 (r_old1_pos__0),
        .\r_pad1_state_reg[0] (game_mechanics_inst_n_99),
        .\r_pad2_new_pos_reg[0] (game_render_inst_n_19),
        .\r_pad2_new_pos_reg[5] (game_render_inst_n_14),
        .\r_pad2_new_pos_reg[5]_0 (game_render_inst_n_13),
        .\r_pad2_state_reg[0] (game_mechanics_inst_n_100),
        .\r_pad2_state_reg[1] (game_mechanics_inst_n_86),
        .\r_pad2_state_reg[1]_0 (game_mechanics_inst_n_87),
        .r_screen_render_state(r_screen_render_state),
        .r_send_pending_reg(game_mechanics_inst_n_35),
        .r_winner_reg(r_winner_i_2_n_0),
        .r_winner_reg_0(r_winner_reg_n_0),
        .w_New_key(w_New_key),
        .w_P1_score(w_P1_score),
        .w_P2_score(w_P2_score),
        .w_Paddle_size(w_Paddle_size),
        .w_TX_ready(w_TX_ready));
  message_prep game_render_inst
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CO(game_mechanics_inst_n_2),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D({game_mechanics_inst_n_93,game_mechanics_inst_n_94,game_mechanics_inst_n_95,game_mechanics_inst_n_96,game_mechanics_inst_n_97,game_mechanics_inst_n_98}),
        .E(game_mechanics_inst_n_99),
        .Q({w_Ball_pos_x[7:3],w_Ball_pos_x[1:0]}),
        .\o_uart_buffer[49]_i_13_0 (\o_uart_buffer[49]_i_13 ),
        .\o_uart_buffer[57]_i_2_0 (game_mechanics_inst_n_56),
        .\o_uart_buffer[58]_i_2_0 (game_mechanics_inst_n_55),
        .\o_uart_buffer_reg[16]_0 (r_winner_reg_n_0),
        .\o_uart_buffer_reg[17]_0 (game_mechanics_inst_n_13),
        .\o_uart_buffer_reg[18]_0 (game_mechanics_inst_n_84),
        .\o_uart_buffer_reg[19]_0 (game_mechanics_inst_n_12),
        .\o_uart_buffer_reg[25]_0 (game_mechanics_inst_n_83),
        .\o_uart_buffer_reg[26]_0 (game_mechanics_inst_n_10),
        .\o_uart_buffer_reg[27]_0 (game_mechanics_inst_n_34),
        .\o_uart_buffer_reg[27]_1 (game_mechanics_inst_n_11),
        .\o_uart_buffer_reg[32]_0 (game_mechanics_inst_n_88),
        .\o_uart_buffer_reg[49]_0 (game_mechanics_inst_n_54),
        .\o_uart_buffer_reg[4]_0 (game_mechanics_inst_n_33),
        .\o_uart_buffer_reg[50]_0 (game_mechanics_inst_n_53),
        .\o_uart_buffer_reg[51]_0 (game_mechanics_inst_n_52),
        .\o_uart_buffer_reg[54]_0 (\o_uart_buffer_reg[54] ),
        .\o_uart_buffer_reg[78]_0 (\o_uart_buffer_reg[78] ),
        .r_Game_state(r_Game_state_0),
        .\r_Game_state_reg[1] (game_render_inst_n_18),
        .\r_Pad_chars_reg[3]_0 (game_mechanics_inst_n_70),
        .\r_ball_pre_x_reg[0]_0 (game_mechanics_inst_n_72),
        .\r_ball_pre_x_reg[0]_1 (game_mechanics_inst_n_14),
        .\r_ball_pre_x_reg[1]_0 (game_mechanics_inst_n_15),
        .\r_ball_pre_x_reg[2]_0 (r_ball_pre_x),
        .\r_ball_pre_x_reg[2]_1 (game_mechanics_inst_n_16),
        .\r_ball_pre_x_reg[3]_0 (game_mechanics_inst_n_17),
        .\r_ball_pre_x_reg[4]_0 (game_mechanics_inst_n_18),
        .\r_ball_pre_x_reg[5]_0 (game_mechanics_inst_n_19),
        .\r_ball_pre_x_reg[6]_0 (game_mechanics_inst_n_20),
        .\r_ball_pre_x_reg[7]_0 (game_mechanics_inst_n_21),
        .\r_ball_pre_y_reg[0]_0 (game_render_inst_n_23),
        .\r_ball_pre_y_reg[0]_1 (game_mechanics_inst_n_22),
        .\r_ball_pre_y_reg[1]_0 (game_render_inst_n_30),
        .\r_ball_pre_y_reg[1]_1 (game_mechanics_inst_n_28),
        .\r_ball_pre_y_reg[2]_0 (game_render_inst_n_31),
        .\r_ball_pre_y_reg[2]_1 (game_mechanics_inst_n_29),
        .\r_ball_pre_y_reg[3]_0 (game_mechanics_inst_n_30),
        .\r_ball_pre_y_reg[4]_0 (game_mechanics_inst_n_31),
        .\r_ball_pre_y_reg[5]_0 (game_mechanics_inst_n_32),
        .\r_ball_state[0]_i_2_0 ({w_Ball_pos_y[5:3],w_Ball_pos_y[1:0]}),
        .\r_ball_state_reg[0]_0 (game_render_inst_n_15),
        .\r_ball_state_reg[0]_1 (game_render_inst_n_20),
        .\r_ball_state_reg[0]_2 (game_mechanics_inst_n_36),
        .\r_ball_state_reg[0]_3 (game_mechanics_inst_n_38),
        .\r_ball_state_reg[0]_4 (game_mechanics_inst_n_37),
        .\r_ball_state_reg[1]_0 (r_ball_state),
        .\r_ball_state_reg[1]_1 (game_render_inst_n_10),
        .\r_ball_state_reg[1]_2 (game_mechanics_inst_n_35),
        .\r_message_index_reg[1]_0 (game_mechanics_inst_n_85),
        .\r_old1_pos_reg[5]_0 (r_old1_pos__0),
        .r_old2_pos__0(r_old2_pos__0),
        .\r_pad1_new_pos_reg[1]_0 (Q),
        .\r_pad1_state_reg[0]_0 (game_render_inst_n_19),
        .\r_pad1_state_reg[1]_0 (game_render_inst_n_21),
        .\r_pad1_step_reg[0]_0 (game_mechanics_inst_n_39),
        .\r_pad2_new_pos_reg[0]_0 (game_mechanics_inst_n_86),
        .\r_pad2_new_pos_reg[5]_0 (game_mechanics_inst_n_100),
        .\r_pad2_new_pos_reg[5]_1 ({w_P2_paddle,\r_p2_paddle_pos_reg[3] }),
        .\r_pad2_state_reg[0]_0 (game_render_inst_n_14),
        .\r_pad2_state_reg[0]_1 (game_mechanics_inst_n_87),
        .\r_pad2_state_reg[1]_0 (game_render_inst_n_3),
        .\r_pad2_state_reg[1]_1 (game_render_inst_n_13),
        .\r_pad2_state_reg[1]_2 (game_render_inst_n_22),
        .\r_pad2_step_reg[0]_0 (game_mechanics_inst_n_51),
        .\r_pad2_step_reg[0]_1 (game_mechanics_inst_n_44),
        .r_screen_render_state(r_screen_render_state),
        .r_send_pending_reg_0(w_TX_send),
        .r_send_pending_reg_1(game_render_inst_n_11),
        .r_send_pending_reg_2(game_render_inst_n_12),
        .r_send_pending_reg_3(r_send_pending_i_1_n_0),
        .r_send_pending_reg_4(r_send_pending_reg),
        .r_wait_state(r_wait_state),
        .\r_wait_state_reg[0]_0 (\r_wait_state[0]_i_1_n_0 ),
        .w_Paddle_size(w_Paddle_size),
        .w_TX_count(w_TX_count),
        .w_TX_ready(w_TX_ready));
  display_output local_game_display_inst
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .\FSM_sequential_r_display_state_reg[2]_0 (\r_game_value_reg_n_0_[0] ),
        .\FSM_sequential_r_display_state_reg[2]_1 (\r_game_value_reg_n_0_[1] ),
        .\o_Anodes_reg[7]_0 (\o_Anodes_reg[7] ),
        .\o_Cathodes[0]_i_7_0 (game_mechanics_inst_n_82),
        .\o_Cathodes[1]_i_5_0 (\o_Cathodes[1]_i_5 ),
        .\o_Cathodes[2]_i_2_0 (game_mechanics_inst_n_76),
        .\o_Cathodes[2]_i_2_1 (game_mechanics_inst_n_77),
        .\o_Cathodes[3]_i_2_0 (game_mechanics_inst_n_80),
        .\o_Cathodes[5]_i_3_0 (game_mechanics_inst_n_65),
        .\o_Cathodes_reg[0]_0 (\o_Cathodes_reg[0] ),
        .\o_Cathodes_reg[0]_1 (\o_Cathodes_reg[0]_0 ),
        .\o_Cathodes_reg[1]_0 (\o_Cathodes_reg[1] ),
        .\o_Cathodes_reg[3]_0 (\o_Cathodes_reg[3] ),
        .\o_Cathodes_reg[4]_0 (\o_Cathodes_reg[4] ),
        .\o_Cathodes_reg[4]_1 (game_mechanics_inst_n_81),
        .\o_Cathodes_reg[4]_2 (game_mechanics_inst_n_79),
        .\o_Cathodes_reg[5]_0 (\o_Cathodes_reg[5] ),
        .\o_Cathodes_reg[5]_1 (game_mechanics_inst_n_78),
        .\o_Cathodes_reg[6]_0 (\o_Cathodes_reg[6] ),
        .\o_Cathodes_reg[6]_1 (\o_Cathodes_reg[6]_0 ),
        .\o_LED16_bgr_reg[0]_0 (\o_LED16_bgr_reg[0] ),
        .\o_LED17_bgr_reg[0]_0 (\o_LED17_bgr_reg[0] ),
        .r_Blink_reg_0(r_Blink),
        .\r_Message_index_reg[0]_0 (\r_Message_index_reg[0] ),
        .\r_Message_index_reg[0]_1 (\r_Message_index_reg[0]_0 ),
        .\r_Message_index_reg[0]_2 (local_game_display_inst_n_9),
        .\r_Message_index_reg[1]_0 (local_game_display_inst_n_1),
        .\r_Message_index_reg[1]_1 (local_game_display_inst_n_6),
        .\r_Message_index_reg[1]_2 (local_game_display_inst_n_7),
        .\r_Message_index_reg[2]_0 (\r_Message_index_reg[2] ),
        .\r_Scroll_offset_reg[0]_0 (local_game_display_inst_n_5),
        .\r_p2_score_reg[0] (local_game_display_inst_n_8),
        .w_Mod_display_state(w_Mod_display_state),
        .w_P1_score(w_P1_score),
        .w_P2_score(w_P2_score),
        .w_Paddle_size(w_Paddle_size));
  LUT6 #(
    .INIT(64'h5555555511115111)) 
    o_idle_state_i_1
       (.I0(\FSM_sequential_r_Game_state_reg[0]_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_Game_state[1]),
        .I3(w_New_key),
        .I4(r_Game_state[0]),
        .I5(w_idle_state),
        .O(o_idle_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_idle_state_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(o_idle_state_i_1_n_0),
        .Q(w_idle_state),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_game_value[0]_i_1 
       (.I0(game_mechanics_inst_n_73),
        .I1(r_game_value),
        .I2(\r_game_value_reg_n_0_[0] ),
        .O(\r_game_value[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBFFBBBABB00)) 
    \r_game_value[1]_i_1 
       (.I0(\r_game_value[1]_i_2_n_0 ),
        .I1(\r_game_value_reg[1]_0 ),
        .I2(CPU_RESETN_IBUF),
        .I3(r_Game_state__0),
        .I4(\r_game_value_reg[1]_1 ),
        .I5(\r_game_value_reg_n_0_[1] ),
        .O(\r_game_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_game_value[1]_i_2 
       (.I0(w_New_key),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .I3(CPU_RESETN_IBUF),
        .O(\r_game_value[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_game_value_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_game_value[0]_i_1_n_0 ),
        .Q(\r_game_value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_game_value_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_game_value[1]_i_1_n_0 ),
        .Q(\r_game_value_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFD0FFFFFFD00000)) 
    r_send_pending_i_1
       (.I0(game_render_inst_n_22),
        .I1(game_render_inst_n_21),
        .I2(game_render_inst_n_18),
        .I3(game_render_inst_n_11),
        .I4(game_render_inst_n_12),
        .I5(w_TX_send),
        .O(r_send_pending_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCCCCC4400000050)) 
    \r_wait_state[0]_i_1 
       (.I0(game_mechanics_inst_n_70),
        .I1(CPU_RESETN_IBUF),
        .I2(\o_uart_buffer_reg[54] ),
        .I3(r_screen_render_state[0]),
        .I4(r_screen_render_state[1]),
        .I5(r_wait_state),
        .O(\r_wait_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    r_winner_i_2
       (.I0(r_Game_state[0]),
        .I1(r_Game_state[1]),
        .O(r_winner_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_winner_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(game_mechanics_inst_n_89),
        .Q(r_winner_reg_n_0),
        .R(1'b0));
endmodule

module message_prep
   (w_TX_count,
    r_wait_state,
    r_send_pending_reg_0,
    \r_pad2_state_reg[1]_0 ,
    \r_ball_state_reg[1]_0 ,
    r_screen_render_state,
    \r_ball_pre_x_reg[2]_0 ,
    \r_ball_state_reg[1]_1 ,
    r_send_pending_reg_1,
    r_send_pending_reg_2,
    \r_pad2_state_reg[1]_1 ,
    \r_pad2_state_reg[0]_0 ,
    \r_ball_state_reg[0]_0 ,
    \r_pad1_new_pos_reg[1]_0 ,
    \r_Game_state_reg[1] ,
    \r_pad1_state_reg[0]_0 ,
    \r_ball_state_reg[0]_1 ,
    \r_pad1_state_reg[1]_0 ,
    \r_pad2_state_reg[1]_2 ,
    \r_ball_pre_y_reg[0]_0 ,
    r_old2_pos__0,
    \r_ball_pre_y_reg[1]_0 ,
    \r_ball_pre_y_reg[2]_0 ,
    \r_old1_pos_reg[5]_0 ,
    \o_uart_buffer_reg[78]_0 ,
    CLK100MHZ_IBUF_BUFG,
    \r_wait_state_reg[0]_0 ,
    r_send_pending_reg_3,
    Q,
    CPU_RESETN_IBUF,
    \o_uart_buffer_reg[17]_0 ,
    w_TX_ready,
    \o_uart_buffer_reg[54]_0 ,
    \o_uart_buffer_reg[27]_0 ,
    \o_uart_buffer_reg[32]_0 ,
    \o_uart_buffer_reg[26]_0 ,
    \o_uart_buffer_reg[25]_0 ,
    \o_uart_buffer_reg[27]_1 ,
    \o_uart_buffer_reg[19]_0 ,
    r_Game_state,
    \r_ball_pre_x_reg[0]_0 ,
    \o_uart_buffer_reg[16]_0 ,
    \r_ball_state_reg[1]_2 ,
    r_send_pending_reg_4,
    \o_uart_buffer_reg[51]_0 ,
    \o_uart_buffer_reg[50]_0 ,
    \r_ball_state_reg[0]_2 ,
    \r_pad1_step_reg[0]_0 ,
    \r_ball_state[0]_i_2_0 ,
    \r_Pad_chars_reg[3]_0 ,
    \r_pad2_new_pos_reg[5]_0 ,
    CO,
    \o_uart_buffer_reg[49]_0 ,
    \o_uart_buffer[57]_i_2_0 ,
    \o_uart_buffer[58]_i_2_0 ,
    \r_ball_state_reg[0]_3 ,
    \r_ball_state_reg[0]_4 ,
    w_Paddle_size,
    \o_uart_buffer[49]_i_13_0 ,
    \o_uart_buffer_reg[18]_0 ,
    \o_uart_buffer_reg[4]_0 ,
    \r_pad2_state_reg[0]_1 ,
    \r_pad2_new_pos_reg[5]_1 ,
    \r_pad2_step_reg[0]_0 ,
    \r_pad2_step_reg[0]_1 ,
    \r_ball_pre_y_reg[5]_0 ,
    \r_ball_pre_y_reg[4]_0 ,
    \r_ball_pre_y_reg[3]_0 ,
    \r_ball_pre_y_reg[2]_1 ,
    \r_ball_pre_y_reg[1]_1 ,
    \r_ball_pre_y_reg[0]_1 ,
    \r_ball_pre_x_reg[7]_0 ,
    \r_ball_pre_x_reg[6]_0 ,
    \r_ball_pre_x_reg[5]_0 ,
    \r_ball_pre_x_reg[4]_0 ,
    \r_ball_pre_x_reg[3]_0 ,
    \r_ball_pre_x_reg[2]_1 ,
    \r_ball_pre_x_reg[1]_0 ,
    \r_ball_pre_x_reg[0]_1 ,
    E,
    D,
    \r_pad2_new_pos_reg[0]_0 ,
    \r_message_index_reg[1]_0 );
  output [0:0]w_TX_count;
  output [0:0]r_wait_state;
  output r_send_pending_reg_0;
  output \r_pad2_state_reg[1]_0 ;
  output [0:0]\r_ball_state_reg[1]_0 ;
  output [1:0]r_screen_render_state;
  output [2:0]\r_ball_pre_x_reg[2]_0 ;
  output \r_ball_state_reg[1]_1 ;
  output r_send_pending_reg_1;
  output r_send_pending_reg_2;
  output \r_pad2_state_reg[1]_1 ;
  output \r_pad2_state_reg[0]_0 ;
  output \r_ball_state_reg[0]_0 ;
  output [1:0]\r_pad1_new_pos_reg[1]_0 ;
  output \r_Game_state_reg[1] ;
  output \r_pad1_state_reg[0]_0 ;
  output \r_ball_state_reg[0]_1 ;
  output \r_pad1_state_reg[1]_0 ;
  output \r_pad2_state_reg[1]_2 ;
  output \r_ball_pre_y_reg[0]_0 ;
  output [5:0]r_old2_pos__0;
  output \r_ball_pre_y_reg[1]_0 ;
  output \r_ball_pre_y_reg[2]_0 ;
  output [5:0]\r_old1_pos_reg[5]_0 ;
  output [69:0]\o_uart_buffer_reg[78]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input \r_wait_state_reg[0]_0 ;
  input r_send_pending_reg_3;
  input [6:0]Q;
  input CPU_RESETN_IBUF;
  input \o_uart_buffer_reg[17]_0 ;
  input w_TX_ready;
  input \o_uart_buffer_reg[54]_0 ;
  input \o_uart_buffer_reg[27]_0 ;
  input \o_uart_buffer_reg[32]_0 ;
  input \o_uart_buffer_reg[26]_0 ;
  input \o_uart_buffer_reg[25]_0 ;
  input \o_uart_buffer_reg[27]_1 ;
  input \o_uart_buffer_reg[19]_0 ;
  input [1:0]r_Game_state;
  input \r_ball_pre_x_reg[0]_0 ;
  input \o_uart_buffer_reg[16]_0 ;
  input \r_ball_state_reg[1]_2 ;
  input r_send_pending_reg_4;
  input \o_uart_buffer_reg[51]_0 ;
  input \o_uart_buffer_reg[50]_0 ;
  input \r_ball_state_reg[0]_2 ;
  input \r_pad1_step_reg[0]_0 ;
  input [4:0]\r_ball_state[0]_i_2_0 ;
  input \r_Pad_chars_reg[3]_0 ;
  input \r_pad2_new_pos_reg[5]_0 ;
  input [0:0]CO;
  input \o_uart_buffer_reg[49]_0 ;
  input \o_uart_buffer[57]_i_2_0 ;
  input \o_uart_buffer[58]_i_2_0 ;
  input \r_ball_state_reg[0]_3 ;
  input \r_ball_state_reg[0]_4 ;
  input [2:0]w_Paddle_size;
  input \o_uart_buffer[49]_i_13_0 ;
  input \o_uart_buffer_reg[18]_0 ;
  input \o_uart_buffer_reg[4]_0 ;
  input \r_pad2_state_reg[0]_1 ;
  input [5:0]\r_pad2_new_pos_reg[5]_1 ;
  input \r_pad2_step_reg[0]_0 ;
  input \r_pad2_step_reg[0]_1 ;
  input \r_ball_pre_y_reg[5]_0 ;
  input \r_ball_pre_y_reg[4]_0 ;
  input \r_ball_pre_y_reg[3]_0 ;
  input \r_ball_pre_y_reg[2]_1 ;
  input \r_ball_pre_y_reg[1]_1 ;
  input \r_ball_pre_y_reg[0]_1 ;
  input \r_ball_pre_x_reg[7]_0 ;
  input \r_ball_pre_x_reg[6]_0 ;
  input \r_ball_pre_x_reg[5]_0 ;
  input \r_ball_pre_x_reg[4]_0 ;
  input \r_ball_pre_x_reg[3]_0 ;
  input \r_ball_pre_x_reg[2]_1 ;
  input \r_ball_pre_x_reg[1]_0 ;
  input \r_ball_pre_x_reg[0]_1 ;
  input [0:0]E;
  input [5:0]D;
  input \r_pad2_new_pos_reg[0]_0 ;
  input [0:0]\r_message_index_reg[1]_0 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]CO;
  wire CPU_RESETN_IBUF;
  wire [5:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \o_uart_buffer[0]_i_1_n_0 ;
  wire \o_uart_buffer[0]_i_2_n_0 ;
  wire \o_uart_buffer[10]_i_1_n_0 ;
  wire \o_uart_buffer[11]_i_1_n_0 ;
  wire \o_uart_buffer[11]_i_2_n_0 ;
  wire \o_uart_buffer[12]_i_1_n_0 ;
  wire \o_uart_buffer[12]_i_2_n_0 ;
  wire \o_uart_buffer[13]_i_1_n_0 ;
  wire \o_uart_buffer[13]_i_2_n_0 ;
  wire \o_uart_buffer[14]_i_1_n_0 ;
  wire \o_uart_buffer[14]_i_2_n_0 ;
  wire \o_uart_buffer[16]_i_1_n_0 ;
  wire \o_uart_buffer[16]_i_2_n_0 ;
  wire \o_uart_buffer[16]_i_3_n_0 ;
  wire \o_uart_buffer[16]_i_4_n_0 ;
  wire \o_uart_buffer[16]_i_5_n_0 ;
  wire \o_uart_buffer[17]_i_10_n_0 ;
  wire \o_uart_buffer[17]_i_1_n_0 ;
  wire \o_uart_buffer[17]_i_2_n_0 ;
  wire \o_uart_buffer[17]_i_4_n_0 ;
  wire \o_uart_buffer[17]_i_7_n_0 ;
  wire \o_uart_buffer[17]_i_8_n_0 ;
  wire \o_uart_buffer[17]_i_9_n_0 ;
  wire \o_uart_buffer[18]_i_1_n_0 ;
  wire \o_uart_buffer[18]_i_3_n_0 ;
  wire \o_uart_buffer[18]_i_4_n_0 ;
  wire \o_uart_buffer[19]_i_1_n_0 ;
  wire \o_uart_buffer[19]_i_2_n_0 ;
  wire \o_uart_buffer[19]_i_3_n_0 ;
  wire \o_uart_buffer[19]_i_4_n_0 ;
  wire \o_uart_buffer[19]_i_6_n_0 ;
  wire \o_uart_buffer[19]_i_7_n_0 ;
  wire \o_uart_buffer[1]_i_1_n_0 ;
  wire \o_uart_buffer[1]_i_2_n_0 ;
  wire \o_uart_buffer[1]_i_3_n_0 ;
  wire \o_uart_buffer[20]_i_1_n_0 ;
  wire \o_uart_buffer[20]_i_2_n_0 ;
  wire \o_uart_buffer[21]_i_1_n_0 ;
  wire \o_uart_buffer[21]_i_2_n_0 ;
  wire \o_uart_buffer[22]_i_1_n_0 ;
  wire \o_uart_buffer[22]_i_2_n_0 ;
  wire \o_uart_buffer[24]_i_1_n_0 ;
  wire \o_uart_buffer[24]_i_2_n_0 ;
  wire \o_uart_buffer[24]_i_3_n_0 ;
  wire \o_uart_buffer[24]_i_4_n_0 ;
  wire \o_uart_buffer[24]_i_5_n_0 ;
  wire \o_uart_buffer[24]_i_6_n_0 ;
  wire \o_uart_buffer[25]_i_1_n_0 ;
  wire \o_uart_buffer[25]_i_2_n_0 ;
  wire \o_uart_buffer[25]_i_3_n_0 ;
  wire \o_uart_buffer[25]_i_5_n_0 ;
  wire \o_uart_buffer[25]_i_6_n_0 ;
  wire \o_uart_buffer[26]_i_1_n_0 ;
  wire \o_uart_buffer[26]_i_2_n_0 ;
  wire \o_uart_buffer[26]_i_3_n_0 ;
  wire \o_uart_buffer[26]_i_5_n_0 ;
  wire \o_uart_buffer[27]_i_10_n_0 ;
  wire \o_uart_buffer[27]_i_1_n_0 ;
  wire \o_uart_buffer[27]_i_3_n_0 ;
  wire \o_uart_buffer[27]_i_4_n_0 ;
  wire \o_uart_buffer[27]_i_6_n_0 ;
  wire \o_uart_buffer[27]_i_7_n_0 ;
  wire \o_uart_buffer[27]_i_8_n_0 ;
  wire \o_uart_buffer[27]_i_9_n_0 ;
  wire \o_uart_buffer[28]_i_1_n_0 ;
  wire \o_uart_buffer[28]_i_2_n_0 ;
  wire \o_uart_buffer[29]_i_1_n_0 ;
  wire \o_uart_buffer[29]_i_2_n_0 ;
  wire \o_uart_buffer[2]_i_1_n_0 ;
  wire \o_uart_buffer[2]_i_2_n_0 ;
  wire \o_uart_buffer[30]_i_1_n_0 ;
  wire \o_uart_buffer[30]_i_2_n_0 ;
  wire \o_uart_buffer[32]_i_1_n_0 ;
  wire \o_uart_buffer[32]_i_3_n_0 ;
  wire \o_uart_buffer[33]_i_12_n_0 ;
  wire \o_uart_buffer[33]_i_13_n_0 ;
  wire \o_uart_buffer[33]_i_1_n_0 ;
  wire \o_uart_buffer[33]_i_20_n_0 ;
  wire \o_uart_buffer[33]_i_21_n_0 ;
  wire \o_uart_buffer[33]_i_22_n_0 ;
  wire \o_uart_buffer[33]_i_23_n_0 ;
  wire \o_uart_buffer[33]_i_24_n_0 ;
  wire \o_uart_buffer[33]_i_25_n_0 ;
  wire \o_uart_buffer[33]_i_2_n_0 ;
  wire \o_uart_buffer[33]_i_3_n_0 ;
  wire \o_uart_buffer[33]_i_4_n_0 ;
  wire \o_uart_buffer[33]_i_5_n_0 ;
  wire \o_uart_buffer[34]_i_1_n_0 ;
  wire \o_uart_buffer[34]_i_2_n_0 ;
  wire \o_uart_buffer[35]_i_1_n_0 ;
  wire \o_uart_buffer[35]_i_2_n_0 ;
  wire \o_uart_buffer[36]_i_1_n_0 ;
  wire \o_uart_buffer[36]_i_2_n_0 ;
  wire \o_uart_buffer[36]_i_3_n_0 ;
  wire \o_uart_buffer[37]_i_1_n_0 ;
  wire \o_uart_buffer[37]_i_2_n_0 ;
  wire \o_uart_buffer[38]_i_1_n_0 ;
  wire \o_uart_buffer[38]_i_2_n_0 ;
  wire \o_uart_buffer[38]_i_3_n_0 ;
  wire \o_uart_buffer[3]_i_1_n_0 ;
  wire \o_uart_buffer[3]_i_2_n_0 ;
  wire \o_uart_buffer[40]_i_1_n_0 ;
  wire \o_uart_buffer[40]_i_2_n_0 ;
  wire \o_uart_buffer[41]_i_1_n_0 ;
  wire \o_uart_buffer[41]_i_2_n_0 ;
  wire \o_uart_buffer[42]_i_1_n_0 ;
  wire \o_uart_buffer[42]_i_2_n_0 ;
  wire \o_uart_buffer[43]_i_1_n_0 ;
  wire \o_uart_buffer[43]_i_2_n_0 ;
  wire \o_uart_buffer[43]_i_3_n_0 ;
  wire \o_uart_buffer[44]_i_1_n_0 ;
  wire \o_uart_buffer[44]_i_2_n_0 ;
  wire \o_uart_buffer[45]_i_1_n_0 ;
  wire \o_uart_buffer[45]_i_2_n_0 ;
  wire \o_uart_buffer[46]_i_1_n_0 ;
  wire \o_uart_buffer[46]_i_2_n_0 ;
  wire \o_uart_buffer[46]_i_3_n_0 ;
  wire \o_uart_buffer[46]_i_4_n_0 ;
  wire \o_uart_buffer[48]_i_1_n_0 ;
  wire \o_uart_buffer[48]_i_2_n_0 ;
  wire \o_uart_buffer[48]_i_3_n_0 ;
  wire \o_uart_buffer[48]_i_4_n_0 ;
  wire \o_uart_buffer[48]_i_5_n_0 ;
  wire \o_uart_buffer[48]_i_6_n_0 ;
  wire \o_uart_buffer[48]_i_7_n_0 ;
  wire \o_uart_buffer[49]_i_10_n_0 ;
  wire \o_uart_buffer[49]_i_11_n_0 ;
  wire \o_uart_buffer[49]_i_12_n_0 ;
  wire \o_uart_buffer[49]_i_13_0 ;
  wire \o_uart_buffer[49]_i_13_n_0 ;
  wire \o_uart_buffer[49]_i_15_n_0 ;
  wire \o_uart_buffer[49]_i_16_n_0 ;
  wire \o_uart_buffer[49]_i_17_n_0 ;
  wire \o_uart_buffer[49]_i_18_n_0 ;
  wire \o_uart_buffer[49]_i_19_n_0 ;
  wire \o_uart_buffer[49]_i_1_n_0 ;
  wire \o_uart_buffer[49]_i_20_n_0 ;
  wire \o_uart_buffer[49]_i_21_n_0 ;
  wire \o_uart_buffer[49]_i_22_n_0 ;
  wire \o_uart_buffer[49]_i_2_n_0 ;
  wire \o_uart_buffer[49]_i_3_n_0 ;
  wire \o_uart_buffer[49]_i_4_n_0 ;
  wire \o_uart_buffer[49]_i_5_n_0 ;
  wire \o_uart_buffer[49]_i_6_n_0 ;
  wire \o_uart_buffer[49]_i_7_n_0 ;
  wire \o_uart_buffer[49]_i_8_n_0 ;
  wire \o_uart_buffer[49]_i_9_n_0 ;
  wire \o_uart_buffer[4]_i_1_n_0 ;
  wire \o_uart_buffer[4]_i_2_n_0 ;
  wire \o_uart_buffer[4]_i_4_n_0 ;
  wire \o_uart_buffer[50]_i_10_n_0 ;
  wire \o_uart_buffer[50]_i_11_n_0 ;
  wire \o_uart_buffer[50]_i_12_n_0 ;
  wire \o_uart_buffer[50]_i_13_n_0 ;
  wire \o_uart_buffer[50]_i_14_n_0 ;
  wire \o_uart_buffer[50]_i_15_n_0 ;
  wire \o_uart_buffer[50]_i_16_n_0 ;
  wire \o_uart_buffer[50]_i_17_n_0 ;
  wire \o_uart_buffer[50]_i_18_n_0 ;
  wire \o_uart_buffer[50]_i_1_n_0 ;
  wire \o_uart_buffer[50]_i_2_n_0 ;
  wire \o_uart_buffer[50]_i_3_n_0 ;
  wire \o_uart_buffer[50]_i_4_n_0 ;
  wire \o_uart_buffer[50]_i_5_n_0 ;
  wire \o_uart_buffer[50]_i_6_n_0 ;
  wire \o_uart_buffer[50]_i_7_n_0 ;
  wire \o_uart_buffer[50]_i_8_n_0 ;
  wire \o_uart_buffer[51]_i_10_n_0 ;
  wire \o_uart_buffer[51]_i_11_n_0 ;
  wire \o_uart_buffer[51]_i_12_n_0 ;
  wire \o_uart_buffer[51]_i_13_n_0 ;
  wire \o_uart_buffer[51]_i_14_n_0 ;
  wire \o_uart_buffer[51]_i_16_n_0 ;
  wire \o_uart_buffer[51]_i_17_n_0 ;
  wire \o_uart_buffer[51]_i_18_n_0 ;
  wire \o_uart_buffer[51]_i_19_n_0 ;
  wire \o_uart_buffer[51]_i_1_n_0 ;
  wire \o_uart_buffer[51]_i_20_n_0 ;
  wire \o_uart_buffer[51]_i_21_n_0 ;
  wire \o_uart_buffer[51]_i_22_n_0 ;
  wire \o_uart_buffer[51]_i_23_n_0 ;
  wire \o_uart_buffer[51]_i_24_n_0 ;
  wire \o_uart_buffer[51]_i_25_n_0 ;
  wire \o_uart_buffer[51]_i_26_n_0 ;
  wire \o_uart_buffer[51]_i_27_n_0 ;
  wire \o_uart_buffer[51]_i_28_n_0 ;
  wire \o_uart_buffer[51]_i_29_n_0 ;
  wire \o_uart_buffer[51]_i_2_n_0 ;
  wire \o_uart_buffer[51]_i_3_n_0 ;
  wire \o_uart_buffer[51]_i_4_n_0 ;
  wire \o_uart_buffer[51]_i_5_n_0 ;
  wire \o_uart_buffer[51]_i_6_n_0 ;
  wire \o_uart_buffer[51]_i_7_n_0 ;
  wire \o_uart_buffer[51]_i_8_n_0 ;
  wire \o_uart_buffer[51]_i_9_n_0 ;
  wire \o_uart_buffer[52]_i_1_n_0 ;
  wire \o_uart_buffer[52]_i_2_n_0 ;
  wire \o_uart_buffer[52]_i_3_n_0 ;
  wire \o_uart_buffer[52]_i_4_n_0 ;
  wire \o_uart_buffer[53]_i_1_n_0 ;
  wire \o_uart_buffer[53]_i_2_n_0 ;
  wire \o_uart_buffer[53]_i_3_n_0 ;
  wire \o_uart_buffer[54]_i_1_n_0 ;
  wire \o_uart_buffer[54]_i_2_n_0 ;
  wire \o_uart_buffer[56]_i_10_n_0 ;
  wire \o_uart_buffer[56]_i_11_n_0 ;
  wire \o_uart_buffer[56]_i_12_n_0 ;
  wire \o_uart_buffer[56]_i_13_n_0 ;
  wire \o_uart_buffer[56]_i_14_n_0 ;
  wire \o_uart_buffer[56]_i_15_n_0 ;
  wire \o_uart_buffer[56]_i_16_n_0 ;
  wire \o_uart_buffer[56]_i_17_n_0 ;
  wire \o_uart_buffer[56]_i_18_n_0 ;
  wire \o_uart_buffer[56]_i_19_n_0 ;
  wire \o_uart_buffer[56]_i_1_n_0 ;
  wire \o_uart_buffer[56]_i_20_n_0 ;
  wire \o_uart_buffer[56]_i_2_n_0 ;
  wire \o_uart_buffer[56]_i_3_n_0 ;
  wire \o_uart_buffer[56]_i_4_n_0 ;
  wire \o_uart_buffer[56]_i_5_n_0 ;
  wire \o_uart_buffer[56]_i_7_n_0 ;
  wire \o_uart_buffer[56]_i_8_n_0 ;
  wire \o_uart_buffer[56]_i_9_n_0 ;
  wire \o_uart_buffer[57]_i_10_n_0 ;
  wire \o_uart_buffer[57]_i_11_n_0 ;
  wire \o_uart_buffer[57]_i_12_n_0 ;
  wire \o_uart_buffer[57]_i_13_n_0 ;
  wire \o_uart_buffer[57]_i_14_n_0 ;
  wire \o_uart_buffer[57]_i_15_n_0 ;
  wire \o_uart_buffer[57]_i_16_n_0 ;
  wire \o_uart_buffer[57]_i_17_n_0 ;
  wire \o_uart_buffer[57]_i_18_n_0 ;
  wire \o_uart_buffer[57]_i_19_n_0 ;
  wire \o_uart_buffer[57]_i_1_n_0 ;
  wire \o_uart_buffer[57]_i_20_n_0 ;
  wire \o_uart_buffer[57]_i_21_n_0 ;
  wire \o_uart_buffer[57]_i_22_n_0 ;
  wire \o_uart_buffer[57]_i_24_n_0 ;
  wire \o_uart_buffer[57]_i_25_n_0 ;
  wire \o_uart_buffer[57]_i_26_n_0 ;
  wire \o_uart_buffer[57]_i_27_n_0 ;
  wire \o_uart_buffer[57]_i_28_n_0 ;
  wire \o_uart_buffer[57]_i_29_n_0 ;
  wire \o_uart_buffer[57]_i_2_0 ;
  wire \o_uart_buffer[57]_i_2_n_0 ;
  wire \o_uart_buffer[57]_i_30_n_0 ;
  wire \o_uart_buffer[57]_i_31_n_0 ;
  wire \o_uart_buffer[57]_i_32_n_0 ;
  wire \o_uart_buffer[57]_i_33_n_0 ;
  wire \o_uart_buffer[57]_i_34_n_0 ;
  wire \o_uart_buffer[57]_i_35_n_0 ;
  wire \o_uart_buffer[57]_i_36_n_0 ;
  wire \o_uart_buffer[57]_i_3_n_0 ;
  wire \o_uart_buffer[57]_i_4_n_0 ;
  wire \o_uart_buffer[57]_i_5_n_0 ;
  wire \o_uart_buffer[57]_i_6_n_0 ;
  wire \o_uart_buffer[57]_i_7_n_0 ;
  wire \o_uart_buffer[57]_i_8_n_0 ;
  wire \o_uart_buffer[57]_i_9_n_0 ;
  wire \o_uart_buffer[58]_i_10_n_0 ;
  wire \o_uart_buffer[58]_i_11_n_0 ;
  wire \o_uart_buffer[58]_i_12_n_0 ;
  wire \o_uart_buffer[58]_i_13_n_0 ;
  wire \o_uart_buffer[58]_i_14_n_0 ;
  wire \o_uart_buffer[58]_i_15_n_0 ;
  wire \o_uart_buffer[58]_i_17_n_0 ;
  wire \o_uart_buffer[58]_i_18_n_0 ;
  wire \o_uart_buffer[58]_i_19_n_0 ;
  wire \o_uart_buffer[58]_i_1_n_0 ;
  wire \o_uart_buffer[58]_i_20_n_0 ;
  wire \o_uart_buffer[58]_i_21_n_0 ;
  wire \o_uart_buffer[58]_i_22_n_0 ;
  wire \o_uart_buffer[58]_i_23_n_0 ;
  wire \o_uart_buffer[58]_i_24_n_0 ;
  wire \o_uart_buffer[58]_i_25_n_0 ;
  wire \o_uart_buffer[58]_i_26_n_0 ;
  wire \o_uart_buffer[58]_i_27_n_0 ;
  wire \o_uart_buffer[58]_i_28_n_0 ;
  wire \o_uart_buffer[58]_i_2_0 ;
  wire \o_uart_buffer[58]_i_2_n_0 ;
  wire \o_uart_buffer[58]_i_3_n_0 ;
  wire \o_uart_buffer[58]_i_4_n_0 ;
  wire \o_uart_buffer[58]_i_5_n_0 ;
  wire \o_uart_buffer[58]_i_6_n_0 ;
  wire \o_uart_buffer[58]_i_7_n_0 ;
  wire \o_uart_buffer[58]_i_8_n_0 ;
  wire \o_uart_buffer[58]_i_9_n_0 ;
  wire \o_uart_buffer[59]_i_1_n_0 ;
  wire \o_uart_buffer[59]_i_2_n_0 ;
  wire \o_uart_buffer[5]_i_1_n_0 ;
  wire \o_uart_buffer[5]_i_3_n_0 ;
  wire \o_uart_buffer[5]_i_4_n_0 ;
  wire \o_uart_buffer[5]_i_5_n_0 ;
  wire \o_uart_buffer[60]_i_1_n_0 ;
  wire \o_uart_buffer[60]_i_2_n_0 ;
  wire \o_uart_buffer[61]_i_1_n_0 ;
  wire \o_uart_buffer[61]_i_2_n_0 ;
  wire \o_uart_buffer[62]_i_1_n_0 ;
  wire \o_uart_buffer[62]_i_2_n_0 ;
  wire \o_uart_buffer[64]_i_1_n_0 ;
  wire \o_uart_buffer[64]_i_2_n_0 ;
  wire \o_uart_buffer[65]_i_1_n_0 ;
  wire \o_uart_buffer[65]_i_2_n_0 ;
  wire \o_uart_buffer[66]_i_1_n_0 ;
  wire \o_uart_buffer[66]_i_2_n_0 ;
  wire \o_uart_buffer[66]_i_3_n_0 ;
  wire \o_uart_buffer[67]_i_1_n_0 ;
  wire \o_uart_buffer[67]_i_2_n_0 ;
  wire \o_uart_buffer[68]_i_1_n_0 ;
  wire \o_uart_buffer[68]_i_2_n_0 ;
  wire \o_uart_buffer[69]_i_1_n_0 ;
  wire \o_uart_buffer[6]_i_1_n_0 ;
  wire \o_uart_buffer[6]_i_2_n_0 ;
  wire \o_uart_buffer[6]_i_3_n_0 ;
  wire \o_uart_buffer[6]_i_4_n_0 ;
  wire \o_uart_buffer[70]_i_1_n_0 ;
  wire \o_uart_buffer[70]_i_2_n_0 ;
  wire \o_uart_buffer[72]_i_1_n_0 ;
  wire \o_uart_buffer[72]_i_2_n_0 ;
  wire \o_uart_buffer[73]_i_1_n_0 ;
  wire \o_uart_buffer[73]_i_2_n_0 ;
  wire \o_uart_buffer[73]_i_3_n_0 ;
  wire \o_uart_buffer[74]_i_1_n_0 ;
  wire \o_uart_buffer[74]_i_2_n_0 ;
  wire \o_uart_buffer[74]_i_3_n_0 ;
  wire \o_uart_buffer[74]_i_4_n_0 ;
  wire \o_uart_buffer[75]_i_1_n_0 ;
  wire \o_uart_buffer[75]_i_2_n_0 ;
  wire \o_uart_buffer[75]_i_3_n_0 ;
  wire \o_uart_buffer[76]_i_1_n_0 ;
  wire \o_uart_buffer[76]_i_2_n_0 ;
  wire \o_uart_buffer[77]_i_1_n_0 ;
  wire \o_uart_buffer[78]_i_1_n_0 ;
  wire \o_uart_buffer[78]_i_2_n_0 ;
  wire \o_uart_buffer[78]_i_3_n_0 ;
  wire \o_uart_buffer[8]_i_1_n_0 ;
  wire \o_uart_buffer[9]_i_1_n_0 ;
  wire \o_uart_buffer[9]_i_2_n_0 ;
  wire \o_uart_buffer_reg[16]_0 ;
  wire \o_uart_buffer_reg[17]_0 ;
  wire \o_uart_buffer_reg[18]_0 ;
  wire \o_uart_buffer_reg[19]_0 ;
  wire \o_uart_buffer_reg[25]_0 ;
  wire \o_uart_buffer_reg[26]_0 ;
  wire \o_uart_buffer_reg[27]_0 ;
  wire \o_uart_buffer_reg[27]_1 ;
  wire \o_uart_buffer_reg[32]_0 ;
  wire \o_uart_buffer_reg[33]_i_11_n_0 ;
  wire \o_uart_buffer_reg[33]_i_11_n_1 ;
  wire \o_uart_buffer_reg[33]_i_11_n_2 ;
  wire \o_uart_buffer_reg[33]_i_11_n_3 ;
  wire \o_uart_buffer_reg[33]_i_7_n_3 ;
  wire \o_uart_buffer_reg[49]_0 ;
  wire \o_uart_buffer_reg[4]_0 ;
  wire \o_uart_buffer_reg[50]_0 ;
  wire \o_uart_buffer_reg[51]_0 ;
  wire \o_uart_buffer_reg[54]_0 ;
  wire [69:0]\o_uart_buffer_reg[78]_0 ;
  wire \o_uart_count[3]_i_1_n_0 ;
  wire \o_uart_count[3]_i_2_n_0 ;
  wire \o_uart_count[3]_i_3_n_0 ;
  wire \o_uart_count[3]_i_4_n_0 ;
  wire \o_uart_count[3]_i_5_n_0 ;
  wire \o_uart_count[3]_i_6_n_0 ;
  wire \o_uart_count[3]_i_7_n_0 ;
  wire \o_uart_count[3]_i_8_n_0 ;
  wire \o_uart_count[3]_i_9_n_0 ;
  wire [1:0]r_Game_state;
  wire \r_Game_state_reg[1] ;
  wire \r_Pad_chars[1]_i_1_n_0 ;
  wire \r_Pad_chars[2]_i_1_n_0 ;
  wire \r_Pad_chars[3]_i_1_n_0 ;
  wire \r_Pad_chars_reg[3]_0 ;
  wire \r_Pad_chars_reg_n_0_[1] ;
  wire \r_Pad_chars_reg_n_0_[2] ;
  wire \r_Pad_chars_reg_n_0_[3] ;
  wire [7:3]r_ball_pre_x;
  wire \r_ball_pre_x_reg[0]_0 ;
  wire \r_ball_pre_x_reg[0]_1 ;
  wire \r_ball_pre_x_reg[1]_0 ;
  wire [2:0]\r_ball_pre_x_reg[2]_0 ;
  wire \r_ball_pre_x_reg[2]_1 ;
  wire \r_ball_pre_x_reg[3]_0 ;
  wire \r_ball_pre_x_reg[4]_0 ;
  wire \r_ball_pre_x_reg[5]_0 ;
  wire \r_ball_pre_x_reg[6]_0 ;
  wire \r_ball_pre_x_reg[7]_0 ;
  wire [0:0]r_ball_pre_y;
  wire \r_ball_pre_y[5]_i_3_n_0 ;
  wire \r_ball_pre_y[5]_i_5_n_0 ;
  wire \r_ball_pre_y_reg[0]_0 ;
  wire \r_ball_pre_y_reg[0]_1 ;
  wire \r_ball_pre_y_reg[1]_0 ;
  wire \r_ball_pre_y_reg[1]_1 ;
  wire \r_ball_pre_y_reg[2]_0 ;
  wire \r_ball_pre_y_reg[2]_1 ;
  wire \r_ball_pre_y_reg[3]_0 ;
  wire \r_ball_pre_y_reg[4]_0 ;
  wire \r_ball_pre_y_reg[5]_0 ;
  wire \r_ball_pre_y_reg_n_0_[3] ;
  wire \r_ball_pre_y_reg_n_0_[4] ;
  wire \r_ball_pre_y_reg_n_0_[5] ;
  wire [0:0]r_ball_state;
  wire \r_ball_state[0]_i_1_n_0 ;
  wire [4:0]\r_ball_state[0]_i_2_0 ;
  wire \r_ball_state[0]_i_2_n_0 ;
  wire \r_ball_state[0]_i_3_n_0 ;
  wire \r_ball_state[0]_i_6_n_0 ;
  wire \r_ball_state[0]_i_7_n_0 ;
  wire \r_ball_state[0]_i_8_n_0 ;
  wire \r_ball_state[1]_i_1_n_0 ;
  wire \r_ball_state[1]_i_3_n_0 ;
  wire \r_ball_state_reg[0]_0 ;
  wire \r_ball_state_reg[0]_1 ;
  wire \r_ball_state_reg[0]_2 ;
  wire \r_ball_state_reg[0]_3 ;
  wire \r_ball_state_reg[0]_4 ;
  wire [0:0]\r_ball_state_reg[1]_0 ;
  wire \r_ball_state_reg[1]_1 ;
  wire \r_ball_state_reg[1]_2 ;
  wire [4:0]r_message_index;
  wire \r_message_index[0]_i_2_n_0 ;
  wire \r_message_index[0]_i_3_n_0 ;
  wire \r_message_index[1]_i_1_n_0 ;
  wire \r_message_index[2]_i_1_n_0 ;
  wire \r_message_index[2]_i_2_n_0 ;
  wire \r_message_index[3]_i_1_n_0 ;
  wire \r_message_index[4]_i_1_n_0 ;
  wire \r_message_index[4]_i_2_n_0 ;
  wire [0:0]\r_message_index_reg[1]_0 ;
  wire \r_old1_pos[0]_i_1_n_0 ;
  wire \r_old1_pos[1]_i_1_n_0 ;
  wire \r_old1_pos[2]_i_1_n_0 ;
  wire \r_old1_pos[3]_i_1_n_0 ;
  wire \r_old1_pos[4]_i_1_n_0 ;
  wire \r_old1_pos[5]_i_1_n_0 ;
  wire \r_old1_pos[5]_i_2_n_0 ;
  wire \r_old1_pos[5]_i_3_n_0 ;
  wire [5:0]\r_old1_pos_reg[5]_0 ;
  wire \r_old2_pos[0]_i_1_n_0 ;
  wire \r_old2_pos[1]_i_1_n_0 ;
  wire \r_old2_pos[2]_i_1_n_0 ;
  wire \r_old2_pos[3]_i_1_n_0 ;
  wire \r_old2_pos[4]_i_1_n_0 ;
  wire \r_old2_pos[5]_i_1_n_0 ;
  wire \r_old2_pos[5]_i_2_n_0 ;
  wire \r_old2_pos[5]_i_3_n_0 ;
  wire \r_old2_pos[5]_i_4_n_0 ;
  wire [5:0]r_old2_pos__0;
  wire \r_over_state[0]_i_1_n_0 ;
  wire \r_over_state[1]_i_1_n_0 ;
  wire \r_over_state[1]_i_2_n_0 ;
  wire \r_over_state_reg_n_0_[0] ;
  wire \r_over_state_reg_n_0_[1] ;
  wire [1:0]\r_pad1_new_pos_reg[1]_0 ;
  wire \r_pad1_new_pos_reg_n_0_[2] ;
  wire \r_pad1_new_pos_reg_n_0_[3] ;
  wire \r_pad1_new_pos_reg_n_0_[4] ;
  wire \r_pad1_new_pos_reg_n_0_[5] ;
  wire [1:0]r_pad1_state;
  wire \r_pad1_state[0]_i_1_n_0 ;
  wire \r_pad1_state[1]_i_1_n_0 ;
  wire \r_pad1_state[1]_i_2_n_0 ;
  wire \r_pad1_state[1]_i_3_n_0 ;
  wire \r_pad1_state[1]_i_4_n_0 ;
  wire \r_pad1_state[1]_i_5_n_0 ;
  wire \r_pad1_state_reg[0]_0 ;
  wire \r_pad1_state_reg[1]_0 ;
  wire \r_pad1_step[0]_i_1_n_0 ;
  wire \r_pad1_step[1]_i_1_n_0 ;
  wire \r_pad1_step[2]_i_1_n_0 ;
  wire \r_pad1_step[3]_i_10_n_0 ;
  wire \r_pad1_step[3]_i_1_n_0 ;
  wire \r_pad1_step[3]_i_2_n_0 ;
  wire \r_pad1_step[3]_i_3_n_0 ;
  wire \r_pad1_step[3]_i_4_n_0 ;
  wire \r_pad1_step[3]_i_6_n_0 ;
  wire \r_pad1_step[3]_i_7_n_0 ;
  wire \r_pad1_step[3]_i_8_n_0 ;
  wire \r_pad1_step[3]_i_9_n_0 ;
  wire [3:0]r_pad1_step__0;
  wire \r_pad1_step_reg[0]_0 ;
  wire \r_pad2_new_pos[0]_i_1_n_0 ;
  wire \r_pad2_new_pos[1]_i_1_n_0 ;
  wire \r_pad2_new_pos[2]_i_1_n_0 ;
  wire \r_pad2_new_pos[3]_i_1_n_0 ;
  wire \r_pad2_new_pos[4]_i_1_n_0 ;
  wire \r_pad2_new_pos[5]_i_1_n_0 ;
  wire \r_pad2_new_pos[5]_i_3_n_0 ;
  wire \r_pad2_new_pos[5]_i_5_n_0 ;
  wire \r_pad2_new_pos[5]_i_6_n_0 ;
  wire \r_pad2_new_pos[5]_i_8_n_0 ;
  wire \r_pad2_new_pos_reg[0]_0 ;
  wire \r_pad2_new_pos_reg[5]_0 ;
  wire [5:0]\r_pad2_new_pos_reg[5]_1 ;
  wire \r_pad2_new_pos_reg_n_0_[0] ;
  wire \r_pad2_new_pos_reg_n_0_[1] ;
  wire \r_pad2_new_pos_reg_n_0_[2] ;
  wire \r_pad2_new_pos_reg_n_0_[3] ;
  wire \r_pad2_new_pos_reg_n_0_[4] ;
  wire \r_pad2_new_pos_reg_n_0_[5] ;
  wire \r_pad2_state[0]_i_1_n_0 ;
  wire \r_pad2_state[1]_i_1_n_0 ;
  wire \r_pad2_state[1]_i_2_n_0 ;
  wire \r_pad2_state[1]_i_3_n_0 ;
  wire \r_pad2_state[1]_i_4_n_0 ;
  wire \r_pad2_state[1]_i_5_n_0 ;
  wire \r_pad2_state[1]_i_6_n_0 ;
  wire \r_pad2_state_reg[0]_0 ;
  wire \r_pad2_state_reg[0]_1 ;
  wire \r_pad2_state_reg[1]_0 ;
  wire \r_pad2_state_reg[1]_1 ;
  wire \r_pad2_state_reg[1]_2 ;
  wire \r_pad2_step[0]_i_1_n_0 ;
  wire \r_pad2_step[1]_i_1_n_0 ;
  wire \r_pad2_step[2]_i_1_n_0 ;
  wire \r_pad2_step[2]_i_2_n_0 ;
  wire \r_pad2_step[3]_i_1_n_0 ;
  wire \r_pad2_step[3]_i_2_n_0 ;
  wire \r_pad2_step[3]_i_5_n_0 ;
  wire [3:0]r_pad2_step__0;
  wire \r_pad2_step_reg[0]_0 ;
  wire \r_pad2_step_reg[0]_1 ;
  wire [1:0]r_screen_render_state;
  wire \r_screen_render_state[0]_i_1_n_0 ;
  wire \r_screen_render_state[1]_i_1_n_0 ;
  wire \r_screen_render_state[1]_i_2_n_0 ;
  wire \r_screen_render_state[1]_i_3_n_0 ;
  wire \r_screen_render_state[1]_i_4_n_0 ;
  wire r_send_pending_i_6_n_0;
  wire r_send_pending_i_7_n_0;
  wire r_send_pending_reg_0;
  wire r_send_pending_reg_1;
  wire r_send_pending_reg_2;
  wire r_send_pending_reg_3;
  wire r_send_pending_reg_4;
  wire [0:0]r_wait_state;
  wire \r_wait_state_reg[0]_0 ;
  wire [2:0]w_Paddle_size;
  wire [0:0]w_TX_count;
  wire w_TX_ready;
  wire [3:0]\NLW_o_uart_buffer_reg[33]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_o_uart_buffer_reg[33]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_uart_buffer_reg[33]_i_7_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \o_uart_buffer[0]_i_1 
       (.I0(\o_uart_buffer[1]_i_2_n_0 ),
        .I1(\o_uart_buffer[0]_i_2_n_0 ),
        .I2(r_screen_render_state[1]),
        .I3(r_screen_render_state[0]),
        .I4(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h5555F5E0)) 
    \o_uart_buffer[0]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[0]),
        .I2(r_message_index[2]),
        .I3(r_message_index[1]),
        .I4(r_message_index[3]),
        .O(\o_uart_buffer[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F0FE52A)) 
    \o_uart_buffer[10]_i_1 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \o_uart_buffer[11]_i_1 
       (.I0(\o_uart_count[3]_i_7_n_0 ),
        .I1(\r_message_index[2]_i_2_n_0 ),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(\o_uart_buffer[11]_i_2_n_0 ),
        .O(\o_uart_buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h435B4C2E)) 
    \o_uart_buffer[11]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[3]),
        .I3(r_message_index[0]),
        .I4(r_message_index[1]),
        .O(\o_uart_buffer[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[12]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_buffer[12]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ECDAB7FE)) 
    \o_uart_buffer[12]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \o_uart_buffer[13]_i_1 
       (.I0(\o_uart_count[3]_i_6_n_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[1]),
        .I3(\o_uart_buffer[13]_i_2_n_0 ),
        .I4(\r_message_index[2]_i_2_n_0 ),
        .I5(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h1E4C7A7B)) 
    \o_uart_buffer[13]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[3]),
        .I3(r_message_index[0]),
        .I4(r_message_index[1]),
        .O(\o_uart_buffer[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \o_uart_buffer[14]_i_1 
       (.I0(\o_uart_count[3]_i_7_n_0 ),
        .I1(\r_message_index[2]_i_2_n_0 ),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(\o_uart_buffer[14]_i_2_n_0 ),
        .O(\o_uart_buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h09130624)) 
    \o_uart_buffer[14]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[3]),
        .I3(r_message_index[0]),
        .I4(r_message_index[1]),
        .O(\o_uart_buffer[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAEAA)) 
    \o_uart_buffer[16]_i_1 
       (.I0(\o_uart_buffer[16]_i_2_n_0 ),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I3(Q[0]),
        .I4(\o_uart_buffer[16]_i_3_n_0 ),
        .I5(\o_uart_buffer[16]_i_4_n_0 ),
        .O(\o_uart_buffer[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h010001010F0F0F0F)) 
    \o_uart_buffer[16]_i_2 
       (.I0(\o_uart_buffer[5]_i_3_n_0 ),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I3(\r_ball_pre_x_reg[2]_0 [0]),
        .I4(r_ball_state),
        .I5(\r_pad2_state_reg[1]_0 ),
        .O(\o_uart_buffer[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000AAAA8088AAAA)) 
    \o_uart_buffer[16]_i_3 
       (.I0(\o_uart_buffer[17]_i_10_n_0 ),
        .I1(\r_over_state_reg_n_0_[0] ),
        .I2(CPU_RESETN_IBUF),
        .I3(\r_over_state_reg_n_0_[1] ),
        .I4(\o_uart_buffer_reg[54]_0 ),
        .I5(\o_uart_buffer_reg[16]_0 ),
        .O(\o_uart_buffer[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAEAAAC000)) 
    \o_uart_buffer[16]_i_4 
       (.I0(\o_uart_count[3]_i_3_n_0 ),
        .I1(r_screen_render_state[0]),
        .I2(CPU_RESETN_IBUF),
        .I3(r_screen_render_state[1]),
        .I4(\r_message_index[2]_i_2_n_0 ),
        .I5(\o_uart_buffer[16]_i_5_n_0 ),
        .O(\o_uart_buffer[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h45485289)) 
    \o_uart_buffer[16]_i_5 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[0]),
        .I3(r_message_index[3]),
        .I4(r_message_index[1]),
        .O(\o_uart_buffer[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF007D0055)) 
    \o_uart_buffer[17]_i_1 
       (.I0(\o_uart_buffer[17]_i_2_n_0 ),
        .I1(\o_uart_buffer_reg[17]_0 ),
        .I2(Q[1]),
        .I3(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I4(\r_ball_state_reg[1]_0 ),
        .I5(\o_uart_buffer[17]_i_4_n_0 ),
        .O(\o_uart_buffer[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h44440040)) 
    \o_uart_buffer[17]_i_10 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .I2(w_TX_ready),
        .I3(r_send_pending_reg_0),
        .I4(CPU_RESETN_IBUF),
        .O(\o_uart_buffer[17]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hAA28AAAA)) 
    \o_uart_buffer[17]_i_2 
       (.I0(\o_uart_buffer[33]_i_2_n_0 ),
        .I1(\o_uart_buffer[24]_i_2_n_0 ),
        .I2(\r_ball_pre_x_reg[2]_0 [1]),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(r_ball_state),
        .O(\o_uart_buffer[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEF0FFFFFEF0FEF0)) 
    \o_uart_buffer[17]_i_4 
       (.I0(\o_uart_buffer[17]_i_7_n_0 ),
        .I1(\r_message_index[2]_i_2_n_0 ),
        .I2(\o_uart_buffer[17]_i_8_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .I4(\o_uart_buffer[17]_i_9_n_0 ),
        .I5(\o_uart_buffer[17]_i_10_n_0 ),
        .O(\o_uart_buffer[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h01C01001)) 
    \o_uart_buffer[17]_i_7 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[0]),
        .I3(r_message_index[3]),
        .I4(r_message_index[1]),
        .O(\o_uart_buffer[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_uart_buffer[17]_i_8 
       (.I0(r_screen_render_state[1]),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[0]),
        .O(\o_uart_buffer[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0010301030303030)) 
    \o_uart_buffer[17]_i_9 
       (.I0(\o_uart_buffer_reg[16]_0 ),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(\r_over_state_reg_n_0_[1] ),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_over_state_reg_n_0_[0] ),
        .O(\o_uart_buffer[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF007F)) 
    \o_uart_buffer[18]_i_1 
       (.I0(\o_uart_buffer_reg[18]_0 ),
        .I1(\o_uart_buffer[18]_i_3_n_0 ),
        .I2(\o_uart_buffer[33]_i_2_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I4(\o_uart_buffer[18]_i_4_n_0 ),
        .O(\o_uart_buffer[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDDFFDDFFDDFDFFD)) 
    \o_uart_buffer[18]_i_3 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(\r_ball_pre_x_reg[2]_0 [2]),
        .I3(\o_uart_buffer[25]_i_5_n_0 ),
        .I4(\r_ball_pre_x_reg[2]_0 [1]),
        .I5(\o_uart_buffer[24]_i_2_n_0 ),
        .O(\o_uart_buffer[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000001304E848)) 
    \o_uart_buffer[18]_i_4 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[19]_i_1 
       (.I0(\o_uart_buffer[19]_i_2_n_0 ),
        .I1(\o_uart_buffer[53]_i_3_n_0 ),
        .I2(\o_uart_buffer[19]_i_3_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \o_uart_buffer[19]_i_2 
       (.I0(\o_uart_buffer[19]_i_4_n_0 ),
        .I1(\o_uart_buffer_reg[19]_0 ),
        .I2(\r_pad2_state_reg[1]_0 ),
        .I3(r_screen_render_state[0]),
        .I4(r_screen_render_state[1]),
        .O(\o_uart_buffer[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ECFF17B6)) 
    \o_uart_buffer[19]_i_3 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h541701C000000000)) 
    \o_uart_buffer[19]_i_4 
       (.I0(\o_uart_buffer[24]_i_2_n_0 ),
        .I1(\o_uart_buffer[25]_i_5_n_0 ),
        .I2(\r_ball_pre_x_reg[2]_0 [2]),
        .I3(\r_ball_pre_x_reg[2]_0 [1]),
        .I4(\o_uart_buffer[19]_i_6_n_0 ),
        .I5(\o_uart_buffer[19]_i_7_n_0 ),
        .O(\o_uart_buffer[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6D3CB6D392C3492C)) 
    \o_uart_buffer[19]_i_6 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[7]),
        .I2(r_ball_pre_x[5]),
        .I3(r_ball_pre_x[6]),
        .I4(r_ball_pre_x[3]),
        .I5(\r_ball_pre_x_reg[2]_0 [2]),
        .O(\o_uart_buffer[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_uart_buffer[19]_i_7 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .O(\o_uart_buffer[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \o_uart_buffer[1]_i_1 
       (.I0(\o_uart_buffer[1]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_3_n_0 ),
        .I2(\o_uart_buffer[1]_i_3_n_0 ),
        .I3(\o_uart_buffer[53]_i_3_n_0 ),
        .O(\o_uart_buffer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008880)) 
    \o_uart_buffer[1]_i_2 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_state_reg[1]_0 ),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(\o_uart_count[3]_i_8_n_0 ),
        .I4(r_ball_state),
        .I5(\o_uart_buffer_reg[27]_0 ),
        .O(\o_uart_buffer[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFEF2918)) 
    \o_uart_buffer[1]_i_3 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[20]_i_1 
       (.I0(\o_uart_buffer[66]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[20]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCFF37FE)) 
    \o_uart_buffer[20]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFCC04)) 
    \o_uart_buffer[21]_i_1 
       (.I0(\o_uart_buffer_reg[54]_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(\o_uart_count[3]_i_6_n_0 ),
        .I5(\o_uart_buffer[21]_i_2_n_0 ),
        .O(\o_uart_buffer[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003377DFA6)) 
    \o_uart_buffer[21]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[22]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_buffer[22]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFFBDFB6)) 
    \o_uart_buffer[22]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00005575)) 
    \o_uart_buffer[24]_i_1 
       (.I0(\o_uart_buffer[33]_i_2_n_0 ),
        .I1(\o_uart_buffer[24]_i_2_n_0 ),
        .I2(r_ball_state),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I5(\o_uart_buffer[24]_i_3_n_0 ),
        .O(\o_uart_buffer[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h42145614D795D7BD)) 
    \o_uart_buffer[24]_i_2 
       (.I0(\o_uart_buffer[24]_i_4_n_0 ),
        .I1(\o_uart_buffer[24]_i_5_n_0 ),
        .I2(r_ball_pre_x[3]),
        .I3(\r_ball_pre_x_reg[2]_0 [2]),
        .I4(\r_ball_pre_x_reg[2]_0 [1]),
        .I5(\o_uart_buffer[25]_i_5_n_0 ),
        .O(\o_uart_buffer[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFF2F2F2F2F2)) 
    \o_uart_buffer[24]_i_3 
       (.I0(\o_uart_count[3]_i_3_n_0 ),
        .I1(\o_uart_buffer[24]_i_6_n_0 ),
        .I2(\o_uart_buffer[53]_i_3_n_0 ),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I5(\o_uart_buffer_reg[17]_0 ),
        .O(\o_uart_buffer[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hD96D2692)) 
    \o_uart_buffer[24]_i_4 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[6]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[5]),
        .I4(r_ball_pre_x[3]),
        .O(\o_uart_buffer[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h3C34B692)) 
    \o_uart_buffer[24]_i_5 
       (.I0(r_ball_pre_x[6]),
        .I1(r_ball_pre_x[5]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[3]),
        .I4(r_ball_pre_x[4]),
        .O(\o_uart_buffer[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE840E9E)) 
    \o_uart_buffer[24]_i_6 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[2]),
        .I3(r_message_index[3]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF11F1)) 
    \o_uart_buffer[25]_i_1 
       (.I0(\o_uart_buffer[25]_i_2_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .I3(\o_uart_buffer[25]_i_3_n_0 ),
        .I4(\o_uart_buffer[74]_i_4_n_0 ),
        .O(\o_uart_buffer[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88CC880C880C88CC)) 
    \o_uart_buffer[25]_i_2 
       (.I0(\o_uart_buffer_reg[25]_0 ),
        .I1(\o_uart_buffer[33]_i_2_n_0 ),
        .I2(r_ball_state),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\o_uart_buffer[25]_i_5_n_0 ),
        .I5(\o_uart_buffer[25]_i_6_n_0 ),
        .O(\o_uart_buffer[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEF2EE9E)) 
    \o_uart_buffer[25]_i_3 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[2]),
        .I3(r_message_index[3]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h59AE759A518A6518)) 
    \o_uart_buffer[25]_i_5 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[7]),
        .I2(r_ball_pre_x[5]),
        .I3(r_ball_pre_x[6]),
        .I4(r_ball_pre_x[3]),
        .I5(\r_ball_pre_x_reg[2]_0 [2]),
        .O(\o_uart_buffer[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3C303C703C303870)) 
    \o_uart_buffer[25]_i_6 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[6]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[5]),
        .I4(r_ball_pre_x[3]),
        .I5(\r_ball_pre_x_reg[2]_0 [2]),
        .O(\o_uart_buffer[25]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF400)) 
    \o_uart_buffer[26]_i_1 
       (.I0(\r_ball_state_reg[1]_2 ),
        .I1(CPU_RESETN_IBUF),
        .I2(\o_uart_buffer[26]_i_2_n_0 ),
        .I3(\r_ball_state[0]_i_3_n_0 ),
        .I4(\o_uart_buffer[26]_i_3_n_0 ),
        .O(\o_uart_buffer[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80808C8C8C808C80)) 
    \o_uart_buffer[26]_i_2 
       (.I0(\o_uart_buffer_reg[26]_0 ),
        .I1(\r_pad2_state_reg[1]_0 ),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(\o_uart_count[3]_i_8_n_0 ),
        .I4(\o_uart_buffer[26]_i_5_n_0 ),
        .I5(r_ball_state),
        .O(\o_uart_buffer[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000003BAA20)) 
    \o_uart_buffer[26]_i_3 
       (.I0(r_message_index[2]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[3]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6CCB6DDB6CDB4DDB)) 
    \o_uart_buffer[26]_i_5 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[6]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[5]),
        .I4(r_ball_pre_x[3]),
        .I5(\r_ball_pre_x_reg[2]_0 [2]),
        .O(\o_uart_buffer[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0FFE0)) 
    \o_uart_buffer[27]_i_1 
       (.I0(\o_uart_buffer_reg[27]_0 ),
        .I1(\o_uart_buffer[27]_i_3_n_0 ),
        .I2(\r_ball_state[0]_i_3_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .I4(\o_uart_buffer[27]_i_4_n_0 ),
        .I5(\o_uart_buffer[73]_i_2_n_0 ),
        .O(\o_uart_buffer[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h38FFF3FF)) 
    \o_uart_buffer[27]_i_10 
       (.I0(r_ball_pre_x[3]),
        .I1(r_ball_pre_x[5]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[6]),
        .I4(r_ball_pre_x[4]),
        .O(\o_uart_buffer[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8C8C8C8C80808C80)) 
    \o_uart_buffer[27]_i_3 
       (.I0(\o_uart_buffer_reg[27]_1 ),
        .I1(\r_pad2_state_reg[1]_0 ),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(\o_uart_count[3]_i_8_n_0 ),
        .I4(r_ball_state),
        .I5(\o_uart_buffer[27]_i_6_n_0 ),
        .O(\o_uart_buffer[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE810E9E)) 
    \o_uart_buffer[27]_i_4 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[2]),
        .I3(r_message_index[3]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2000000AA00000A)) 
    \o_uart_buffer[27]_i_6 
       (.I0(r_ball_state),
        .I1(\o_uart_buffer[27]_i_7_n_0 ),
        .I2(\o_uart_buffer[27]_i_8_n_0 ),
        .I3(\o_uart_buffer[27]_i_9_n_0 ),
        .I4(\o_uart_buffer[25]_i_5_n_0 ),
        .I5(\o_uart_buffer[27]_i_10_n_0 ),
        .O(\o_uart_buffer[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h73C7)) 
    \o_uart_buffer[27]_i_7 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[6]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[5]),
        .O(\o_uart_buffer[27]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h0010F10F)) 
    \o_uart_buffer[27]_i_8 
       (.I0(r_ball_pre_x[4]),
        .I1(r_ball_pre_x[3]),
        .I2(r_ball_pre_x[7]),
        .I3(r_ball_pre_x[5]),
        .I4(r_ball_pre_x[6]),
        .O(\o_uart_buffer[27]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o_uart_buffer[27]_i_9 
       (.I0(r_ball_pre_x[7]),
        .I1(r_ball_pre_x[6]),
        .I2(r_ball_pre_x[5]),
        .O(\o_uart_buffer[27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[28]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[28]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCEC37FE)) 
    \o_uart_buffer[28]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_uart_buffer[29]_i_1 
       (.I0(\o_uart_buffer[66]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[29]_i_2_n_0 ),
        .I3(\o_uart_buffer[74]_i_2_n_0 ),
        .O(\o_uart_buffer[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000756E9EA)) 
    \o_uart_buffer[29]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \o_uart_buffer[2]_i_1 
       (.I0(\o_uart_buffer[6]_i_2_n_0 ),
        .I1(\o_uart_buffer[2]_i_2_n_0 ),
        .I2(r_screen_render_state[1]),
        .I3(r_screen_render_state[0]),
        .I4(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h155575E8)) 
    \o_uart_buffer[2]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[0]),
        .I2(r_message_index[2]),
        .I3(r_message_index[1]),
        .I4(r_message_index[3]),
        .O(\o_uart_buffer[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_uart_buffer[30]_i_1 
       (.I0(\o_uart_buffer[74]_i_2_n_0 ),
        .I1(\o_uart_buffer[30]_i_2_n_0 ),
        .I2(\o_uart_buffer[43]_i_2_n_0 ),
        .O(\o_uart_buffer[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C110028)) 
    \o_uart_buffer[30]_i_2 
       (.I0(r_message_index[2]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[1]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF04)) 
    \o_uart_buffer[32]_i_1 
       (.I0(\o_uart_buffer_reg[32]_0 ),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(\o_uart_buffer[74]_i_2_n_0 ),
        .I4(\o_uart_buffer[32]_i_3_n_0 ),
        .I5(\o_uart_buffer[73]_i_2_n_0 ),
        .O(\o_uart_buffer[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001200CB24)) 
    \o_uart_buffer[32]_i_3 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFD782D782)) 
    \o_uart_buffer[32]_i_4 
       (.I0(r_ball_state),
        .I1(\o_uart_buffer_reg[33]_i_7_n_3 ),
        .I2(r_ball_pre_x[7]),
        .I3(\o_uart_count[3]_i_8_n_0 ),
        .I4(CO),
        .I5(\r_ball_state_reg[1]_0 ),
        .O(\r_ball_state_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFF0D)) 
    \o_uart_buffer[33]_i_1 
       (.I0(\o_uart_buffer[33]_i_2_n_0 ),
        .I1(\o_uart_buffer[33]_i_3_n_0 ),
        .I2(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I3(\o_uart_buffer[33]_i_4_n_0 ),
        .I4(\o_uart_buffer[33]_i_5_n_0 ),
        .O(\o_uart_buffer[33]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \o_uart_buffer[33]_i_12 
       (.I0(r_ball_pre_x[7]),
        .I1(r_ball_pre_x[6]),
        .O(\o_uart_buffer[33]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_uart_buffer[33]_i_13 
       (.I0(r_ball_pre_x[6]),
        .I1(r_ball_pre_x[7]),
        .O(\o_uart_buffer[33]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAA8AA)) 
    \o_uart_buffer[33]_i_2 
       (.I0(\r_pad2_state_reg[1]_0 ),
        .I1(r_ball_state),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(CPU_RESETN_IBUF),
        .I4(r_pad1_state[0]),
        .I5(r_pad1_state[1]),
        .O(\o_uart_buffer[33]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \o_uart_buffer[33]_i_20 
       (.I0(r_ball_pre_x[7]),
        .I1(r_ball_pre_x[5]),
        .O(\o_uart_buffer[33]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_uart_buffer[33]_i_21 
       (.I0(r_ball_pre_x[3]),
        .O(\o_uart_buffer[33]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hC9)) 
    \o_uart_buffer[33]_i_22 
       (.I0(r_ball_pre_x[5]),
        .I1(r_ball_pre_x[6]),
        .I2(r_ball_pre_x[7]),
        .O(\o_uart_buffer[33]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_uart_buffer[33]_i_23 
       (.I0(r_ball_pre_x[5]),
        .I1(r_ball_pre_x[7]),
        .O(\o_uart_buffer[33]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_uart_buffer[33]_i_24 
       (.I0(r_ball_pre_x[4]),
        .O(\o_uart_buffer[33]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \o_uart_buffer[33]_i_25 
       (.I0(\r_ball_pre_x_reg[2]_0 [2]),
        .I1(r_ball_pre_x[7]),
        .I2(r_ball_pre_x[3]),
        .O(\o_uart_buffer[33]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2222222200F00000)) 
    \o_uart_buffer[33]_i_3 
       (.I0(Q[6]),
        .I1(CO),
        .I2(r_ball_pre_x[7]),
        .I3(\o_uart_buffer_reg[33]_i_7_n_3 ),
        .I4(r_ball_state),
        .I5(\r_ball_state_reg[1]_0 ),
        .O(\o_uart_buffer[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040108)) 
    \o_uart_buffer[33]_i_4 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[33]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888C808C8A8C8A8C)) 
    \o_uart_buffer[33]_i_5 
       (.I0(r_screen_render_state[1]),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[0]),
        .I3(\o_uart_buffer_reg[54]_0 ),
        .I4(\r_over_state_reg_n_0_[0] ),
        .I5(\r_over_state_reg_n_0_[1] ),
        .O(\o_uart_buffer[33]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[34]_i_1 
       (.I0(\o_uart_buffer[74]_i_4_n_0 ),
        .I1(\o_uart_buffer[34]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F9FF1DE6)) 
    \o_uart_buffer[34]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[35]_i_1 
       (.I0(\o_uart_buffer[73]_i_2_n_0 ),
        .I1(\o_uart_buffer[35]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F9FF1CE6)) 
    \o_uart_buffer[35]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBAAABAAABAAA)) 
    \o_uart_buffer[36]_i_1 
       (.I0(\o_uart_buffer[33]_i_5_n_0 ),
        .I1(\r_message_index[4]_i_2_n_0 ),
        .I2(\o_uart_buffer[36]_i_2_n_0 ),
        .I3(r_message_index[4]),
        .I4(\o_uart_buffer[36]_i_3_n_0 ),
        .I5(r_message_index[2]),
        .O(\o_uart_buffer[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \o_uart_buffer[36]_i_2 
       (.I0(r_message_index[2]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[0]),
        .O(\o_uart_buffer[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \o_uart_buffer[36]_i_3 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .O(\o_uart_buffer[36]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[37]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[37]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA880552)) 
    \o_uart_buffer[37]_i_2 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAABAAAAAAAAA)) 
    \o_uart_buffer[38]_i_1 
       (.I0(\o_uart_buffer[38]_i_2_n_0 ),
        .I1(r_message_index[4]),
        .I2(\o_uart_buffer[38]_i_3_n_0 ),
        .I3(r_message_index[2]),
        .I4(\r_message_index[2]_i_2_n_0 ),
        .I5(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF005000000000)) 
    \o_uart_buffer[38]_i_2 
       (.I0(\r_over_state_reg_n_0_[1] ),
        .I1(\r_over_state_reg_n_0_[0] ),
        .I2(\o_uart_buffer_reg[54]_0 ),
        .I3(r_screen_render_state[0]),
        .I4(CPU_RESETN_IBUF),
        .I5(r_screen_render_state[1]),
        .O(\o_uart_buffer[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h21)) 
    \o_uart_buffer[38]_i_3 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .O(\o_uart_buffer[38]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[3]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_buffer[6]_i_2_n_0 ),
        .I2(\o_uart_buffer[3]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8FD0102)) 
    \o_uart_buffer[3]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[40]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[40]_i_2_n_0 ),
        .O(\o_uart_buffer[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EDF91EA2)) 
    \o_uart_buffer[40]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[40]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_uart_buffer[41]_i_1 
       (.I0(\o_uart_count[3]_i_7_n_0 ),
        .I1(\o_uart_buffer[43]_i_2_n_0 ),
        .I2(\o_uart_buffer[74]_i_2_n_0 ),
        .I3(\o_uart_buffer[41]_i_2_n_0 ),
        .O(\o_uart_buffer[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004011402E)) 
    \o_uart_buffer[41]_i_2 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[41]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[42]_i_1 
       (.I0(\o_uart_buffer[66]_i_2_n_0 ),
        .I1(\o_uart_buffer[42]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDFF1EA2)) 
    \o_uart_buffer[42]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[42]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_uart_buffer[43]_i_1 
       (.I0(\o_uart_count[3]_i_7_n_0 ),
        .I1(\o_uart_buffer[43]_i_2_n_0 ),
        .I2(\o_uart_buffer[74]_i_2_n_0 ),
        .I3(\o_uart_buffer[43]_i_3_n_0 ),
        .O(\o_uart_buffer[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888808880888A88)) 
    \o_uart_buffer[43]_i_2 
       (.I0(r_screen_render_state[1]),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[0]),
        .I3(\o_uart_buffer_reg[54]_0 ),
        .I4(\r_over_state_reg_n_0_[1] ),
        .I5(\r_over_state_reg_n_0_[0] ),
        .O(\o_uart_buffer[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005403C92E)) 
    \o_uart_buffer[43]_i_3 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[43]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[44]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[44]_i_2_n_0 ),
        .O(\o_uart_buffer[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDE83FFE)) 
    \o_uart_buffer[44]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[44]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[45]_i_1 
       (.I0(\o_uart_buffer[74]_i_4_n_0 ),
        .I1(\o_uart_buffer[45]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC9A215E)) 
    \o_uart_buffer[45]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAABAAAAA)) 
    \o_uart_buffer[46]_i_1 
       (.I0(\o_uart_buffer[46]_i_2_n_0 ),
        .I1(\r_message_index[4]_i_2_n_0 ),
        .I2(\o_uart_buffer[46]_i_3_n_0 ),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\o_uart_buffer[46]_i_4_n_0 ),
        .O(\o_uart_buffer[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0004)) 
    \o_uart_buffer[46]_i_2 
       (.I0(\o_uart_buffer_reg[54]_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(\o_uart_count[3]_i_4_n_0 ),
        .I5(\o_uart_buffer[66]_i_2_n_0 ),
        .O(\o_uart_buffer[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \o_uart_buffer[46]_i_3 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .O(\o_uart_buffer[46]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h1590)) 
    \o_uart_buffer[46]_i_4 
       (.I0(r_message_index[2]),
        .I1(r_message_index[0]),
        .I2(r_message_index[1]),
        .I3(r_message_index[3]),
        .O(\o_uart_buffer[46]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F1)) 
    \o_uart_buffer[48]_i_1 
       (.I0(\o_uart_buffer[48]_i_2_n_0 ),
        .I1(\o_uart_buffer[48]_i_3_n_0 ),
        .I2(\o_uart_buffer[48]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I4(\o_uart_buffer[48]_i_5_n_0 ),
        .I5(\o_uart_buffer[78]_i_3_n_0 ),
        .O(\o_uart_buffer[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF28FF28FFFFFF28)) 
    \o_uart_buffer[48]_i_2 
       (.I0(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I1(\r_pad2_state_reg[0]_0 ),
        .I2(\r_pad2_state_reg[1]_1 ),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(r_ball_state),
        .I5(\r_ball_pre_y_reg[0]_0 ),
        .O(\o_uart_buffer[48]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000004340000C7F7)) 
    \o_uart_buffer[48]_i_3 
       (.I0(\o_uart_buffer[48]_i_6_n_0 ),
        .I1(r_pad1_state[1]),
        .I2(r_pad1_state[0]),
        .I3(\o_uart_buffer[49]_i_11_n_0 ),
        .I4(r_ball_state),
        .I5(CPU_RESETN_IBUF),
        .O(\o_uart_buffer[48]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFBBB)) 
    \o_uart_buffer[48]_i_4 
       (.I0(\o_uart_buffer[48]_i_7_n_0 ),
        .I1(\r_ball_state_reg[1]_2 ),
        .I2(\r_ball_state[0]_i_2_0 [0]),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\o_uart_buffer[51]_i_2_n_0 ),
        .I5(\o_uart_buffer[51]_i_7_n_0 ),
        .O(\o_uart_buffer[48]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015219E84)) 
    \o_uart_buffer[48]_i_5 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[48]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_uart_buffer[48]_i_6 
       (.I0(r_pad1_step__0[0]),
        .I1(\r_pad1_new_pos_reg[1]_0 [0]),
        .I2(w_Paddle_size[0]),
        .O(\o_uart_buffer[48]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4000004000404000)) 
    \o_uart_buffer[48]_i_7 
       (.I0(\r_pad2_state_reg[1]_1 ),
        .I1(\r_pad2_state_reg[0]_0 ),
        .I2(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I3(w_Paddle_size[0]),
        .I4(r_old2_pos__0[0]),
        .I5(r_pad2_step__0[0]),
        .O(\o_uart_buffer[48]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000DDFD)) 
    \o_uart_buffer[49]_i_1 
       (.I0(\o_uart_buffer[49]_i_2_n_0 ),
        .I1(\o_uart_buffer[49]_i_3_n_0 ),
        .I2(\o_uart_buffer[49]_i_4_n_0 ),
        .I3(\o_uart_buffer[49]_i_5_n_0 ),
        .I4(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I5(\o_uart_buffer[49]_i_6_n_0 ),
        .O(\o_uart_buffer[49]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_uart_buffer[49]_i_10 
       (.I0(\o_uart_buffer[49]_i_20_n_0 ),
        .I1(\o_uart_buffer[56]_i_12_n_0 ),
        .O(\o_uart_buffer[49]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_uart_buffer[49]_i_11 
       (.I0(r_pad1_step__0[0]),
        .I1(\r_old1_pos_reg[5]_0 [0]),
        .I2(w_Paddle_size[0]),
        .O(\o_uart_buffer[49]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \o_uart_buffer[49]_i_12 
       (.I0(\r_old1_pos_reg[5]_0 [5]),
        .I1(\o_uart_buffer[49]_i_21_n_0 ),
        .I2(\o_uart_buffer[49]_i_22_n_0 ),
        .O(\o_uart_buffer[49]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2002200220020220)) 
    \o_uart_buffer[49]_i_13 
       (.I0(r_pad1_state[1]),
        .I1(r_pad1_state[0]),
        .I2(\o_uart_buffer[56]_i_13_n_0 ),
        .I3(\o_uart_buffer[50]_i_17_n_0 ),
        .I4(\o_uart_buffer[48]_i_6_n_0 ),
        .I5(\o_uart_buffer[51]_i_26_n_0 ),
        .O(\o_uart_buffer[49]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h92499692)) 
    \o_uart_buffer[49]_i_15 
       (.I0(\r_ball_pre_y_reg[1]_0 ),
        .I1(\r_ball_pre_y_reg_n_0_[3] ),
        .I2(\r_ball_pre_y_reg_n_0_[5] ),
        .I3(\r_ball_pre_y_reg[2]_0 ),
        .I4(\r_ball_pre_y_reg_n_0_[4] ),
        .O(\o_uart_buffer[49]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \o_uart_buffer[49]_i_16 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(r_pad1_state[1]),
        .I3(r_pad1_state[0]),
        .I4(\r_pad2_state_reg[0]_0 ),
        .I5(\r_pad2_state_reg[1]_1 ),
        .O(\o_uart_buffer[49]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEF5E96E)) 
    \o_uart_buffer[49]_i_17 
       (.I0(r_message_index[3]),
        .I1(r_message_index[0]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[49]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF7171007100FF71)) 
    \o_uart_buffer[49]_i_18 
       (.I0(\o_uart_buffer[58]_i_27_n_0 ),
        .I1(\o_uart_buffer[58]_i_28_n_0 ),
        .I2(r_pad2_step__0[2]),
        .I3(r_pad2_step__0[3]),
        .I4(\o_uart_buffer[58]_i_20_n_0 ),
        .I5(r_old2_pos__0[3]),
        .O(\o_uart_buffer[49]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_uart_buffer[49]_i_19 
       (.I0(r_old2_pos__0[3]),
        .I1(\o_uart_buffer[58]_i_20_n_0 ),
        .O(\o_uart_buffer[49]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F00F1FFFFFFFFFF)) 
    \o_uart_buffer[49]_i_2 
       (.I0(\o_uart_buffer[51]_i_14_n_0 ),
        .I1(\o_uart_buffer[51]_i_13_n_0 ),
        .I2(\o_uart_buffer[49]_i_7_n_0 ),
        .I3(\o_uart_buffer[49]_i_8_n_0 ),
        .I4(\o_uart_buffer[49]_i_9_n_0 ),
        .I5(\r_ball_state_reg[0]_0 ),
        .O(\o_uart_buffer[49]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h6996AAAA)) 
    \o_uart_buffer[49]_i_20 
       (.I0(\o_uart_buffer[51]_i_25_n_0 ),
        .I1(r_pad1_step__0[0]),
        .I2(\r_old1_pos_reg[5]_0 [0]),
        .I3(w_Paddle_size[0]),
        .I4(\o_uart_buffer[49]_i_12_n_0 ),
        .O(\o_uart_buffer[49]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \o_uart_buffer[49]_i_21 
       (.I0(\r_old1_pos_reg[5]_0 [4]),
        .I1(\o_uart_buffer[58]_i_12_n_0 ),
        .I2(\r_old1_pos_reg[5]_0 [3]),
        .O(\o_uart_buffer[49]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF4D4D004D00FF4D)) 
    \o_uart_buffer[49]_i_22 
       (.I0(\o_uart_buffer[58]_i_21_n_0 ),
        .I1(r_pad1_step__0[2]),
        .I2(\o_uart_buffer[58]_i_22_n_0 ),
        .I3(r_pad1_step__0[3]),
        .I4(\o_uart_buffer[58]_i_12_n_0 ),
        .I5(\r_old1_pos_reg[5]_0 [3]),
        .O(\o_uart_buffer[49]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h6900FFFF)) 
    \o_uart_buffer[49]_i_3 
       (.I0(\o_uart_buffer[56]_i_4_n_0 ),
        .I1(\o_uart_buffer[50]_i_6_n_0 ),
        .I2(\o_uart_buffer[50]_i_7_n_0 ),
        .I3(\o_uart_buffer[51]_i_2_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .O(\o_uart_buffer[49]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6500)) 
    \o_uart_buffer[49]_i_4 
       (.I0(\o_uart_buffer[49]_i_10_n_0 ),
        .I1(\o_uart_buffer[49]_i_11_n_0 ),
        .I2(\o_uart_buffer[49]_i_12_n_0 ),
        .I3(\o_uart_buffer[51]_i_18_n_0 ),
        .I4(\o_uart_buffer[49]_i_13_n_0 ),
        .I5(\o_uart_buffer[58]_i_5_n_0 ),
        .O(\o_uart_buffer[49]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF60606F60)) 
    \o_uart_buffer[49]_i_5 
       (.I0(\r_ball_state[0]_i_2_0 [1]),
        .I1(\o_uart_buffer_reg[49]_0 ),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(r_ball_state),
        .I4(\o_uart_buffer[49]_i_15_n_0 ),
        .I5(\o_uart_buffer[49]_i_16_n_0 ),
        .O(\o_uart_buffer[49]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[49]_i_6 
       (.I0(\o_uart_buffer[73]_i_2_n_0 ),
        .I1(\o_uart_buffer[49]_i_17_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[49]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_uart_buffer[49]_i_7 
       (.I0(r_pad2_step__0[0]),
        .I1(r_old2_pos__0[0]),
        .I2(w_Paddle_size[0]),
        .O(\o_uart_buffer[49]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \o_uart_buffer[49]_i_8 
       (.I0(\o_uart_buffer[49]_i_18_n_0 ),
        .I1(r_old2_pos__0[4]),
        .I2(\o_uart_buffer[49]_i_19_n_0 ),
        .I3(r_old2_pos__0[5]),
        .O(\o_uart_buffer[49]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_uart_buffer[49]_i_9 
       (.I0(\o_uart_buffer[56]_i_10_n_0 ),
        .I1(\o_uart_buffer[56]_i_5_n_0 ),
        .O(\o_uart_buffer[49]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBA00)) 
    \o_uart_buffer[4]_i_1 
       (.I0(\o_uart_buffer_reg[27]_0 ),
        .I1(\o_uart_buffer[4]_i_2_n_0 ),
        .I2(\o_uart_buffer_reg[4]_0 ),
        .I3(\r_ball_state[0]_i_3_n_0 ),
        .I4(\o_uart_buffer[4]_i_4_n_0 ),
        .O(\o_uart_buffer[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555551051)) 
    \o_uart_buffer[4]_i_2 
       (.I0(\o_uart_buffer[51]_i_2_n_0 ),
        .I1(r_pad1_state[1]),
        .I2(r_pad1_state[0]),
        .I3(CPU_RESETN_IBUF),
        .I4(r_ball_state),
        .I5(\r_ball_state_reg[1]_0 ),
        .O(\o_uart_buffer[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000080A2080)) 
    \o_uart_buffer[4]_i_4 
       (.I0(r_message_index[2]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[1]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00FD)) 
    \o_uart_buffer[50]_i_1 
       (.I0(\o_uart_buffer[50]_i_2_n_0 ),
        .I1(\o_uart_buffer[50]_i_3_n_0 ),
        .I2(\o_uart_buffer[50]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I4(\o_uart_buffer[50]_i_5_n_0 ),
        .O(\o_uart_buffer[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A0280A880A82A02)) 
    \o_uart_buffer[50]_i_10 
       (.I0(\o_uart_buffer[51]_i_18_n_0 ),
        .I1(\o_uart_buffer[56]_i_12_n_0 ),
        .I2(\o_uart_buffer[51]_i_25_n_0 ),
        .I3(\o_uart_buffer[50]_i_15_n_0 ),
        .I4(\o_uart_buffer[57]_i_6_n_0 ),
        .I5(\o_uart_buffer[57]_i_16_n_0 ),
        .O(\o_uart_buffer[50]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0AA0820A0A28)) 
    \o_uart_buffer[50]_i_11 
       (.I0(r_pad1_state[1]),
        .I1(\o_uart_buffer[48]_i_6_n_0 ),
        .I2(\o_uart_buffer[50]_i_16_n_0 ),
        .I3(\o_uart_buffer[50]_i_17_n_0 ),
        .I4(\o_uart_buffer[56]_i_13_n_0 ),
        .I5(\o_uart_buffer[51]_i_26_n_0 ),
        .O(\o_uart_buffer[50]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA2AA8A080820A2AA)) 
    \o_uart_buffer[50]_i_12 
       (.I0(r_ball_state),
        .I1(\r_ball_pre_y_reg[1]_0 ),
        .I2(\r_ball_pre_y_reg_n_0_[3] ),
        .I3(\r_ball_pre_y_reg_n_0_[5] ),
        .I4(\r_ball_pre_y_reg[2]_0 ),
        .I5(\r_ball_pre_y_reg_n_0_[4] ),
        .O(\o_uart_buffer[50]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h150140547F57D5FD)) 
    \o_uart_buffer[50]_i_13 
       (.I0(\o_uart_buffer[58]_i_17_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[2] ),
        .I2(\o_uart_buffer[50]_i_18_n_0 ),
        .I3(w_Paddle_size[2]),
        .I4(\r_pad2_new_pos_reg_n_0_[3] ),
        .I5(r_pad2_step__0[3]),
        .O(\o_uart_buffer[50]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000071)) 
    \o_uart_buffer[50]_i_14 
       (.I0(\r_pad2_new_pos_reg_n_0_[2] ),
        .I1(\o_uart_buffer[50]_i_18_n_0 ),
        .I2(w_Paddle_size[2]),
        .I3(\r_pad2_new_pos_reg_n_0_[3] ),
        .I4(\r_pad2_new_pos_reg_n_0_[4] ),
        .O(\o_uart_buffer[50]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8228)) 
    \o_uart_buffer[50]_i_15 
       (.I0(\o_uart_buffer[49]_i_12_n_0 ),
        .I1(w_Paddle_size[0]),
        .I2(\r_old1_pos_reg[5]_0 [0]),
        .I3(r_pad1_step__0[0]),
        .O(\o_uart_buffer[50]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_uart_buffer[50]_i_16 
       (.I0(\o_uart_buffer[57]_i_10_n_0 ),
        .I1(\o_uart_buffer[57]_i_5_n_0 ),
        .O(\o_uart_buffer[50]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h963C3C96C39696C3)) 
    \o_uart_buffer[50]_i_17 
       (.I0(\o_uart_buffer[51]_i_26_n_0 ),
        .I1(r_pad1_step__0[1]),
        .I2(\o_uart_buffer[49]_i_13_0 ),
        .I3(\r_pad1_new_pos_reg[1]_0 [0]),
        .I4(w_Paddle_size[0]),
        .I5(r_pad1_step__0[0]),
        .O(\o_uart_buffer[50]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hBB2B)) 
    \o_uart_buffer[50]_i_18 
       (.I0(\r_pad2_new_pos_reg_n_0_[1] ),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_pad2_new_pos_reg_n_0_[0] ),
        .O(\o_uart_buffer[50]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8EEE7111FFFFFFFF)) 
    \o_uart_buffer[50]_i_2 
       (.I0(\o_uart_buffer[56]_i_4_n_0 ),
        .I1(\o_uart_buffer[50]_i_6_n_0 ),
        .I2(\o_uart_buffer[51]_i_7_n_0 ),
        .I3(\o_uart_buffer[50]_i_7_n_0 ),
        .I4(\o_uart_buffer[51]_i_11_n_0 ),
        .I5(\o_uart_buffer[51]_i_2_n_0 ),
        .O(\o_uart_buffer[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2000FFFF)) 
    \o_uart_buffer[50]_i_3 
       (.I0(\r_pad2_state_reg[0]_0 ),
        .I1(\r_pad2_state_reg[1]_1 ),
        .I2(\o_uart_buffer[50]_i_8_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(\o_uart_buffer_reg[50]_0 ),
        .O(\o_uart_buffer[50]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEFE0000)) 
    \o_uart_buffer[50]_i_4 
       (.I0(\o_uart_buffer[51]_i_16_n_0 ),
        .I1(\o_uart_buffer[50]_i_10_n_0 ),
        .I2(\o_uart_buffer[51]_i_19_n_0 ),
        .I3(\o_uart_buffer[50]_i_11_n_0 ),
        .I4(\r_pad2_state_reg[1]_2 ),
        .I5(\o_uart_buffer[50]_i_12_n_0 ),
        .O(\o_uart_buffer[50]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054029E84)) 
    \o_uart_buffer[50]_i_5 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[50]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9969969966966966)) 
    \o_uart_buffer[50]_i_6 
       (.I0(w_Paddle_size[1]),
        .I1(\r_pad2_new_pos_reg_n_0_[1] ),
        .I2(\r_pad2_new_pos_reg_n_0_[0] ),
        .I3(w_Paddle_size[0]),
        .I4(r_pad2_step__0[0]),
        .I5(r_pad2_step__0[1]),
        .O(\o_uart_buffer[50]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \o_uart_buffer[50]_i_7 
       (.I0(\o_uart_buffer[50]_i_13_n_0 ),
        .I1(\o_uart_buffer[50]_i_14_n_0 ),
        .I2(\r_pad2_new_pos_reg_n_0_[5] ),
        .O(\o_uart_buffer[50]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFFBFBBF40040440)) 
    \o_uart_buffer[50]_i_8 
       (.I0(\o_uart_buffer[51]_i_23_n_0 ),
        .I1(\o_uart_buffer[49]_i_8_n_0 ),
        .I2(w_Paddle_size[0]),
        .I3(r_old2_pos__0[0]),
        .I4(r_pad2_step__0[0]),
        .I5(\o_uart_buffer[51]_i_13_n_0 ),
        .O(\o_uart_buffer[50]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFF2)) 
    \o_uart_buffer[51]_i_1 
       (.I0(\o_uart_buffer[51]_i_2_n_0 ),
        .I1(\o_uart_buffer[51]_i_3_n_0 ),
        .I2(\o_uart_buffer[51]_i_4_n_0 ),
        .I3(\o_uart_buffer[51]_i_5_n_0 ),
        .I4(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I5(\o_uart_buffer[51]_i_6_n_0 ),
        .O(\o_uart_buffer[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6996AAAA)) 
    \o_uart_buffer[51]_i_10 
       (.I0(\o_uart_buffer[50]_i_6_n_0 ),
        .I1(r_pad2_step__0[0]),
        .I2(\r_pad2_new_pos_reg_n_0_[0] ),
        .I3(w_Paddle_size[0]),
        .I4(\o_uart_buffer[50]_i_7_n_0 ),
        .O(\o_uart_buffer[51]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_uart_buffer[51]_i_11 
       (.I0(\o_uart_buffer[57]_i_25_n_0 ),
        .I1(\o_uart_buffer[57]_i_8_n_0 ),
        .O(\o_uart_buffer[51]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF0069006900FF00)) 
    \o_uart_buffer[51]_i_12 
       (.I0(r_pad2_step__0[0]),
        .I1(r_old2_pos__0[0]),
        .I2(w_Paddle_size[0]),
        .I3(\o_uart_buffer[49]_i_8_n_0 ),
        .I4(\o_uart_buffer[51]_i_23_n_0 ),
        .I5(\o_uart_buffer[56]_i_5_n_0 ),
        .O(\o_uart_buffer[51]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF8400420039FFDE)) 
    \o_uart_buffer[51]_i_13 
       (.I0(\o_uart_buffer[57]_i_30_n_0 ),
        .I1(\o_uart_buffer[56]_i_9_n_0 ),
        .I2(\o_uart_buffer[58]_i_10_n_0 ),
        .I3(\o_uart_buffer[56]_i_10_n_0 ),
        .I4(\o_uart_buffer[57]_i_9_n_0 ),
        .I5(\o_uart_buffer[57]_i_29_n_0 ),
        .O(\o_uart_buffer[51]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0C036419C6B1C030)) 
    \o_uart_buffer[51]_i_14 
       (.I0(\o_uart_buffer[56]_i_10_n_0 ),
        .I1(\o_uart_buffer[58]_i_10_n_0 ),
        .I2(\o_uart_buffer[56]_i_9_n_0 ),
        .I3(\o_uart_buffer[57]_i_30_n_0 ),
        .I4(\o_uart_buffer[57]_i_29_n_0 ),
        .I5(\o_uart_buffer[57]_i_9_n_0 ),
        .O(\o_uart_buffer[51]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \o_uart_buffer[51]_i_16 
       (.I0(r_ball_state),
        .I1(CPU_RESETN_IBUF),
        .I2(r_pad1_state[1]),
        .I3(r_pad1_state[0]),
        .O(\o_uart_buffer[51]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA280AAAAA)) 
    \o_uart_buffer[51]_i_17 
       (.I0(\o_uart_buffer[51]_i_24_n_0 ),
        .I1(\o_uart_buffer[56]_i_12_n_0 ),
        .I2(\o_uart_buffer[51]_i_25_n_0 ),
        .I3(\o_uart_buffer[49]_i_11_n_0 ),
        .I4(\o_uart_buffer[49]_i_12_n_0 ),
        .I5(\o_uart_buffer[57]_i_21_n_0 ),
        .O(\o_uart_buffer[51]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_uart_buffer[51]_i_18 
       (.I0(r_pad1_state[0]),
        .I1(r_pad1_state[1]),
        .O(\o_uart_buffer[51]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \o_uart_buffer[51]_i_19 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_pad1_state[0]),
        .I2(r_pad1_state[1]),
        .O(\o_uart_buffer[51]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \o_uart_buffer[51]_i_2 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(r_pad1_state[1]),
        .I3(r_pad1_state[0]),
        .I4(\r_pad2_state_reg[1]_1 ),
        .I5(\r_pad2_state_reg[0]_0 ),
        .O(\o_uart_buffer[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFDCEF)) 
    \o_uart_buffer[51]_i_20 
       (.I0(\o_uart_buffer[56]_i_13_n_0 ),
        .I1(\o_uart_buffer[51]_i_26_n_0 ),
        .I2(\o_uart_buffer[48]_i_6_n_0 ),
        .I3(\o_uart_buffer[51]_i_27_n_0 ),
        .I4(\o_uart_buffer[57]_i_15_n_0 ),
        .I5(\o_uart_buffer[51]_i_28_n_0 ),
        .O(\o_uart_buffer[51]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \o_uart_buffer[51]_i_21 
       (.I0(\o_uart_buffer[51]_i_29_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_state_reg[0]_0 ),
        .I3(\r_pad2_state_reg[1]_1 ),
        .I4(\r_ball_state_reg[1]_0 ),
        .O(\o_uart_buffer[51]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h54268DC8)) 
    \o_uart_buffer[51]_i_22 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[0]),
        .I3(r_message_index[1]),
        .I4(r_message_index[3]),
        .O(\o_uart_buffer[51]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9969969966966966)) 
    \o_uart_buffer[51]_i_23 
       (.I0(w_Paddle_size[1]),
        .I1(r_old2_pos__0[1]),
        .I2(r_old2_pos__0[0]),
        .I3(w_Paddle_size[0]),
        .I4(r_pad2_step__0[0]),
        .I5(r_pad2_step__0[1]),
        .O(\o_uart_buffer[51]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA5A5FFED7BB796A5)) 
    \o_uart_buffer[51]_i_24 
       (.I0(\o_uart_buffer[58]_i_6_n_0 ),
        .I1(\o_uart_buffer[57]_i_16_n_0 ),
        .I2(\o_uart_buffer[57]_i_17_n_0 ),
        .I3(\o_uart_buffer[49]_i_20_n_0 ),
        .I4(\o_uart_buffer[57]_i_6_n_0 ),
        .I5(\o_uart_buffer[56]_i_17_n_0 ),
        .O(\o_uart_buffer[51]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hDB2424DB24DBDB24)) 
    \o_uart_buffer[51]_i_25 
       (.I0(r_pad1_step__0[0]),
        .I1(w_Paddle_size[0]),
        .I2(\r_old1_pos_reg[5]_0 [0]),
        .I3(\r_old1_pos_reg[5]_0 [1]),
        .I4(w_Paddle_size[1]),
        .I5(r_pad1_step__0[1]),
        .O(\o_uart_buffer[51]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_uart_buffer[51]_i_26 
       (.I0(\o_uart_buffer[57]_i_34_n_0 ),
        .I1(\o_uart_buffer[57]_i_35_n_0 ),
        .I2(\r_pad1_new_pos_reg_n_0_[5] ),
        .O(\o_uart_buffer[51]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hDB2424DB24DBDB24)) 
    \o_uart_buffer[51]_i_27 
       (.I0(r_pad1_step__0[0]),
        .I1(w_Paddle_size[0]),
        .I2(\r_pad1_new_pos_reg[1]_0 [0]),
        .I3(\r_pad1_new_pos_reg[1]_0 [1]),
        .I4(w_Paddle_size[1]),
        .I5(r_pad1_step__0[1]),
        .O(\o_uart_buffer[51]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h81B0490DFFFFFFFF)) 
    \o_uart_buffer[51]_i_28 
       (.I0(\o_uart_buffer[56]_i_18_n_0 ),
        .I1(\o_uart_buffer[57]_i_5_n_0 ),
        .I2(\o_uart_buffer[56]_i_19_n_0 ),
        .I3(\o_uart_buffer[50]_i_17_n_0 ),
        .I4(\o_uart_buffer[57]_i_10_n_0 ),
        .I5(r_pad1_state[1]),
        .O(\o_uart_buffer[51]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hA28AAAA8A8A22AAA)) 
    \o_uart_buffer[51]_i_29 
       (.I0(r_ball_state),
        .I1(\r_ball_pre_y_reg[1]_0 ),
        .I2(\r_ball_pre_y_reg[2]_0 ),
        .I3(\r_ball_pre_y_reg_n_0_[5] ),
        .I4(\r_ball_pre_y_reg_n_0_[4] ),
        .I5(\r_ball_pre_y_reg_n_0_[3] ),
        .O(\o_uart_buffer[51]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hE00C0C0EE00CC00E)) 
    \o_uart_buffer[51]_i_3 
       (.I0(\o_uart_buffer[51]_i_7_n_0 ),
        .I1(\o_uart_buffer[51]_i_8_n_0 ),
        .I2(\o_uart_buffer[51]_i_9_n_0 ),
        .I3(\o_uart_buffer[56]_i_4_n_0 ),
        .I4(\o_uart_buffer[51]_i_10_n_0 ),
        .I5(\o_uart_buffer[51]_i_11_n_0 ),
        .O(\o_uart_buffer[51]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF200FFFF)) 
    \o_uart_buffer[51]_i_4 
       (.I0(\o_uart_buffer[51]_i_12_n_0 ),
        .I1(\o_uart_buffer[51]_i_13_n_0 ),
        .I2(\o_uart_buffer[51]_i_14_n_0 ),
        .I3(\r_ball_state_reg[0]_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(\o_uart_buffer_reg[51]_0 ),
        .O(\o_uart_buffer[51]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    \o_uart_buffer[51]_i_5 
       (.I0(\o_uart_buffer[51]_i_16_n_0 ),
        .I1(\o_uart_buffer[51]_i_17_n_0 ),
        .I2(\o_uart_buffer[51]_i_18_n_0 ),
        .I3(\o_uart_buffer[51]_i_19_n_0 ),
        .I4(\o_uart_buffer[51]_i_20_n_0 ),
        .I5(\o_uart_buffer[51]_i_21_n_0 ),
        .O(\o_uart_buffer[51]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \o_uart_buffer[51]_i_6 
       (.I0(\o_uart_buffer[33]_i_5_n_0 ),
        .I1(\r_message_index[2]_i_2_n_0 ),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(\o_uart_buffer[51]_i_22_n_0 ),
        .O(\o_uart_buffer[51]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_uart_buffer[51]_i_7 
       (.I0(r_pad2_step__0[0]),
        .I1(\r_pad2_new_pos_reg_n_0_[0] ),
        .I2(w_Paddle_size[0]),
        .O(\o_uart_buffer[51]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55557DD7FFFFFFFF)) 
    \o_uart_buffer[51]_i_8 
       (.I0(\o_uart_buffer[57]_i_27_n_0 ),
        .I1(w_Paddle_size[0]),
        .I2(\r_pad2_new_pos_reg_n_0_[0] ),
        .I3(r_pad2_step__0[0]),
        .I4(\o_uart_buffer[50]_i_6_n_0 ),
        .I5(\o_uart_buffer[50]_i_7_n_0 ),
        .O(\o_uart_buffer[51]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hA596965A)) 
    \o_uart_buffer[51]_i_9 
       (.I0(\o_uart_buffer[58]_i_9_n_0 ),
        .I1(\o_uart_buffer[57]_i_25_n_0 ),
        .I2(\o_uart_buffer[57]_i_28_n_0 ),
        .I3(\o_uart_buffer[51]_i_10_n_0 ),
        .I4(\o_uart_buffer[57]_i_8_n_0 ),
        .O(\o_uart_buffer[51]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \o_uart_buffer[52]_i_1 
       (.I0(\o_uart_count[3]_i_4_n_0 ),
        .I1(\o_uart_count[3]_i_5_n_0 ),
        .I2(\o_uart_count[3]_i_7_n_0 ),
        .O(\o_uart_buffer[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEAAAEA)) 
    \o_uart_buffer[52]_i_2 
       (.I0(\o_uart_buffer[74]_i_4_n_0 ),
        .I1(\o_uart_buffer[52]_i_3_n_0 ),
        .I2(\r_over_state_reg_n_0_[0] ),
        .I3(\r_over_state_reg_n_0_[1] ),
        .I4(\o_uart_buffer[52]_i_4_n_0 ),
        .I5(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[52]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \o_uart_buffer[52]_i_3 
       (.I0(r_send_pending_reg_0),
        .I1(w_TX_ready),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .O(\o_uart_buffer[52]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDDE3FFE)) 
    \o_uart_buffer[52]_i_4 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[52]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \o_uart_buffer[53]_i_1 
       (.I0(\o_uart_buffer[53]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_3_n_0 ),
        .I2(\o_uart_buffer[53]_i_3_n_0 ),
        .I3(\o_uart_count[3]_i_7_n_0 ),
        .O(\o_uart_buffer[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC81692)) 
    \o_uart_buffer[53]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880008888)) 
    \o_uart_buffer[53]_i_3 
       (.I0(r_screen_render_state[1]),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_over_state_reg_n_0_[0] ),
        .I3(\r_over_state_reg_n_0_[1] ),
        .I4(\o_uart_buffer_reg[54]_0 ),
        .I5(r_screen_render_state[0]),
        .O(\o_uart_buffer[53]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAFAAABA)) 
    \o_uart_buffer[54]_i_1 
       (.I0(\o_uart_buffer[54]_i_2_n_0 ),
        .I1(\o_uart_buffer_reg[54]_0 ),
        .I2(CPU_RESETN_IBUF),
        .I3(r_screen_render_state[0]),
        .I4(r_screen_render_state[1]),
        .I5(\o_uart_count[3]_i_6_n_0 ),
        .O(\o_uart_buffer[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000421684)) 
    \o_uart_buffer[54]_i_2 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF11F1)) 
    \o_uart_buffer[56]_i_1 
       (.I0(\o_uart_buffer[56]_i_2_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .I3(\o_uart_buffer[56]_i_3_n_0 ),
        .I4(\o_uart_buffer[66]_i_2_n_0 ),
        .O(\o_uart_buffer[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA6AAAA)) 
    \o_uart_buffer[56]_i_10 
       (.I0(\o_uart_buffer[51]_i_23_n_0 ),
        .I1(\o_uart_buffer[49]_i_7_n_0 ),
        .I2(\o_uart_buffer[49]_i_18_n_0 ),
        .I3(r_old2_pos__0[4]),
        .I4(\o_uart_buffer[49]_i_19_n_0 ),
        .I5(r_old2_pos__0[5]),
        .O(\o_uart_buffer[56]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC30C33C34C34C34C)) 
    \o_uart_buffer[56]_i_11 
       (.I0(\o_uart_buffer[57]_i_33_n_0 ),
        .I1(r_old2_pos__0[5]),
        .I2(r_old2_pos__0[4]),
        .I3(\o_uart_buffer[49]_i_19_n_0 ),
        .I4(\o_uart_buffer[49]_i_18_n_0 ),
        .I5(\o_uart_buffer[56]_i_16_n_0 ),
        .O(\o_uart_buffer[56]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF216900FF697B00)) 
    \o_uart_buffer[56]_i_12 
       (.I0(\o_uart_buffer[58]_i_6_n_0 ),
        .I1(\o_uart_buffer[57]_i_16_n_0 ),
        .I2(\o_uart_buffer[57]_i_17_n_0 ),
        .I3(\o_uart_buffer[56]_i_17_n_0 ),
        .I4(\o_uart_buffer[57]_i_6_n_0 ),
        .I5(\o_uart_buffer[49]_i_20_n_0 ),
        .O(\o_uart_buffer[56]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h8EAE8A8E)) 
    \o_uart_buffer[56]_i_13 
       (.I0(\o_uart_buffer[56]_i_18_n_0 ),
        .I1(\o_uart_buffer[57]_i_5_n_0 ),
        .I2(\o_uart_buffer[56]_i_19_n_0 ),
        .I3(\o_uart_buffer[50]_i_17_n_0 ),
        .I4(\o_uart_buffer[57]_i_10_n_0 ),
        .O(\o_uart_buffer[56]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \o_uart_buffer[56]_i_14 
       (.I0(\o_uart_buffer[56]_i_20_n_0 ),
        .I1(r_ball_state),
        .I2(\o_uart_buffer_reg[49]_0 ),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\o_uart_buffer[49]_i_16_n_0 ),
        .O(\o_uart_buffer[56]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h81177EE8)) 
    \o_uart_buffer[56]_i_15 
       (.I0(\o_uart_buffer[58]_i_17_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[3] ),
        .I2(\o_uart_buffer[58]_i_18_n_0 ),
        .I3(r_pad2_step__0[3]),
        .I4(\r_pad2_new_pos_reg_n_0_[4] ),
        .O(\o_uart_buffer[56]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \o_uart_buffer[56]_i_16 
       (.I0(r_pad2_step__0[2]),
        .I1(\o_uart_buffer[58]_i_28_n_0 ),
        .I2(\o_uart_buffer[58]_i_27_n_0 ),
        .I3(r_old2_pos__0[3]),
        .I4(\o_uart_buffer[58]_i_20_n_0 ),
        .I5(r_pad2_step__0[3]),
        .O(\o_uart_buffer[56]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h599959AA)) 
    \o_uart_buffer[56]_i_17 
       (.I0(\o_uart_buffer[57]_i_18_n_0 ),
        .I1(\o_uart_buffer[58]_i_6_n_0 ),
        .I2(\o_uart_buffer[57]_i_16_n_0 ),
        .I3(\o_uart_buffer[57]_i_17_n_0 ),
        .I4(\o_uart_buffer[57]_i_21_n_0 ),
        .O(\o_uart_buffer[56]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h9995A9A5)) 
    \o_uart_buffer[56]_i_18 
       (.I0(\o_uart_buffer[57]_i_11_n_0 ),
        .I1(\o_uart_buffer[58]_i_7_n_0 ),
        .I2(\o_uart_buffer[57]_i_12_n_0 ),
        .I3(\o_uart_buffer[57]_i_10_n_0 ),
        .I4(\o_uart_buffer[57]_i_15_n_0 ),
        .O(\o_uart_buffer[56]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_uart_buffer[56]_i_19 
       (.I0(\o_uart_buffer[58]_i_7_n_0 ),
        .I1(\o_uart_buffer[57]_i_10_n_0 ),
        .I2(\o_uart_buffer[57]_i_12_n_0 ),
        .O(\o_uart_buffer[56]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D0DD0000)) 
    \o_uart_buffer[56]_i_2 
       (.I0(\o_uart_buffer[51]_i_2_n_0 ),
        .I1(\o_uart_buffer[56]_i_4_n_0 ),
        .I2(\o_uart_buffer[56]_i_5_n_0 ),
        .I3(\r_ball_state_reg[0]_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(\o_uart_buffer[56]_i_7_n_0 ),
        .O(\o_uart_buffer[56]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h2DF224D2)) 
    \o_uart_buffer[56]_i_20 
       (.I0(\r_ball_pre_y_reg_n_0_[4] ),
        .I1(\r_ball_pre_y_reg[2]_0 ),
        .I2(\r_ball_pre_y_reg_n_0_[5] ),
        .I3(\r_ball_pre_y_reg_n_0_[3] ),
        .I4(\r_ball_pre_y_reg[1]_0 ),
        .O(\o_uart_buffer[56]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C71FA2)) 
    \o_uart_buffer[56]_i_3 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[56]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h84960000FFFF96DE)) 
    \o_uart_buffer[56]_i_4 
       (.I0(\o_uart_buffer[58]_i_9_n_0 ),
        .I1(\o_uart_buffer[57]_i_25_n_0 ),
        .I2(\o_uart_buffer[57]_i_28_n_0 ),
        .I3(\o_uart_buffer[51]_i_10_n_0 ),
        .I4(\o_uart_buffer[57]_i_8_n_0 ),
        .I5(\o_uart_buffer[56]_i_8_n_0 ),
        .O(\o_uart_buffer[56]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD3F4DBF69024D036)) 
    \o_uart_buffer[56]_i_5 
       (.I0(\o_uart_buffer[57]_i_29_n_0 ),
        .I1(\o_uart_buffer[57]_i_30_n_0 ),
        .I2(\o_uart_buffer[56]_i_9_n_0 ),
        .I3(\o_uart_buffer[58]_i_10_n_0 ),
        .I4(\o_uart_buffer[56]_i_10_n_0 ),
        .I5(\o_uart_buffer[56]_i_11_n_0 ),
        .O(\o_uart_buffer[56]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \o_uart_buffer[56]_i_6 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(r_pad1_state[1]),
        .I3(r_pad1_state[0]),
        .I4(\r_pad2_state_reg[0]_0 ),
        .I5(\r_pad2_state_reg[1]_1 ),
        .O(\r_ball_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000AABAAFBA)) 
    \o_uart_buffer[56]_i_7 
       (.I0(\o_uart_buffer[58]_i_5_n_0 ),
        .I1(\o_uart_buffer[56]_i_12_n_0 ),
        .I2(r_pad1_state[0]),
        .I3(r_pad1_state[1]),
        .I4(\o_uart_buffer[56]_i_13_n_0 ),
        .I5(\o_uart_buffer[56]_i_14_n_0 ),
        .O(\o_uart_buffer[56]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5AA9AAA9)) 
    \o_uart_buffer[56]_i_8 
       (.I0(\o_uart_buffer[56]_i_15_n_0 ),
        .I1(\o_uart_buffer[57]_i_27_n_0 ),
        .I2(\o_uart_buffer[57]_i_28_n_0 ),
        .I3(\o_uart_buffer[58]_i_9_n_0 ),
        .I4(\o_uart_buffer[57]_i_25_n_0 ),
        .O(\o_uart_buffer[56]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hBDD4422B)) 
    \o_uart_buffer[56]_i_9 
       (.I0(\o_uart_buffer[58]_i_19_n_0 ),
        .I1(r_old2_pos__0[3]),
        .I2(\o_uart_buffer[58]_i_20_n_0 ),
        .I3(r_pad2_step__0[3]),
        .I4(r_old2_pos__0[4]),
        .O(\o_uart_buffer[56]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0D0DFF0D)) 
    \o_uart_buffer[57]_i_1 
       (.I0(\o_uart_buffer[57]_i_2_n_0 ),
        .I1(\o_uart_buffer[57]_i_3_n_0 ),
        .I2(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .I4(\o_uart_buffer[57]_i_4_n_0 ),
        .I5(\o_uart_buffer[73]_i_2_n_0 ),
        .O(\o_uart_buffer[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000EFFFFFFF1)) 
    \o_uart_buffer[57]_i_10 
       (.I0(\o_uart_buffer[48]_i_6_n_0 ),
        .I1(\o_uart_buffer[51]_i_27_n_0 ),
        .I2(\o_uart_buffer[57]_i_34_n_0 ),
        .I3(\o_uart_buffer[57]_i_35_n_0 ),
        .I4(\r_pad1_new_pos_reg_n_0_[5] ),
        .I5(\o_uart_buffer[57]_i_15_n_0 ),
        .O(\o_uart_buffer[57]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h333CCCC2)) 
    \o_uart_buffer[57]_i_11 
       (.I0(\r_pad1_new_pos_reg_n_0_[5] ),
        .I1(\r_pad1_new_pos_reg_n_0_[4] ),
        .I2(\o_uart_buffer[58]_i_14_n_0 ),
        .I3(\r_pad1_new_pos_reg_n_0_[3] ),
        .I4(\o_uart_buffer[57]_i_34_n_0 ),
        .O(\o_uart_buffer[57]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F00EF00F0FF0)) 
    \o_uart_buffer[57]_i_12 
       (.I0(\r_pad1_new_pos_reg_n_0_[5] ),
        .I1(\r_pad1_new_pos_reg_n_0_[4] ),
        .I2(r_pad1_step__0[3]),
        .I3(\o_uart_buffer[58]_i_14_n_0 ),
        .I4(\r_pad1_new_pos_reg_n_0_[3] ),
        .I5(\o_uart_buffer[58]_i_13_n_0 ),
        .O(\o_uart_buffer[57]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h56AAAAA8)) 
    \o_uart_buffer[57]_i_13 
       (.I0(\r_pad1_new_pos_reg_n_0_[5] ),
        .I1(\r_pad1_new_pos_reg_n_0_[3] ),
        .I2(\o_uart_buffer[58]_i_14_n_0 ),
        .I3(\r_pad1_new_pos_reg_n_0_[4] ),
        .I4(\o_uart_buffer[57]_i_34_n_0 ),
        .O(\o_uart_buffer[57]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h777FFFFF)) 
    \o_uart_buffer[57]_i_14 
       (.I0(\r_pad1_new_pos_reg_n_0_[5] ),
        .I1(\r_pad1_new_pos_reg_n_0_[4] ),
        .I2(\o_uart_buffer[58]_i_14_n_0 ),
        .I3(\r_pad1_new_pos_reg_n_0_[3] ),
        .I4(\o_uart_buffer[57]_i_34_n_0 ),
        .O(\o_uart_buffer[57]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \o_uart_buffer[57]_i_15 
       (.I0(\o_uart_buffer[58]_i_23_n_0 ),
        .I1(\o_uart_buffer[58]_i_24_n_0 ),
        .I2(r_pad1_step__0[2]),
        .O(\o_uart_buffer[57]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFF04040400)) 
    \o_uart_buffer[57]_i_16 
       (.I0(\r_old1_pos_reg[5]_0 [5]),
        .I1(\o_uart_buffer[49]_i_21_n_0 ),
        .I2(\o_uart_buffer[49]_i_22_n_0 ),
        .I3(\o_uart_buffer[49]_i_11_n_0 ),
        .I4(\o_uart_buffer[51]_i_25_n_0 ),
        .I5(\o_uart_buffer[57]_i_21_n_0 ),
        .O(\o_uart_buffer[57]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF00F0FF10FF0F00F)) 
    \o_uart_buffer[57]_i_17 
       (.I0(\r_old1_pos_reg[5]_0 [4]),
        .I1(\r_old1_pos_reg[5]_0 [5]),
        .I2(r_pad1_step__0[3]),
        .I3(\o_uart_buffer[58]_i_12_n_0 ),
        .I4(\r_old1_pos_reg[5]_0 [3]),
        .I5(\o_uart_buffer[58]_i_11_n_0 ),
        .O(\o_uart_buffer[57]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h333CCCC2)) 
    \o_uart_buffer[57]_i_18 
       (.I0(\r_old1_pos_reg[5]_0 [5]),
        .I1(\r_old1_pos_reg[5]_0 [4]),
        .I2(\o_uart_buffer[58]_i_12_n_0 ),
        .I3(\r_old1_pos_reg[5]_0 [3]),
        .I4(\o_uart_buffer[49]_i_22_n_0 ),
        .O(\o_uart_buffer[57]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h56AAAAA8)) 
    \o_uart_buffer[57]_i_19 
       (.I0(\r_old1_pos_reg[5]_0 [5]),
        .I1(\r_old1_pos_reg[5]_0 [3]),
        .I2(\o_uart_buffer[58]_i_12_n_0 ),
        .I3(\r_old1_pos_reg[5]_0 [4]),
        .I4(\o_uart_buffer[49]_i_22_n_0 ),
        .O(\o_uart_buffer[57]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55455045)) 
    \o_uart_buffer[57]_i_2 
       (.I0(\o_uart_buffer[58]_i_5_n_0 ),
        .I1(\o_uart_buffer[57]_i_5_n_0 ),
        .I2(r_pad1_state[1]),
        .I3(r_pad1_state[0]),
        .I4(\o_uart_buffer[57]_i_6_n_0 ),
        .I5(\o_uart_buffer[57]_i_7_n_0 ),
        .O(\o_uart_buffer[57]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h777FFFFF)) 
    \o_uart_buffer[57]_i_20 
       (.I0(\r_old1_pos_reg[5]_0 [5]),
        .I1(\r_old1_pos_reg[5]_0 [4]),
        .I2(\o_uart_buffer[58]_i_12_n_0 ),
        .I3(\r_old1_pos_reg[5]_0 [3]),
        .I4(\o_uart_buffer[49]_i_22_n_0 ),
        .O(\o_uart_buffer[57]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \o_uart_buffer[57]_i_21 
       (.I0(\o_uart_buffer[58]_i_21_n_0 ),
        .I1(\o_uart_buffer[58]_i_22_n_0 ),
        .I2(r_pad1_step__0[2]),
        .O(\o_uart_buffer[57]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h73C7)) 
    \o_uart_buffer[57]_i_22 
       (.I0(\r_ball_pre_y_reg[2]_0 ),
        .I1(\r_ball_pre_y_reg_n_0_[4] ),
        .I2(\r_ball_pre_y_reg_n_0_[5] ),
        .I3(\r_ball_pre_y_reg_n_0_[3] ),
        .O(\o_uart_buffer[57]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9555555655565666)) 
    \o_uart_buffer[57]_i_24 
       (.I0(\r_pad2_new_pos_reg_n_0_[5] ),
        .I1(\r_pad2_new_pos_reg_n_0_[4] ),
        .I2(\r_pad2_new_pos_reg_n_0_[3] ),
        .I3(\o_uart_buffer[58]_i_18_n_0 ),
        .I4(\o_uart_buffer[58]_i_17_n_0 ),
        .I5(r_pad2_step__0[3]),
        .O(\o_uart_buffer[57]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA56AAAAAA)) 
    \o_uart_buffer[57]_i_25 
       (.I0(\o_uart_buffer[57]_i_27_n_0 ),
        .I1(\o_uart_buffer[51]_i_7_n_0 ),
        .I2(\o_uart_buffer[50]_i_6_n_0 ),
        .I3(\o_uart_buffer[50]_i_13_n_0 ),
        .I4(\o_uart_buffer[50]_i_14_n_0 ),
        .I5(\r_pad2_new_pos_reg_n_0_[5] ),
        .O(\o_uart_buffer[57]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hC333333D333D3DDD)) 
    \o_uart_buffer[57]_i_26 
       (.I0(\r_pad2_new_pos_reg_n_0_[5] ),
        .I1(\r_pad2_new_pos_reg_n_0_[4] ),
        .I2(\r_pad2_new_pos_reg_n_0_[3] ),
        .I3(\o_uart_buffer[58]_i_18_n_0 ),
        .I4(\o_uart_buffer[58]_i_17_n_0 ),
        .I5(r_pad2_step__0[3]),
        .O(\o_uart_buffer[57]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \o_uart_buffer[57]_i_27 
       (.I0(\o_uart_buffer[58]_i_26_n_0 ),
        .I1(\o_uart_buffer[58]_i_25_n_0 ),
        .I2(r_pad2_step__0[2]),
        .O(\o_uart_buffer[57]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F00FF00F0FF1)) 
    \o_uart_buffer[57]_i_28 
       (.I0(\r_pad2_new_pos_reg_n_0_[5] ),
        .I1(\r_pad2_new_pos_reg_n_0_[4] ),
        .I2(r_pad2_step__0[3]),
        .I3(\o_uart_buffer[58]_i_18_n_0 ),
        .I4(\r_pad2_new_pos_reg_n_0_[3] ),
        .I5(\o_uart_buffer[58]_i_17_n_0 ),
        .O(\o_uart_buffer[57]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h55555555555555A9)) 
    \o_uart_buffer[57]_i_29 
       (.I0(\o_uart_buffer[57]_i_33_n_0 ),
        .I1(\o_uart_buffer[49]_i_7_n_0 ),
        .I2(\o_uart_buffer[51]_i_23_n_0 ),
        .I3(\o_uart_buffer[49]_i_18_n_0 ),
        .I4(\o_uart_buffer[57]_i_36_n_0 ),
        .I5(r_old2_pos__0[5]),
        .O(\o_uart_buffer[57]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3F73333333733333)) 
    \o_uart_buffer[57]_i_3 
       (.I0(\o_uart_buffer[57]_i_8_n_0 ),
        .I1(\r_ball_state_reg[1]_2 ),
        .I2(\r_pad2_state_reg[1]_1 ),
        .I3(\r_pad2_state_reg[0]_0 ),
        .I4(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I5(\o_uart_buffer[57]_i_9_n_0 ),
        .O(\o_uart_buffer[57]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF00F0FF10FF0F00F)) 
    \o_uart_buffer[57]_i_30 
       (.I0(r_old2_pos__0[5]),
        .I1(r_old2_pos__0[4]),
        .I2(r_pad2_step__0[3]),
        .I3(\o_uart_buffer[58]_i_20_n_0 ),
        .I4(r_old2_pos__0[3]),
        .I5(\o_uart_buffer[58]_i_19_n_0 ),
        .O(\o_uart_buffer[57]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h3CD3)) 
    \o_uart_buffer[57]_i_31 
       (.I0(r_old2_pos__0[5]),
        .I1(r_old2_pos__0[4]),
        .I2(\o_uart_buffer[49]_i_19_n_0 ),
        .I3(\o_uart_buffer[49]_i_18_n_0 ),
        .O(\o_uart_buffer[57]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \o_uart_buffer[57]_i_32 
       (.I0(\o_uart_buffer[49]_i_18_n_0 ),
        .I1(\o_uart_buffer[49]_i_19_n_0 ),
        .I2(r_old2_pos__0[4]),
        .O(\o_uart_buffer[57]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_uart_buffer[57]_i_33 
       (.I0(\o_uart_buffer[58]_i_27_n_0 ),
        .I1(\o_uart_buffer[58]_i_28_n_0 ),
        .I2(r_pad2_step__0[2]),
        .O(\o_uart_buffer[57]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFF4D4D004D00FF4D)) 
    \o_uart_buffer[57]_i_34 
       (.I0(\o_uart_buffer[58]_i_23_n_0 ),
        .I1(r_pad1_step__0[2]),
        .I2(\o_uart_buffer[58]_i_24_n_0 ),
        .I3(r_pad1_step__0[3]),
        .I4(\o_uart_buffer[58]_i_14_n_0 ),
        .I5(\r_pad1_new_pos_reg_n_0_[3] ),
        .O(\o_uart_buffer[57]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_uart_buffer[57]_i_35 
       (.I0(\r_pad1_new_pos_reg_n_0_[4] ),
        .I1(\o_uart_buffer[58]_i_14_n_0 ),
        .I2(\r_pad1_new_pos_reg_n_0_[3] ),
        .O(\o_uart_buffer[57]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_uart_buffer[57]_i_36 
       (.I0(r_old2_pos__0[4]),
        .I1(\o_uart_buffer[58]_i_20_n_0 ),
        .I2(r_old2_pos__0[3]),
        .O(\o_uart_buffer[57]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBFEEEE)) 
    \o_uart_buffer[57]_i_4 
       (.I0(r_message_index[4]),
        .I1(r_message_index[2]),
        .I2(r_message_index[3]),
        .I3(r_message_index[1]),
        .I4(r_message_index[0]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[57]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC37FC003C373C00)) 
    \o_uart_buffer[57]_i_5 
       (.I0(\o_uart_buffer[57]_i_10_n_0 ),
        .I1(\o_uart_buffer[57]_i_11_n_0 ),
        .I2(\o_uart_buffer[57]_i_12_n_0 ),
        .I3(\o_uart_buffer[57]_i_13_n_0 ),
        .I4(\o_uart_buffer[57]_i_14_n_0 ),
        .I5(\o_uart_buffer[57]_i_15_n_0 ),
        .O(\o_uart_buffer[57]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF38FF300C38FC300)) 
    \o_uart_buffer[57]_i_6 
       (.I0(\o_uart_buffer[57]_i_16_n_0 ),
        .I1(\o_uart_buffer[57]_i_17_n_0 ),
        .I2(\o_uart_buffer[57]_i_18_n_0 ),
        .I3(\o_uart_buffer[57]_i_19_n_0 ),
        .I4(\o_uart_buffer[57]_i_20_n_0 ),
        .I5(\o_uart_buffer[57]_i_21_n_0 ),
        .O(\o_uart_buffer[57]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF088)) 
    \o_uart_buffer[57]_i_7 
       (.I0(r_ball_state),
        .I1(\o_uart_buffer[57]_i_22_n_0 ),
        .I2(\o_uart_buffer[57]_i_2_0 ),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\o_uart_buffer[49]_i_16_n_0 ),
        .O(\o_uart_buffer[57]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h70507050F050F055)) 
    \o_uart_buffer[57]_i_8 
       (.I0(\o_uart_buffer[57]_i_24_n_0 ),
        .I1(\o_uart_buffer[57]_i_25_n_0 ),
        .I2(\o_uart_buffer[57]_i_26_n_0 ),
        .I3(\o_uart_buffer[58]_i_9_n_0 ),
        .I4(\o_uart_buffer[57]_i_27_n_0 ),
        .I5(\o_uart_buffer[57]_i_28_n_0 ),
        .O(\o_uart_buffer[57]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3C7C700F0C7C700)) 
    \o_uart_buffer[57]_i_9 
       (.I0(\o_uart_buffer[57]_i_29_n_0 ),
        .I1(\o_uart_buffer[57]_i_30_n_0 ),
        .I2(\o_uart_buffer[57]_i_31_n_0 ),
        .I3(\o_uart_buffer[57]_i_32_n_0 ),
        .I4(r_old2_pos__0[5]),
        .I5(\o_uart_buffer[57]_i_33_n_0 ),
        .O(\o_uart_buffer[57]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0D0DFF0D)) 
    \o_uart_buffer[58]_i_1 
       (.I0(\o_uart_buffer[58]_i_2_n_0 ),
        .I1(\o_uart_buffer[58]_i_3_n_0 ),
        .I2(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .I4(\o_uart_buffer[58]_i_4_n_0 ),
        .I5(\o_uart_buffer[74]_i_4_n_0 ),
        .O(\o_uart_buffer[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDD440000000)) 
    \o_uart_buffer[58]_i_10 
       (.I0(\o_uart_buffer[58]_i_19_n_0 ),
        .I1(r_old2_pos__0[3]),
        .I2(\o_uart_buffer[58]_i_20_n_0 ),
        .I3(r_pad2_step__0[3]),
        .I4(r_old2_pos__0[4]),
        .I5(r_old2_pos__0[5]),
        .O(\o_uart_buffer[58]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \o_uart_buffer[58]_i_11 
       (.I0(\o_uart_buffer[58]_i_21_n_0 ),
        .I1(r_pad1_step__0[2]),
        .I2(\o_uart_buffer[58]_i_22_n_0 ),
        .O(\o_uart_buffer[58]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBBBBB2222B2BB)) 
    \o_uart_buffer[58]_i_12 
       (.I0(\r_old1_pos_reg[5]_0 [2]),
        .I1(w_Paddle_size[2]),
        .I2(\r_old1_pos_reg[5]_0 [0]),
        .I3(w_Paddle_size[0]),
        .I4(w_Paddle_size[1]),
        .I5(\r_old1_pos_reg[5]_0 [1]),
        .O(\o_uart_buffer[58]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \o_uart_buffer[58]_i_13 
       (.I0(\o_uart_buffer[58]_i_23_n_0 ),
        .I1(r_pad1_step__0[2]),
        .I2(\o_uart_buffer[58]_i_24_n_0 ),
        .O(\o_uart_buffer[58]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBBBBB2222B2BB)) 
    \o_uart_buffer[58]_i_14 
       (.I0(\r_pad1_new_pos_reg_n_0_[2] ),
        .I1(w_Paddle_size[2]),
        .I2(\r_pad1_new_pos_reg[1]_0 [0]),
        .I3(w_Paddle_size[0]),
        .I4(w_Paddle_size[1]),
        .I5(\r_pad1_new_pos_reg[1]_0 [1]),
        .O(\o_uart_buffer[58]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o_uart_buffer[58]_i_15 
       (.I0(\r_ball_pre_y_reg_n_0_[5] ),
        .I1(\r_ball_pre_y_reg_n_0_[4] ),
        .I2(\r_ball_pre_y_reg_n_0_[3] ),
        .O(\o_uart_buffer[58]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \o_uart_buffer[58]_i_17 
       (.I0(\o_uart_buffer[58]_i_25_n_0 ),
        .I1(r_pad2_step__0[2]),
        .I2(\o_uart_buffer[58]_i_26_n_0 ),
        .O(\o_uart_buffer[58]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA008AEFFFAAEF)) 
    \o_uart_buffer[58]_i_18 
       (.I0(\r_pad2_new_pos_reg_n_0_[2] ),
        .I1(\r_pad2_new_pos_reg_n_0_[0] ),
        .I2(w_Paddle_size[0]),
        .I3(w_Paddle_size[1]),
        .I4(\r_pad2_new_pos_reg_n_0_[1] ),
        .I5(w_Paddle_size[2]),
        .O(\o_uart_buffer[58]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \o_uart_buffer[58]_i_19 
       (.I0(\o_uart_buffer[58]_i_27_n_0 ),
        .I1(\o_uart_buffer[58]_i_28_n_0 ),
        .I2(r_pad2_step__0[2]),
        .O(\o_uart_buffer[58]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55455045)) 
    \o_uart_buffer[58]_i_2 
       (.I0(\o_uart_buffer[58]_i_5_n_0 ),
        .I1(\o_uart_buffer[58]_i_6_n_0 ),
        .I2(r_pad1_state[0]),
        .I3(r_pad1_state[1]),
        .I4(\o_uart_buffer[58]_i_7_n_0 ),
        .I5(\o_uart_buffer[58]_i_8_n_0 ),
        .O(\o_uart_buffer[58]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BBBBB2222BB2B)) 
    \o_uart_buffer[58]_i_20 
       (.I0(r_old2_pos__0[2]),
        .I1(w_Paddle_size[2]),
        .I2(w_Paddle_size[0]),
        .I3(r_old2_pos__0[0]),
        .I4(w_Paddle_size[1]),
        .I5(r_old2_pos__0[1]),
        .O(\o_uart_buffer[58]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009F69F9699FFFF)) 
    \o_uart_buffer[58]_i_21 
       (.I0(w_Paddle_size[1]),
        .I1(\r_old1_pos_reg[5]_0 [1]),
        .I2(\r_old1_pos_reg[5]_0 [0]),
        .I3(w_Paddle_size[0]),
        .I4(r_pad1_step__0[1]),
        .I5(r_pad1_step__0[0]),
        .O(\o_uart_buffer[58]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBB2B44D444D4BB2B)) 
    \o_uart_buffer[58]_i_22 
       (.I0(\r_old1_pos_reg[5]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_old1_pos_reg[5]_0 [0]),
        .I4(\r_old1_pos_reg[5]_0 [2]),
        .I5(w_Paddle_size[2]),
        .O(\o_uart_buffer[58]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009F69F9699FFFF)) 
    \o_uart_buffer[58]_i_23 
       (.I0(w_Paddle_size[1]),
        .I1(\r_pad1_new_pos_reg[1]_0 [1]),
        .I2(\r_pad1_new_pos_reg[1]_0 [0]),
        .I3(w_Paddle_size[0]),
        .I4(r_pad1_step__0[1]),
        .I5(r_pad1_step__0[0]),
        .O(\o_uart_buffer[58]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBB2B44D444D4BB2B)) 
    \o_uart_buffer[58]_i_24 
       (.I0(\r_pad1_new_pos_reg[1]_0 [1]),
        .I1(w_Paddle_size[1]),
        .I2(w_Paddle_size[0]),
        .I3(\r_pad1_new_pos_reg[1]_0 [0]),
        .I4(\r_pad1_new_pos_reg_n_0_[2] ),
        .I5(w_Paddle_size[2]),
        .O(\o_uart_buffer[58]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hBF0B40F440F4BF0B)) 
    \o_uart_buffer[58]_i_25 
       (.I0(\r_pad2_new_pos_reg_n_0_[0] ),
        .I1(w_Paddle_size[0]),
        .I2(w_Paddle_size[1]),
        .I3(\r_pad2_new_pos_reg_n_0_[1] ),
        .I4(\r_pad2_new_pos_reg_n_0_[2] ),
        .I5(w_Paddle_size[2]),
        .O(\o_uart_buffer[58]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6FF64BB442240000)) 
    \o_uart_buffer[58]_i_26 
       (.I0(\r_pad2_new_pos_reg_n_0_[0] ),
        .I1(w_Paddle_size[0]),
        .I2(\r_pad2_new_pos_reg_n_0_[1] ),
        .I3(w_Paddle_size[1]),
        .I4(r_pad2_step__0[0]),
        .I5(r_pad2_step__0[1]),
        .O(\o_uart_buffer[58]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9009B44BBDDBFFFF)) 
    \o_uart_buffer[58]_i_27 
       (.I0(r_old2_pos__0[0]),
        .I1(w_Paddle_size[0]),
        .I2(r_old2_pos__0[1]),
        .I3(w_Paddle_size[1]),
        .I4(r_pad2_step__0[0]),
        .I5(r_pad2_step__0[1]),
        .O(\o_uart_buffer[58]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB2BB4D444D44B2BB)) 
    \o_uart_buffer[58]_i_28 
       (.I0(r_old2_pos__0[1]),
        .I1(w_Paddle_size[1]),
        .I2(r_old2_pos__0[0]),
        .I3(w_Paddle_size[0]),
        .I4(r_old2_pos__0[2]),
        .I5(w_Paddle_size[2]),
        .O(\o_uart_buffer[58]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3F73333333733333)) 
    \o_uart_buffer[58]_i_3 
       (.I0(\o_uart_buffer[58]_i_9_n_0 ),
        .I1(\r_ball_state_reg[1]_2 ),
        .I2(\r_pad2_state_reg[1]_1 ),
        .I3(\r_pad2_state_reg[0]_0 ),
        .I4(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I5(\o_uart_buffer[58]_i_10_n_0 ),
        .O(\o_uart_buffer[58]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8D73FA2)) 
    \o_uart_buffer[58]_i_4 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[58]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAE)) 
    \o_uart_buffer[58]_i_5 
       (.I0(\r_ball_state_reg[1]_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_pad1_state[0]),
        .I3(r_pad1_state[1]),
        .I4(r_ball_state),
        .O(\o_uart_buffer[58]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000044DDFFFFFFF)) 
    \o_uart_buffer[58]_i_6 
       (.I0(r_pad1_step__0[3]),
        .I1(\o_uart_buffer[58]_i_11_n_0 ),
        .I2(\r_old1_pos_reg[5]_0 [3]),
        .I3(\o_uart_buffer[58]_i_12_n_0 ),
        .I4(\r_old1_pos_reg[5]_0 [4]),
        .I5(\r_old1_pos_reg[5]_0 [5]),
        .O(\o_uart_buffer[58]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000044DDFFFFFFF)) 
    \o_uart_buffer[58]_i_7 
       (.I0(r_pad1_step__0[3]),
        .I1(\o_uart_buffer[58]_i_13_n_0 ),
        .I2(\r_pad1_new_pos_reg_n_0_[3] ),
        .I3(\o_uart_buffer[58]_i_14_n_0 ),
        .I4(\r_pad1_new_pos_reg_n_0_[4] ),
        .I5(\r_pad1_new_pos_reg_n_0_[5] ),
        .O(\o_uart_buffer[58]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAABAEEFE)) 
    \o_uart_buffer[58]_i_8 
       (.I0(\o_uart_buffer[49]_i_16_n_0 ),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(r_ball_state),
        .I3(\o_uart_buffer[58]_i_15_n_0 ),
        .I4(\o_uart_buffer[58]_i_2_0 ),
        .O(\o_uart_buffer[58]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000001177FFFFFFF)) 
    \o_uart_buffer[58]_i_9 
       (.I0(\o_uart_buffer[58]_i_17_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[3] ),
        .I2(\o_uart_buffer[58]_i_18_n_0 ),
        .I3(r_pad2_step__0[3]),
        .I4(\r_pad2_new_pos_reg_n_0_[4] ),
        .I5(\r_pad2_new_pos_reg_n_0_[5] ),
        .O(\o_uart_buffer[58]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \o_uart_buffer[59]_i_1 
       (.I0(\o_uart_buffer[59]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_3_n_0 ),
        .I2(\o_uart_buffer[74]_i_4_n_0 ),
        .O(\o_uart_buffer[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFC73878)) 
    \o_uart_buffer[59]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[2]),
        .I3(r_message_index[1]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0057)) 
    \o_uart_buffer[5]_i_1 
       (.I0(\r_pad2_state_reg[1]_0 ),
        .I1(\o_uart_buffer[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I4(\o_uart_buffer[5]_i_4_n_0 ),
        .I5(\o_uart_buffer[5]_i_5_n_0 ),
        .O(\o_uart_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h82AA)) 
    \o_uart_buffer[5]_i_2 
       (.I0(\r_ball_state_reg[1]_2 ),
        .I1(\r_pad2_state_reg[1]_1 ),
        .I2(\r_pad2_state_reg[0]_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .O(\r_pad2_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0041)) 
    \o_uart_buffer[5]_i_3 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_pad1_state[1]),
        .I2(r_pad1_state[0]),
        .I3(r_ball_state),
        .O(\o_uart_buffer[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D5F2082)) 
    \o_uart_buffer[5]_i_4 
       (.I0(r_message_index[2]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[1]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F00070F0FF0000)) 
    \o_uart_buffer[5]_i_5 
       (.I0(\r_over_state_reg_n_0_[1] ),
        .I1(\r_over_state_reg_n_0_[0] ),
        .I2(r_screen_render_state[1]),
        .I3(r_screen_render_state[0]),
        .I4(CPU_RESETN_IBUF),
        .I5(\o_uart_buffer_reg[54]_0 ),
        .O(\o_uart_buffer[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[60]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[60]_i_2_n_0 ),
        .O(\o_uart_buffer[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EDDE3FFE)) 
    \o_uart_buffer[60]_i_2 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[60]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[61]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[61]_i_2_n_0 ),
        .O(\o_uart_buffer[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC9403E)) 
    \o_uart_buffer[61]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \o_uart_buffer[62]_i_1 
       (.I0(\o_uart_buffer[78]_i_3_n_0 ),
        .I1(\r_message_index[2]_i_2_n_0 ),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(\o_uart_buffer[62]_i_2_n_0 ),
        .O(\o_uart_buffer[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h0000315E)) 
    \o_uart_buffer[62]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[0]),
        .I4(r_message_index[2]),
        .O(\o_uart_buffer[62]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[64]_i_1 
       (.I0(\o_uart_buffer[73]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[64]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[64]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F9FD11EA)) 
    \o_uart_buffer[64]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[64]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[65]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[65]_i_2_n_0 ),
        .O(\o_uart_buffer[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFDF1EA)) 
    \o_uart_buffer[65]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[65]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_uart_buffer[66]_i_1 
       (.I0(\o_uart_buffer[66]_i_2_n_0 ),
        .I1(\o_uart_buffer[74]_i_2_n_0 ),
        .I2(\o_uart_buffer[66]_i_3_n_0 ),
        .O(\o_uart_buffer[66]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF004000000000)) 
    \o_uart_buffer[66]_i_2 
       (.I0(\r_over_state_reg_n_0_[1] ),
        .I1(\r_over_state_reg_n_0_[0] ),
        .I2(\o_uart_buffer_reg[54]_0 ),
        .I3(r_screen_render_state[0]),
        .I4(CPU_RESETN_IBUF),
        .I5(r_screen_render_state[1]),
        .O(\o_uart_buffer[66]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000001308FA04)) 
    \o_uart_buffer[66]_i_3 
       (.I0(r_message_index[0]),
        .I1(r_message_index[3]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[66]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[67]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[67]_i_2_n_0 ),
        .O(\o_uart_buffer[67]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8BD11EA)) 
    \o_uart_buffer[67]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[67]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[68]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[68]_i_2_n_0 ),
        .O(\o_uart_buffer[68]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EA7EDF7E)) 
    \o_uart_buffer[68]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[2]),
        .I3(r_message_index[4]),
        .I4(r_message_index[0]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[68]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F5DB1EA)) 
    \o_uart_buffer[69]_i_1 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[6]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_buffer[6]_i_2_n_0 ),
        .I2(\o_uart_buffer[6]_i_3_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044044400000400)) 
    \o_uart_buffer[6]_i_2 
       (.I0(r_screen_render_state[1]),
        .I1(r_screen_render_state[0]),
        .I2(\r_ball_state_reg[0]_0 ),
        .I3(\r_ball_state_reg[1]_2 ),
        .I4(\o_uart_buffer[6]_i_4_n_0 ),
        .I5(CPU_RESETN_IBUF),
        .O(\o_uart_buffer[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFEFA918)) 
    \o_uart_buffer[6]_i_3 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500001051)) 
    \o_uart_buffer[6]_i_4 
       (.I0(\o_uart_buffer[51]_i_2_n_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_pad1_state[0]),
        .I3(r_pad1_state[1]),
        .I4(\r_ball_state_reg[1]_0 ),
        .I5(r_ball_state),
        .O(\o_uart_buffer[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[70]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[70]_i_2_n_0 ),
        .O(\o_uart_buffer[70]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFBF1EA)) 
    \o_uart_buffer[70]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[70]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[72]_i_1 
       (.I0(\o_uart_buffer[73]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[72]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CDC9136E)) 
    \o_uart_buffer[72]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[72]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \o_uart_buffer[73]_i_1 
       (.I0(\o_uart_buffer[73]_i_2_n_0 ),
        .I1(\o_uart_count[3]_i_7_n_0 ),
        .I2(\o_uart_buffer[73]_i_3_n_0 ),
        .I3(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCD5CC00000000)) 
    \o_uart_buffer[73]_i_2 
       (.I0(\r_over_state_reg_n_0_[0] ),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_over_state_reg_n_0_[1] ),
        .I3(\o_uart_buffer_reg[54]_0 ),
        .I4(r_screen_render_state[0]),
        .I5(r_screen_render_state[1]),
        .O(\o_uart_buffer[73]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFFB9B6E)) 
    \o_uart_buffer[73]_i_3 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[73]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_uart_buffer[74]_i_1 
       (.I0(\o_uart_buffer[74]_i_2_n_0 ),
        .I1(\o_uart_buffer[74]_i_3_n_0 ),
        .I2(\o_uart_buffer[74]_i_4_n_0 ),
        .O(\o_uart_buffer[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h000000D0)) 
    \o_uart_buffer[74]_i_2 
       (.I0(w_TX_ready),
        .I1(r_send_pending_reg_0),
        .I2(CPU_RESETN_IBUF),
        .I3(r_screen_render_state[0]),
        .I4(r_screen_render_state[1]),
        .O(\o_uart_buffer[74]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000107EAA80)) 
    \o_uart_buffer[74]_i_3 
       (.I0(r_message_index[2]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[3]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[74]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCD0CC00000000)) 
    \o_uart_buffer[74]_i_4 
       (.I0(\r_over_state_reg_n_0_[0] ),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_over_state_reg_n_0_[1] ),
        .I3(\o_uart_buffer_reg[54]_0 ),
        .I4(r_screen_render_state[0]),
        .I5(r_screen_render_state[1]),
        .O(\o_uart_buffer[74]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \o_uart_buffer[75]_i_1 
       (.I0(\o_uart_count[3]_i_4_n_0 ),
        .I1(\o_uart_count[3]_i_5_n_0 ),
        .I2(\o_uart_buffer[43]_i_2_n_0 ),
        .I3(\o_uart_count[3]_i_7_n_0 ),
        .O(\o_uart_buffer[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[75]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[75]_i_3_n_0 ),
        .O(\o_uart_buffer[75]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CD9D136E)) 
    \o_uart_buffer[75]_i_3 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[75]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000BA)) 
    \o_uart_buffer[76]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_send_pending_reg_0),
        .I2(w_TX_ready),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\o_uart_buffer[76]_i_2_n_0 ),
        .O(\o_uart_buffer[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E87EDB7E)) 
    \o_uart_buffer[76]_i_2 
       (.I0(r_message_index[1]),
        .I1(r_message_index[3]),
        .I2(r_message_index[2]),
        .I3(r_message_index[4]),
        .I4(r_message_index[0]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[76]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015739D6E)) 
    \o_uart_buffer[77]_i_1 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \o_uart_buffer[78]_i_1 
       (.I0(\r_message_index[2]_i_2_n_0 ),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(\o_uart_buffer[78]_i_2_n_0 ),
        .I4(\o_uart_buffer[78]_i_3_n_0 ),
        .O(\o_uart_buffer[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h14120220)) 
    \o_uart_buffer[78]_i_2 
       (.I0(r_message_index[4]),
        .I1(r_message_index[1]),
        .I2(r_message_index[3]),
        .I3(r_message_index[0]),
        .I4(r_message_index[2]),
        .O(\o_uart_buffer[78]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCDACC000000CC)) 
    \o_uart_buffer[78]_i_3 
       (.I0(\r_over_state_reg_n_0_[0] ),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_over_state_reg_n_0_[1] ),
        .I3(\o_uart_buffer_reg[54]_0 ),
        .I4(r_screen_render_state[0]),
        .I5(r_screen_render_state[1]),
        .O(\o_uart_buffer[78]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F1BE52A)) 
    \o_uart_buffer[8]_i_1 
       (.I0(r_message_index[1]),
        .I1(r_message_index[0]),
        .I2(r_message_index[3]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[4]_i_2_n_0 ),
        .O(\o_uart_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \o_uart_buffer[9]_i_1 
       (.I0(\o_uart_buffer[53]_i_3_n_0 ),
        .I1(\o_uart_buffer[9]_i_2_n_0 ),
        .I2(\o_uart_count[3]_i_3_n_0 ),
        .O(\o_uart_buffer[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFBEEB2)) 
    \o_uart_buffer[9]_i_2 
       (.I0(r_message_index[3]),
        .I1(r_message_index[1]),
        .I2(r_message_index[0]),
        .I3(r_message_index[2]),
        .I4(r_message_index[4]),
        .I5(\r_message_index[2]_i_2_n_0 ),
        .O(\o_uart_buffer[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[0]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[10]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[11]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[12]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [11]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[13]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [12]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[14]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[16]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[17]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[18]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[19]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[1]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[20]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [18]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[21]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [19]),
        .S(\o_uart_buffer[52]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[22]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[24]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[25]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[26]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[27]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[28]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[29]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[2]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[30]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[32] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[32]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[33] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[33]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [29]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_uart_buffer_reg[33]_i_11 
       (.CI(1'b0),
        .CO({\o_uart_buffer_reg[33]_i_11_n_0 ,\o_uart_buffer_reg[33]_i_11_n_1 ,\o_uart_buffer_reg[33]_i_11_n_2 ,\o_uart_buffer_reg[33]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_uart_buffer[33]_i_20_n_0 ,1'b0,1'b0,\o_uart_buffer[33]_i_21_n_0 }),
        .O(\NLW_o_uart_buffer_reg[33]_i_11_O_UNCONNECTED [3:0]),
        .S({\o_uart_buffer[33]_i_22_n_0 ,\o_uart_buffer[33]_i_23_n_0 ,\o_uart_buffer[33]_i_24_n_0 ,\o_uart_buffer[33]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_uart_buffer_reg[33]_i_7 
       (.CI(\o_uart_buffer_reg[33]_i_11_n_0 ),
        .CO({\NLW_o_uart_buffer_reg[33]_i_7_CO_UNCONNECTED [3:1],\o_uart_buffer_reg[33]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_uart_buffer[33]_i_12_n_0 }),
        .O(\NLW_o_uart_buffer_reg[33]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\o_uart_buffer[33]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[34] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[34]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [30]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[35] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[35]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [31]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[36] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[36]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [32]),
        .S(\o_uart_buffer[52]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[37] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[37]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [33]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[38] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[38]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [34]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[3]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[40] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[40]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [35]),
        .S(\o_uart_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[41] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[41]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [36]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[42] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[42]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [37]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[43] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[43]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [38]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[44] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[44]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [39]),
        .S(\o_uart_buffer[75]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[45] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[45]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [40]),
        .S(\o_uart_buffer[52]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[46] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[46]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[48] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[48]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[49] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[49]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[4]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[50] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[50]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[51] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[51]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [45]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[52] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[52]_i_2_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [46]),
        .S(\o_uart_buffer[52]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[53] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[53]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [47]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[54] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[54]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [48]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[56] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[56]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[57] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[57]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[58] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[58]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[59] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[59]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[5]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[60] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[60]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [53]),
        .S(\o_uart_buffer[75]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[61] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[61]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [54]),
        .S(\o_uart_buffer[75]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[62] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[62]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[64] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[64]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [56]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[65] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[65]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [57]),
        .S(\o_uart_buffer[75]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[66] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[66]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [58]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[67] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[67]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [59]),
        .S(\o_uart_count[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[68] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[68]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [60]),
        .S(\o_uart_buffer[75]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[69] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[69]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[6]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[70] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[70]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [62]),
        .S(\o_uart_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[72] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[72]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[73] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[73]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[74] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[74]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [65]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[75] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[75]_i_2_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [66]),
        .S(\o_uart_buffer[75]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_buffer_reg[76] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[76]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [67]),
        .S(\o_uart_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[77] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[77]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[78] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[78]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[8]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_uart_buffer_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_buffer[9]_i_1_n_0 ),
        .Q(\o_uart_buffer_reg[78]_0 [8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111111111111000)) 
    \o_uart_count[3]_i_1 
       (.I0(\o_uart_count[3]_i_4_n_0 ),
        .I1(\o_uart_count[3]_i_5_n_0 ),
        .I2(r_screen_render_state[1]),
        .I3(CPU_RESETN_IBUF),
        .I4(\o_uart_count[3]_i_6_n_0 ),
        .I5(\o_uart_count[3]_i_7_n_0 ),
        .O(\o_uart_count[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_uart_count[3]_i_2 
       (.I0(\o_uart_count[3]_i_4_n_0 ),
        .I1(\o_uart_count[3]_i_5_n_0 ),
        .O(\o_uart_count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11110010)) 
    \o_uart_count[3]_i_3 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .I2(w_TX_ready),
        .I3(r_send_pending_reg_0),
        .I4(CPU_RESETN_IBUF),
        .O(\o_uart_count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888A888888888888)) 
    \o_uart_count[3]_i_4 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\o_uart_buffer_reg[27]_0 ),
        .I2(r_ball_state),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(\o_uart_count[3]_i_8_n_0 ),
        .I5(\r_pad2_state_reg[1]_0 ),
        .O(\o_uart_count[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0800000F0FF0000)) 
    \o_uart_count[3]_i_5 
       (.I0(\r_over_state_reg_n_0_[1] ),
        .I1(\r_over_state_reg_n_0_[0] ),
        .I2(r_screen_render_state[1]),
        .I3(r_screen_render_state[0]),
        .I4(CPU_RESETN_IBUF),
        .I5(\o_uart_buffer_reg[54]_0 ),
        .O(\o_uart_count[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000400040)) 
    \o_uart_count[3]_i_6 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .I2(w_TX_ready),
        .I3(r_send_pending_reg_0),
        .I4(\r_over_state_reg_n_0_[1] ),
        .I5(\r_over_state_reg_n_0_[0] ),
        .O(\o_uart_count[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \o_uart_count[3]_i_7 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_ball_pre_x_reg[0]_0 ),
        .I2(r_ball_state),
        .I3(\o_uart_count[3]_i_9_n_0 ),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_pad2_state_reg[1]_2 ),
        .O(\o_uart_count[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \o_uart_count[3]_i_8 
       (.I0(CPU_RESETN_IBUF),
        .I1(r_pad1_state[0]),
        .I2(r_pad1_state[1]),
        .O(\o_uart_count[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_uart_count[3]_i_9 
       (.I0(r_pad1_state[1]),
        .I1(r_pad1_state[0]),
        .O(\o_uart_count[3]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_uart_count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_uart_count[3]_i_2_n_0 ),
        .D(\o_uart_count[3]_i_3_n_0 ),
        .Q(w_TX_count),
        .S(\o_uart_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF020002000200)) 
    \r_Pad_chars[1]_i_1 
       (.I0(w_Paddle_size[0]),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(\r_Pad_chars_reg[3]_0 ),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_Pad_chars_reg_n_0_[1] ),
        .O(\r_Pad_chars[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF020002000200)) 
    \r_Pad_chars[2]_i_1 
       (.I0(w_Paddle_size[1]),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(\r_Pad_chars_reg[3]_0 ),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_Pad_chars_reg_n_0_[2] ),
        .O(\r_Pad_chars[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF020002000200)) 
    \r_Pad_chars[3]_i_1 
       (.I0(w_Paddle_size[2]),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(\r_Pad_chars_reg[3]_0 ),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_Pad_chars_reg_n_0_[3] ),
        .O(\r_Pad_chars[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Pad_chars_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Pad_chars[1]_i_1_n_0 ),
        .Q(\r_Pad_chars_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Pad_chars_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Pad_chars[2]_i_1_n_0 ),
        .Q(\r_Pad_chars_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Pad_chars_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Pad_chars[3]_i_1_n_0 ),
        .Q(\r_Pad_chars_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[0]_1 ),
        .Q(\r_ball_pre_x_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[1]_0 ),
        .Q(\r_ball_pre_x_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[2]_1 ),
        .Q(\r_ball_pre_x_reg[2]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[3]_0 ),
        .Q(r_ball_pre_x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[4]_0 ),
        .Q(r_ball_pre_x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[5]_0 ),
        .Q(r_ball_pre_x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[6]_0 ),
        .Q(r_ball_pre_x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_x_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_x_reg[7]_0 ),
        .Q(r_ball_pre_x[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h008A000CFFFFFFFF)) 
    \r_ball_pre_y[5]_i_1 
       (.I0(\r_ball_pre_y[5]_i_3_n_0 ),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(CPU_RESETN_IBUF),
        .O(r_ball_pre_y));
  LUT3 #(
    .INIT(8'h40)) 
    \r_ball_pre_y[5]_i_3 
       (.I0(r_send_pending_reg_0),
        .I1(w_TX_ready),
        .I2(\r_ball_state_reg[1]_0 ),
        .O(\r_ball_pre_y[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F77FFFF)) 
    \r_ball_pre_y[5]_i_4 
       (.I0(\o_uart_buffer_reg[54]_0 ),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(CPU_RESETN_IBUF),
        .I3(\r_ball_pre_x_reg[0]_0 ),
        .I4(\r_ball_state[0]_i_3_n_0 ),
        .I5(\r_ball_pre_y[5]_i_5_n_0 ),
        .O(\r_ball_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_ball_pre_y[5]_i_5 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .I2(r_Game_state[1]),
        .I3(r_Game_state[0]),
        .O(\r_ball_pre_y[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_y_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_y_reg[0]_1 ),
        .Q(\r_ball_pre_y_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_y_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_y_reg[1]_1 ),
        .Q(\r_ball_pre_y_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_y_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_y_reg[2]_1 ),
        .Q(\r_ball_pre_y_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_y_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_y_reg[3]_0 ),
        .Q(\r_ball_pre_y_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_y_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_y_reg[4]_0 ),
        .Q(\r_ball_pre_y_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_pre_y_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_ball_pre_y),
        .D(\r_ball_pre_y_reg[5]_0 ),
        .Q(\r_ball_pre_y_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h10CCCCCC10000000)) 
    \r_ball_state[0]_i_1 
       (.I0(\r_ball_state_reg[1]_0 ),
        .I1(r_ball_state),
        .I2(\r_ball_state[0]_i_2_n_0 ),
        .I3(\r_ball_state_reg[1]_2 ),
        .I4(\r_ball_state[0]_i_3_n_0 ),
        .I5(\r_ball_state_reg[0]_2 ),
        .O(\r_ball_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_ball_state[0]_i_2 
       (.I0(\r_ball_state_reg[0]_3 ),
        .I1(\r_ball_state[0]_i_6_n_0 ),
        .I2(\r_ball_state[0]_i_7_n_0 ),
        .I3(\r_ball_state[0]_i_8_n_0 ),
        .I4(\r_ball_state_reg[0]_4 ),
        .O(\r_ball_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_ball_state[0]_i_3 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .O(\r_ball_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_ball_state[0]_i_6 
       (.I0(r_ball_pre_x[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(r_ball_pre_x[5]),
        .I4(Q[3]),
        .I5(r_ball_pre_x[4]),
        .O(\r_ball_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \r_ball_state[0]_i_7 
       (.I0(r_ball_pre_x[7]),
        .I1(Q[6]),
        .I2(r_ball_pre_x[6]),
        .I3(Q[5]),
        .O(\r_ball_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_ball_state[0]_i_8 
       (.I0(\r_ball_pre_y_reg_n_0_[3] ),
        .I1(\r_ball_state[0]_i_2_0 [2]),
        .I2(\r_ball_state[0]_i_2_0 [3]),
        .I3(\r_ball_pre_y_reg_n_0_[4] ),
        .I4(\r_ball_state[0]_i_2_0 [4]),
        .I5(\r_ball_pre_y_reg_n_0_[5] ),
        .O(\r_ball_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \r_ball_state[1]_i_1 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .I2(\r_ball_state_reg[1]_2 ),
        .I3(r_ball_state),
        .I4(\r_ball_state[1]_i_3_n_0 ),
        .I5(\r_ball_state_reg[1]_0 ),
        .O(\r_ball_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE000000FFFFFFFF)) 
    \r_ball_state[1]_i_3 
       (.I0(\r_ball_state_reg[1]_0 ),
        .I1(r_ball_state),
        .I2(\r_ball_state[0]_i_2_n_0 ),
        .I3(\r_ball_state_reg[1]_2 ),
        .I4(\r_ball_state[0]_i_3_n_0 ),
        .I5(\r_ball_state_reg[0]_2 ),
        .O(\r_ball_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_ball_state[0]_i_1_n_0 ),
        .Q(r_ball_state),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_ball_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_ball_state[1]_i_1_n_0 ),
        .Q(\r_ball_state_reg[1]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFF7F7F70007070)) 
    \r_message_index[0]_i_2 
       (.I0(r_wait_state),
        .I1(r_message_index[0]),
        .I2(\r_message_index[0]_i_3_n_0 ),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .I5(CPU_RESETN_IBUF),
        .O(\r_message_index[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \r_message_index[0]_i_3 
       (.I0(r_send_pending_reg_0),
        .I1(w_TX_ready),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .O(\r_message_index[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000006)) 
    \r_message_index[1]_i_1 
       (.I0(r_message_index[0]),
        .I1(r_message_index[1]),
        .I2(r_screen_render_state[1]),
        .I3(r_screen_render_state[0]),
        .I4(\r_message_index[2]_i_2_n_0 ),
        .O(\r_message_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010101000000)) 
    \r_message_index[2]_i_1 
       (.I0(r_screen_render_state[1]),
        .I1(r_screen_render_state[0]),
        .I2(\r_message_index[2]_i_2_n_0 ),
        .I3(r_message_index[1]),
        .I4(r_message_index[0]),
        .I5(r_message_index[2]),
        .O(\r_message_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDFDFFFF)) 
    \r_message_index[2]_i_2 
       (.I0(w_TX_ready),
        .I1(r_send_pending_reg_0),
        .I2(r_Game_state[0]),
        .I3(r_Game_state[1]),
        .I4(r_wait_state),
        .O(\r_message_index[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \r_message_index[3]_i_1 
       (.I0(\r_message_index[4]_i_2_n_0 ),
        .I1(r_message_index[0]),
        .I2(r_message_index[1]),
        .I3(r_message_index[2]),
        .I4(r_message_index[3]),
        .O(\r_message_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444444444444444)) 
    \r_message_index[4]_i_1 
       (.I0(\r_message_index[4]_i_2_n_0 ),
        .I1(r_message_index[4]),
        .I2(r_message_index[3]),
        .I3(r_message_index[0]),
        .I4(r_message_index[1]),
        .I5(r_message_index[2]),
        .O(\r_message_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_message_index[4]_i_2 
       (.I0(\r_message_index[2]_i_2_n_0 ),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .O(\r_message_index[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_message_index_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_message_index_reg[1]_0 ),
        .D(\r_message_index[0]_i_2_n_0 ),
        .Q(r_message_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_message_index_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_message_index_reg[1]_0 ),
        .D(\r_message_index[1]_i_1_n_0 ),
        .Q(r_message_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_message_index_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_message_index_reg[1]_0 ),
        .D(\r_message_index[2]_i_1_n_0 ),
        .Q(r_message_index[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_message_index_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_message_index_reg[1]_0 ),
        .D(\r_message_index[3]_i_1_n_0 ),
        .Q(r_message_index[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_message_index_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_message_index_reg[1]_0 ),
        .D(\r_message_index[4]_i_1_n_0 ),
        .Q(r_message_index[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_old1_pos[0]_i_1 
       (.I0(\r_pad1_new_pos_reg[1]_0 [0]),
        .I1(\r_old1_pos[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old1_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_old1_pos[1]_i_1 
       (.I0(\r_pad1_new_pos_reg[1]_0 [1]),
        .I1(\r_old1_pos[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old1_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_old1_pos[2]_i_1 
       (.I0(\r_pad1_new_pos_reg_n_0_[2] ),
        .I1(\r_old1_pos[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old1_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_old1_pos[3]_i_1 
       (.I0(\r_pad1_new_pos_reg_n_0_[3] ),
        .I1(\r_old1_pos[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old1_pos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_old1_pos[4]_i_1 
       (.I0(\r_pad1_new_pos_reg_n_0_[4] ),
        .I1(\r_old1_pos[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old1_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAFFFFFFFF)) 
    \r_old1_pos[5]_i_1 
       (.I0(\r_old1_pos[5]_i_3_n_0 ),
        .I1(r_screen_render_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old1_pos[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_old1_pos[5]_i_2 
       (.I0(\r_pad1_new_pos_reg_n_0_[5] ),
        .I1(\r_old1_pos[5]_i_3_n_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old1_pos[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \r_old1_pos[5]_i_3 
       (.I0(\r_pad1_state[1]_i_2_n_0 ),
        .I1(r_pad1_state[0]),
        .I2(r_pad1_state[1]),
        .O(\r_old1_pos[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_old1_pos_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old1_pos[5]_i_1_n_0 ),
        .D(\r_old1_pos[0]_i_1_n_0 ),
        .Q(\r_old1_pos_reg[5]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_old1_pos_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old1_pos[5]_i_1_n_0 ),
        .D(\r_old1_pos[1]_i_1_n_0 ),
        .Q(\r_old1_pos_reg[5]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_old1_pos_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old1_pos[5]_i_1_n_0 ),
        .D(\r_old1_pos[2]_i_1_n_0 ),
        .Q(\r_old1_pos_reg[5]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_old1_pos_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old1_pos[5]_i_1_n_0 ),
        .D(\r_old1_pos[3]_i_1_n_0 ),
        .Q(\r_old1_pos_reg[5]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_old1_pos_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old1_pos[5]_i_1_n_0 ),
        .D(\r_old1_pos[4]_i_1_n_0 ),
        .Q(\r_old1_pos_reg[5]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_old1_pos_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old1_pos[5]_i_1_n_0 ),
        .D(\r_old1_pos[5]_i_2_n_0 ),
        .Q(\r_old1_pos_reg[5]_0 [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AAAAAA08000000)) 
    \r_old2_pos[0]_i_1 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[0] ),
        .I2(\r_old2_pos[5]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old2_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA08000000)) 
    \r_old2_pos[1]_i_1 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[1] ),
        .I2(\r_old2_pos[5]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old2_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA08000000)) 
    \r_old2_pos[2]_i_1 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[2] ),
        .I2(\r_old2_pos[5]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old2_pos[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA08000000)) 
    \r_old2_pos[3]_i_1 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[3] ),
        .I2(\r_old2_pos[5]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old2_pos[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA08000000)) 
    \r_old2_pos[4]_i_1 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[4] ),
        .I2(\r_old2_pos[5]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old2_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA000000A200)) 
    \r_old2_pos[5]_i_1 
       (.I0(\r_old2_pos[5]_i_2_n_0 ),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .I3(CPU_RESETN_IBUF),
        .I4(r_screen_render_state[0]),
        .I5(r_screen_render_state[1]),
        .O(\r_old2_pos[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \r_old2_pos[5]_i_2 
       (.I0(\r_old2_pos[5]_i_4_n_0 ),
        .I1(\r_pad1_state_reg[0]_0 ),
        .I2(\r_ball_state_reg[0]_2 ),
        .O(\r_old2_pos[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA08000000)) 
    \r_old2_pos[5]_i_3 
       (.I0(\r_ball_state[0]_i_3_n_0 ),
        .I1(\r_pad2_new_pos_reg_n_0_[5] ),
        .I2(\r_old2_pos[5]_i_4_n_0 ),
        .I3(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_old2_pos[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \r_old2_pos[5]_i_4 
       (.I0(\r_pad2_state_reg[1]_1 ),
        .I1(\r_pad2_state_reg[0]_0 ),
        .I2(\r_pad2_state[1]_i_2_n_0 ),
        .O(\r_old2_pos[5]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_old2_pos_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old2_pos[5]_i_2_n_0 ),
        .D(\r_old2_pos[0]_i_1_n_0 ),
        .Q(r_old2_pos__0[0]),
        .S(\r_old2_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_old2_pos_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old2_pos[5]_i_2_n_0 ),
        .D(\r_old2_pos[1]_i_1_n_0 ),
        .Q(r_old2_pos__0[1]),
        .S(\r_old2_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_old2_pos_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old2_pos[5]_i_2_n_0 ),
        .D(\r_old2_pos[2]_i_1_n_0 ),
        .Q(r_old2_pos__0[2]),
        .S(\r_old2_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_old2_pos_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old2_pos[5]_i_2_n_0 ),
        .D(\r_old2_pos[3]_i_1_n_0 ),
        .Q(r_old2_pos__0[3]),
        .S(\r_old2_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_old2_pos_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old2_pos[5]_i_2_n_0 ),
        .D(\r_old2_pos[4]_i_1_n_0 ),
        .Q(r_old2_pos__0[4]),
        .S(\r_old2_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_old2_pos_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_old2_pos[5]_i_2_n_0 ),
        .D(\r_old2_pos[5]_i_3_n_0 ),
        .Q(r_old2_pos__0[5]),
        .S(\r_old2_pos[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00200000)) 
    \r_over_state[0]_i_1 
       (.I0(r_screen_render_state[1]),
        .I1(r_screen_render_state[0]),
        .I2(w_TX_ready),
        .I3(r_send_pending_reg_0),
        .I4(\r_over_state[1]_i_2_n_0 ),
        .I5(\r_over_state_reg_n_0_[0] ),
        .O(\r_over_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF20000000)) 
    \r_over_state[1]_i_1 
       (.I0(r_screen_render_state[1]),
        .I1(r_screen_render_state[0]),
        .I2(\o_uart_buffer_reg[54]_0 ),
        .I3(\r_over_state_reg_n_0_[0] ),
        .I4(\r_over_state[1]_i_2_n_0 ),
        .I5(\r_over_state_reg_n_0_[1] ),
        .O(\r_over_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFBBBBBBBBBB)) 
    \r_over_state[1]_i_2 
       (.I0(\o_uart_count[3]_i_6_n_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[1]),
        .I3(r_screen_render_state[0]),
        .I4(r_Game_state[0]),
        .I5(r_Game_state[1]),
        .O(\r_over_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_over_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_over_state[0]_i_1_n_0 ),
        .Q(\r_over_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_over_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_over_state[1]_i_1_n_0 ),
        .Q(\r_over_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \r_pad1_new_pos[5]_i_4 
       (.I0(r_pad1_state[0]),
        .I1(r_pad1_state[1]),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(r_ball_state),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(\r_ball_state[0]_i_3_n_0 ),
        .O(\r_pad1_state_reg[0]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_pad1_new_pos_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\r_pad1_new_pos_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_new_pos_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\r_pad1_new_pos_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_pad1_new_pos_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\r_pad1_new_pos_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_pad1_new_pos_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\r_pad1_new_pos_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_pad1_new_pos_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\r_pad1_new_pos_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_new_pos_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\r_pad1_new_pos_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \r_pad1_state[0]_i_1 
       (.I0(\r_pad1_step_reg[0]_0 ),
        .I1(\r_pad1_state_reg[0]_0 ),
        .I2(\r_pad1_state[1]_i_3_n_0 ),
        .I3(r_pad1_state[0]),
        .O(\r_pad1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \r_pad1_state[1]_i_1 
       (.I0(\r_pad1_state[1]_i_2_n_0 ),
        .I1(r_pad1_state[0]),
        .I2(\r_pad1_state[1]_i_3_n_0 ),
        .I3(r_pad1_state[1]),
        .O(\r_pad1_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \r_pad1_state[1]_i_2 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(\r_ball_state_reg[1]_2 ),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(\r_pad1_state[1]_i_4_n_0 ),
        .O(\r_pad1_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF70)) 
    \r_pad1_state[1]_i_3 
       (.I0(\r_pad1_step[3]_i_6_n_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_pad1_step[3]_i_9_n_0 ),
        .I3(\r_pad1_state[1]_i_5_n_0 ),
        .O(\r_pad1_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \r_pad1_state[1]_i_4 
       (.I0(r_pad1_step__0[3]),
        .I1(\r_Pad_chars_reg_n_0_[3] ),
        .I2(\r_pad1_step[3]_i_8_n_0 ),
        .O(\r_pad1_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0707FF0F)) 
    \r_pad1_state[1]_i_5 
       (.I0(\r_ball_state_reg[1]_2 ),
        .I1(\r_pad1_step[3]_i_4_n_0 ),
        .I2(CPU_RESETN_IBUF),
        .I3(\r_Pad_chars_reg[3]_0 ),
        .I4(r_screen_render_state[0]),
        .I5(r_screen_render_state[1]),
        .O(\r_pad1_state[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_pad1_state[0]_i_1_n_0 ),
        .Q(r_pad1_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_pad1_state[1]_i_1_n_0 ),
        .Q(r_pad1_state[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \r_pad1_step[0]_i_1 
       (.I0(r_pad1_step__0[0]),
        .I1(\r_pad1_step[3]_i_6_n_0 ),
        .I2(\r_pad1_step[3]_i_7_n_0 ),
        .O(\r_pad1_step[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h60FF)) 
    \r_pad1_step[1]_i_1 
       (.I0(r_pad1_step__0[1]),
        .I1(r_pad1_step__0[0]),
        .I2(\r_pad1_step[3]_i_6_n_0 ),
        .I3(\r_pad1_step[3]_i_7_n_0 ),
        .O(\r_pad1_step[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h6A00FFFF)) 
    \r_pad1_step[2]_i_1 
       (.I0(r_pad1_step__0[2]),
        .I1(r_pad1_step__0[0]),
        .I2(r_pad1_step__0[1]),
        .I3(\r_pad1_step[3]_i_6_n_0 ),
        .I4(\r_pad1_step[3]_i_7_n_0 ),
        .O(\r_pad1_step[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA2A)) 
    \r_pad1_step[3]_i_1 
       (.I0(\r_pad1_step[3]_i_2_n_0 ),
        .I1(\r_ball_state[0]_i_3_n_0 ),
        .I2(\r_ball_state_reg[1]_2 ),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(r_ball_state),
        .I5(CPU_RESETN_IBUF),
        .O(\r_pad1_step[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \r_pad1_step[3]_i_10 
       (.I0(r_screen_render_state[0]),
        .I1(r_screen_render_state[1]),
        .I2(\r_ball_state_reg[1]_2 ),
        .I3(\r_ball_state_reg[1]_0 ),
        .I4(r_ball_state),
        .O(\r_pad1_step[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0A00A800FFFFFFFF)) 
    \r_pad1_step[3]_i_2 
       (.I0(\r_pad1_step[3]_i_4_n_0 ),
        .I1(\r_pad1_step_reg[0]_0 ),
        .I2(r_pad1_state[0]),
        .I3(\r_Game_state_reg[1] ),
        .I4(r_pad1_state[1]),
        .I5(CPU_RESETN_IBUF),
        .O(\r_pad1_step[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA0000FFFFFFFF)) 
    \r_pad1_step[3]_i_3 
       (.I0(r_pad1_step__0[3]),
        .I1(r_pad1_step__0[2]),
        .I2(r_pad1_step__0[1]),
        .I3(r_pad1_step__0[0]),
        .I4(\r_pad1_step[3]_i_6_n_0 ),
        .I5(\r_pad1_step[3]_i_7_n_0 ),
        .O(\r_pad1_step[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_pad1_step[3]_i_4 
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .O(\r_pad1_step[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000D000000000)) 
    \r_pad1_step[3]_i_5 
       (.I0(r_Game_state[1]),
        .I1(r_Game_state[0]),
        .I2(w_TX_ready),
        .I3(r_send_pending_reg_0),
        .I4(r_screen_render_state[1]),
        .I5(r_screen_render_state[0]),
        .O(\r_Game_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h60666660)) 
    \r_pad1_step[3]_i_6 
       (.I0(r_pad1_state[0]),
        .I1(r_pad1_state[1]),
        .I2(\r_pad1_step[3]_i_8_n_0 ),
        .I3(\r_Pad_chars_reg_n_0_[3] ),
        .I4(r_pad1_step__0[3]),
        .O(\r_pad1_step[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \r_pad1_step[3]_i_7 
       (.I0(\r_pad1_step[3]_i_9_n_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_pad1_state[1]),
        .I3(r_pad1_state[0]),
        .O(\r_pad1_step[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \r_pad1_step[3]_i_8 
       (.I0(r_pad1_step__0[0]),
        .I1(\r_Pad_chars_reg_n_0_[2] ),
        .I2(r_pad1_step__0[2]),
        .I3(\r_Pad_chars_reg_n_0_[1] ),
        .I4(r_pad1_step__0[1]),
        .O(\r_pad1_step[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \r_pad1_step[3]_i_9 
       (.I0(\r_pad1_step[3]_i_10_n_0 ),
        .I1(\r_pad1_step_reg[0]_0 ),
        .I2(r_pad1_state[0]),
        .I3(r_pad1_state[1]),
        .I4(CPU_RESETN_IBUF),
        .O(\r_pad1_step[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_step_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad1_step[3]_i_2_n_0 ),
        .D(\r_pad1_step[0]_i_1_n_0 ),
        .Q(r_pad1_step__0[0]),
        .R(\r_pad1_step[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_step_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad1_step[3]_i_2_n_0 ),
        .D(\r_pad1_step[1]_i_1_n_0 ),
        .Q(r_pad1_step__0[1]),
        .R(\r_pad1_step[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_step_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad1_step[3]_i_2_n_0 ),
        .D(\r_pad1_step[2]_i_1_n_0 ),
        .Q(r_pad1_step__0[2]),
        .R(\r_pad1_step[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad1_step_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad1_step[3]_i_2_n_0 ),
        .D(\r_pad1_step[3]_i_3_n_0 ),
        .Q(r_pad1_step__0[3]),
        .R(\r_pad1_step[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \r_pad2_new_pos[0]_i_1 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_state_reg[0]_1 ),
        .I4(\r_pad2_new_pos_reg[5]_1 [0]),
        .I5(\r_pad2_new_pos[5]_i_6_n_0 ),
        .O(\r_pad2_new_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \r_pad2_new_pos[1]_i_1 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_state_reg[0]_1 ),
        .I4(\r_pad2_new_pos_reg[5]_1 [1]),
        .I5(\r_pad2_new_pos[5]_i_6_n_0 ),
        .O(\r_pad2_new_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \r_pad2_new_pos[2]_i_1 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_state_reg[0]_1 ),
        .I4(\r_pad2_new_pos_reg[5]_1 [2]),
        .I5(\r_pad2_new_pos[5]_i_6_n_0 ),
        .O(\r_pad2_new_pos[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \r_pad2_new_pos[3]_i_1 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_state_reg[0]_1 ),
        .I4(\r_pad2_new_pos_reg[5]_1 [3]),
        .I5(\r_pad2_new_pos[5]_i_6_n_0 ),
        .O(\r_pad2_new_pos[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \r_pad2_new_pos[4]_i_1 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_state_reg[0]_1 ),
        .I4(\r_pad2_new_pos_reg[5]_1 [4]),
        .I5(\r_pad2_new_pos[5]_i_6_n_0 ),
        .O(\r_pad2_new_pos[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40400040)) 
    \r_pad2_new_pos[5]_i_1 
       (.I0(\r_pad2_state_reg[0]_1 ),
        .I1(\r_pad1_state_reg[0]_0 ),
        .I2(CPU_RESETN_IBUF),
        .I3(r_screen_render_state[0]),
        .I4(r_screen_render_state[1]),
        .O(\r_pad2_new_pos[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155515111111111)) 
    \r_pad2_new_pos[5]_i_3 
       (.I0(\r_pad2_new_pos[5]_i_5_n_0 ),
        .I1(\r_pad2_new_pos[5]_i_6_n_0 ),
        .I2(\r_pad2_new_pos_reg[5]_0 ),
        .I3(\r_pad2_state_reg[0]_1 ),
        .I4(\r_pad2_new_pos_reg[5]_1 [5]),
        .I5(\r_pad2_new_pos[5]_i_8_n_0 ),
        .O(\r_pad2_new_pos[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7377777773777377)) 
    \r_pad2_new_pos[5]_i_5 
       (.I0(CPU_RESETN_IBUF),
        .I1(\r_ball_state[0]_i_3_n_0 ),
        .I2(r_send_pending_reg_0),
        .I3(w_TX_ready),
        .I4(r_Game_state[0]),
        .I5(r_Game_state[1]),
        .O(\r_pad2_new_pos[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \r_pad2_new_pos[5]_i_6 
       (.I0(\r_ball_state_reg[1]_2 ),
        .I1(\r_pad2_new_pos[5]_i_8_n_0 ),
        .I2(\r_pad2_state_reg[1]_1 ),
        .I3(\r_pad2_state_reg[0]_0 ),
        .I4(CPU_RESETN_IBUF),
        .O(\r_pad2_new_pos[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r_pad2_new_pos[5]_i_8 
       (.I0(r_pad1_state[0]),
        .I1(r_pad1_state[1]),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(r_ball_state),
        .O(\r_pad2_new_pos[5]_i_8_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r_pad2_new_pos_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_new_pos_reg[0]_0 ),
        .D(\r_pad2_new_pos[0]_i_1_n_0 ),
        .Q(\r_pad2_new_pos_reg_n_0_[0] ),
        .S(\r_pad2_new_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_pad2_new_pos_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_new_pos_reg[0]_0 ),
        .D(\r_pad2_new_pos[1]_i_1_n_0 ),
        .Q(\r_pad2_new_pos_reg_n_0_[1] ),
        .S(\r_pad2_new_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r_pad2_new_pos_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_new_pos_reg[0]_0 ),
        .D(\r_pad2_new_pos[2]_i_1_n_0 ),
        .Q(\r_pad2_new_pos_reg_n_0_[2] ),
        .S(\r_pad2_new_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r_pad2_new_pos_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_new_pos_reg[0]_0 ),
        .D(\r_pad2_new_pos[3]_i_1_n_0 ),
        .Q(\r_pad2_new_pos_reg_n_0_[3] ),
        .S(\r_pad2_new_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r_pad2_new_pos_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_new_pos_reg[0]_0 ),
        .D(\r_pad2_new_pos[4]_i_1_n_0 ),
        .Q(\r_pad2_new_pos_reg_n_0_[4] ),
        .S(\r_pad2_new_pos[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_pad2_new_pos_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_new_pos_reg[0]_0 ),
        .D(\r_pad2_new_pos[5]_i_3_n_0 ),
        .Q(\r_pad2_new_pos_reg_n_0_[5] ),
        .S(\r_pad2_new_pos[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_pad2_state[0]_i_1 
       (.I0(\r_pad1_state_reg[0]_0 ),
        .I1(\r_pad2_state_reg[0]_1 ),
        .I2(\r_pad2_state[1]_i_3_n_0 ),
        .I3(\r_pad2_state_reg[0]_0 ),
        .O(\r_pad2_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00FF2000)) 
    \r_pad2_state[1]_i_1 
       (.I0(\r_pad1_state_reg[0]_0 ),
        .I1(\r_pad2_state[1]_i_2_n_0 ),
        .I2(\r_pad2_state_reg[0]_0 ),
        .I3(\r_pad2_state[1]_i_3_n_0 ),
        .I4(\r_pad2_state_reg[1]_1 ),
        .O(\r_pad2_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \r_pad2_state[1]_i_2 
       (.I0(r_pad2_step__0[3]),
        .I1(\r_Pad_chars_reg_n_0_[3] ),
        .I2(\r_pad2_state[1]_i_4_n_0 ),
        .O(\r_pad2_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABBAAAABFBBAAAA)) 
    \r_pad2_state[1]_i_3 
       (.I0(\r_pad2_state[1]_i_5_n_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(\r_pad2_step[3]_i_5_n_0 ),
        .I3(\r_pad2_state[1]_i_6_n_0 ),
        .I4(\r_ball_state[0]_i_3_n_0 ),
        .I5(\r_pad2_new_pos_reg[5]_0 ),
        .O(\r_pad2_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \r_pad2_state[1]_i_4 
       (.I0(r_pad2_step__0[0]),
        .I1(\r_Pad_chars_reg_n_0_[2] ),
        .I2(r_pad2_step__0[2]),
        .I3(\r_Pad_chars_reg_n_0_[1] ),
        .I4(r_pad2_step__0[1]),
        .O(\r_pad2_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h0010BBBB)) 
    \r_pad2_state[1]_i_5 
       (.I0(r_screen_render_state[1]),
        .I1(r_screen_render_state[0]),
        .I2(r_Game_state[0]),
        .I3(r_Game_state[1]),
        .I4(CPU_RESETN_IBUF),
        .O(\r_pad2_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \r_pad2_state[1]_i_6 
       (.I0(\r_ball_state_reg[1]_2 ),
        .I1(r_ball_state),
        .I2(\r_ball_state_reg[1]_0 ),
        .I3(r_pad1_state[1]),
        .I4(r_pad1_state[0]),
        .O(\r_pad2_state[1]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad2_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_pad2_state[0]_i_1_n_0 ),
        .Q(\r_pad2_state_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad2_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_pad2_state[1]_i_1_n_0 ),
        .Q(\r_pad2_state_reg[1]_1 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_pad2_step[0]_i_1 
       (.I0(\r_pad2_step[3]_i_5_n_0 ),
        .I1(\r_pad1_state_reg[0]_0 ),
        .I2(r_pad2_step__0[0]),
        .O(\r_pad2_step[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \r_pad2_step[1]_i_1 
       (.I0(\r_pad2_step[3]_i_5_n_0 ),
        .I1(\r_pad1_state_reg[0]_0 ),
        .I2(r_pad2_step__0[1]),
        .I3(r_pad2_step__0[0]),
        .O(\r_pad2_step[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFFFFBBBB0000)) 
    \r_pad2_step[2]_i_1 
       (.I0(\r_pad2_new_pos_reg[5]_0 ),
        .I1(\r_pad2_step[2]_i_2_n_0 ),
        .I2(\r_pad2_state_reg[1]_1 ),
        .I3(\r_pad2_state_reg[0]_0 ),
        .I4(\r_pad1_state_reg[0]_0 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_pad2_step[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD57F)) 
    \r_pad2_step[2]_i_2 
       (.I0(\r_pad2_step[3]_i_5_n_0 ),
        .I1(r_pad2_step__0[1]),
        .I2(r_pad2_step__0[0]),
        .I3(r_pad2_step__0[2]),
        .O(\r_pad2_step[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0F0D0FFFFFFFF)) 
    \r_pad2_step[3]_i_1 
       (.I0(\r_pad2_step_reg[0]_0 ),
        .I1(\r_pad2_step_reg[0]_1 ),
        .I2(\r_pad1_state_reg[0]_0 ),
        .I3(\r_pad2_state_reg[0]_0 ),
        .I4(\r_pad2_state_reg[1]_1 ),
        .I5(CPU_RESETN_IBUF),
        .O(\r_pad2_step[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0880808080808080)) 
    \r_pad2_step[3]_i_2 
       (.I0(\r_pad2_step[3]_i_5_n_0 ),
        .I1(\r_pad1_state_reg[0]_0 ),
        .I2(r_pad2_step__0[3]),
        .I3(r_pad2_step__0[2]),
        .I4(r_pad2_step__0[1]),
        .I5(r_pad2_step__0[0]),
        .O(\r_pad2_step[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \r_pad2_step[3]_i_5 
       (.I0(\r_pad2_state[1]_i_2_n_0 ),
        .I1(\r_pad2_state_reg[0]_0 ),
        .I2(\r_pad2_state_reg[1]_1 ),
        .O(\r_pad2_step[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad2_step_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_step[3]_i_1_n_0 ),
        .D(\r_pad2_step[0]_i_1_n_0 ),
        .Q(r_pad2_step__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad2_step_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_step[3]_i_1_n_0 ),
        .D(\r_pad2_step[1]_i_1_n_0 ),
        .Q(r_pad2_step__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad2_step_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_step[3]_i_1_n_0 ),
        .D(\r_pad2_step[2]_i_1_n_0 ),
        .Q(r_pad2_step__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pad2_step_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_pad2_step[3]_i_1_n_0 ),
        .D(\r_pad2_step[3]_i_2_n_0 ),
        .Q(r_pad2_step__0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFFF04000000)) 
    \r_screen_render_state[0]_i_1 
       (.I0(r_Game_state[1]),
        .I1(r_Game_state[0]),
        .I2(r_screen_render_state[1]),
        .I3(\o_uart_buffer_reg[54]_0 ),
        .I4(\r_screen_render_state[1]_i_2_n_0 ),
        .I5(r_screen_render_state[0]),
        .O(\r_screen_render_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00FF2000)) 
    \r_screen_render_state[1]_i_1 
       (.I0(r_screen_render_state[0]),
        .I1(r_Game_state[0]),
        .I2(r_Game_state[1]),
        .I3(\r_screen_render_state[1]_i_2_n_0 ),
        .I4(r_screen_render_state[1]),
        .O(\r_screen_render_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \r_screen_render_state[1]_i_2 
       (.I0(r_screen_render_state[0]),
        .I1(\r_screen_render_state[1]_i_3_n_0 ),
        .I2(r_screen_render_state[1]),
        .I3(\r_screen_render_state[1]_i_4_n_0 ),
        .O(\r_screen_render_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \r_screen_render_state[1]_i_3 
       (.I0(r_send_pending_reg_0),
        .I1(w_TX_ready),
        .I2(r_Game_state[0]),
        .I3(r_Game_state[1]),
        .I4(\r_over_state_reg_n_0_[1] ),
        .I5(\r_over_state_reg_n_0_[0] ),
        .O(\r_screen_render_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3333F3F3333B3333)) 
    \r_screen_render_state[1]_i_4 
       (.I0(\o_uart_buffer_reg[54]_0 ),
        .I1(CPU_RESETN_IBUF),
        .I2(r_screen_render_state[0]),
        .I3(r_screen_render_state[1]),
        .I4(r_Game_state[0]),
        .I5(r_Game_state[1]),
        .O(\r_screen_render_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_screen_render_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_screen_render_state[0]_i_1_n_0 ),
        .Q(r_screen_render_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_screen_render_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_screen_render_state[1]_i_1_n_0 ),
        .Q(r_screen_render_state[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFF9)) 
    r_send_pending_i_2
       (.I0(\r_pad2_state_reg[1]_1 ),
        .I1(\r_pad2_state_reg[0]_0 ),
        .I2(r_pad1_state[0]),
        .I3(r_pad1_state[1]),
        .I4(\r_ball_state_reg[1]_0 ),
        .I5(r_ball_state),
        .O(\r_pad2_state_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFFF6FFF6F6F6F6)) 
    r_send_pending_i_3
       (.I0(r_pad1_state[1]),
        .I1(r_pad1_state[0]),
        .I2(r_ball_state),
        .I3(r_send_pending_reg_0),
        .I4(w_TX_ready),
        .I5(CPU_RESETN_IBUF),
        .O(\r_pad1_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD000D0D4)) 
    r_send_pending_i_4
       (.I0(r_send_pending_reg_0),
        .I1(w_TX_ready),
        .I2(CPU_RESETN_IBUF),
        .I3(r_screen_render_state[1]),
        .I4(r_screen_render_state[0]),
        .I5(r_send_pending_i_6_n_0),
        .O(r_send_pending_reg_1));
  LUT6 #(
    .INIT(64'hFEEEEEEEFFEFFFEF)) 
    r_send_pending_i_5
       (.I0(\r_message_index[0]_i_3_n_0 ),
        .I1(\o_uart_count[3]_i_6_n_0 ),
        .I2(\r_ball_state[0]_i_3_n_0 ),
        .I3(r_send_pending_i_7_n_0),
        .I4(\r_ball_state_reg[1]_2 ),
        .I5(r_send_pending_reg_4),
        .O(r_send_pending_reg_2));
  LUT6 #(
    .INIT(64'hBBABAAAAAAAAAAAA)) 
    r_send_pending_i_6
       (.I0(\o_uart_count[3]_i_6_n_0 ),
        .I1(\r_ball_state_reg[1]_2 ),
        .I2(r_send_pending_reg_0),
        .I3(w_TX_ready),
        .I4(CPU_RESETN_IBUF),
        .I5(\r_ball_state[0]_i_3_n_0 ),
        .O(r_send_pending_i_6_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFEFFFFFFFFF)) 
    r_send_pending_i_7
       (.I0(r_ball_state),
        .I1(\r_ball_state_reg[1]_0 ),
        .I2(CPU_RESETN_IBUF),
        .I3(r_pad1_state[0]),
        .I4(r_pad1_state[1]),
        .I5(\r_pad2_state_reg[1]_0 ),
        .O(r_send_pending_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_send_pending_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_send_pending_reg_3),
        .Q(r_send_pending_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_wait_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_wait_state_reg[0]_0 ),
        .Q(r_wait_state),
        .R(1'b0));
endmodule

module modification_module
   (\r_Paddle_size_reg[0]_0 ,
    w_Paddle_size,
    \r_Paddle_size_reg[2]_0 ,
    \r_Paddle_size_reg[2]_1 ,
    \r_Paddle_size_reg[0]_1 ,
    \r_Paddle_size_reg[0]_2 ,
    \r_Paddle_size_reg[2]_2 ,
    \r_Paddle_size_reg[2]_3 ,
    \r_Paddle_size_reg[0]_3 ,
    \r_Paddle_size_reg[0]_4 ,
    \r_Ball_speed_reg[2]_0 ,
    \r_Ball_speed_reg[3]_0 ,
    \r_Paddle_size_reg[1]_0 ,
    \r_Ball_speed_reg[0]_0 ,
    \r_Ball_speed_reg[1]_0 ,
    \r_Message_index_reg[2] ,
    \r_Ball_speed_reg[1]_1 ,
    \r_Ball_speed_reg[0]_1 ,
    \o_Mod_display_state_reg[1]_0 ,
    w_Mod_display_state,
    \o_Mod_display_state_reg[1]_1 ,
    \r_Ball_speed_reg[1]_2 ,
    \r_Ball_speed_reg[1]_3 ,
    \r_Ball_speed_reg[2]_1 ,
    \r_Ball_speed_reg[1]_4 ,
    \r_Ball_speed_reg[1]_5 ,
    \r_Ball_speed_reg[2]_2 ,
    \r_Ball_speed_reg[1]_6 ,
    \o_Mod_display_state_reg[0]_0 ,
    \r_Ball_speed_reg[1]_7 ,
    CLK100MHZ_IBUF_BUFG,
    Q,
    i__carry_i_5,
    i__carry_i_5__1,
    CPU_RESETN_IBUF,
    BTN_IBUF,
    w_idle_state,
    \r_ball_rate_reg[16] ,
    \o_Cathodes_reg[3] ,
    r_Blink,
    \o_Cathodes_reg[5] ,
    \o_Cathodes_reg[5]_0 ,
    w_New_key,
    r_Game_state);
  output \r_Paddle_size_reg[0]_0 ;
  output [2:0]w_Paddle_size;
  output \r_Paddle_size_reg[2]_0 ;
  output \r_Paddle_size_reg[2]_1 ;
  output \r_Paddle_size_reg[0]_1 ;
  output \r_Paddle_size_reg[0]_2 ;
  output \r_Paddle_size_reg[2]_2 ;
  output \r_Paddle_size_reg[2]_3 ;
  output \r_Paddle_size_reg[0]_3 ;
  output \r_Paddle_size_reg[0]_4 ;
  output [16:0]\r_Ball_speed_reg[2]_0 ;
  output [3:0]\r_Ball_speed_reg[3]_0 ;
  output \r_Paddle_size_reg[1]_0 ;
  output \r_Ball_speed_reg[0]_0 ;
  output \r_Ball_speed_reg[1]_0 ;
  output \r_Message_index_reg[2] ;
  output \r_Ball_speed_reg[1]_1 ;
  output \r_Ball_speed_reg[0]_1 ;
  output \o_Mod_display_state_reg[1]_0 ;
  output [1:0]w_Mod_display_state;
  output \o_Mod_display_state_reg[1]_1 ;
  output \r_Ball_speed_reg[1]_2 ;
  output \r_Ball_speed_reg[1]_3 ;
  output \r_Ball_speed_reg[2]_1 ;
  output \r_Ball_speed_reg[1]_4 ;
  output \r_Ball_speed_reg[1]_5 ;
  output \r_Ball_speed_reg[2]_2 ;
  output \r_Ball_speed_reg[1]_6 ;
  output \o_Mod_display_state_reg[0]_0 ;
  output \r_Ball_speed_reg[1]_7 ;
  input CLK100MHZ_IBUF_BUFG;
  input [1:0]Q;
  input [2:0]i__carry_i_5;
  input [2:0]i__carry_i_5__1;
  input CPU_RESETN_IBUF;
  input [4:0]BTN_IBUF;
  input w_idle_state;
  input \r_ball_rate_reg[16] ;
  input \o_Cathodes_reg[3] ;
  input r_Blink;
  input \o_Cathodes_reg[5] ;
  input \o_Cathodes_reg[5]_0 ;
  input w_New_key;
  input [1:0]r_Game_state;

  wire [4:0]BTN_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire [1:0]Q;
  wire button_inputs_inst_n_10;
  wire button_inputs_inst_n_11;
  wire button_inputs_inst_n_12;
  wire button_inputs_inst_n_13;
  wire button_inputs_inst_n_14;
  wire button_inputs_inst_n_3;
  wire button_inputs_inst_n_4;
  wire button_inputs_inst_n_5;
  wire button_inputs_inst_n_6;
  wire button_inputs_inst_n_7;
  wire button_inputs_inst_n_8;
  wire button_inputs_inst_n_9;
  wire [2:0]i__carry_i_5;
  wire [2:0]i__carry_i_5__1;
  wire \o_Cathodes_reg[3] ;
  wire \o_Cathodes_reg[5] ;
  wire \o_Cathodes_reg[5]_0 ;
  wire \o_Mod_display_state[0]_i_1_n_0 ;
  wire \o_Mod_display_state[1]_i_1_n_0 ;
  wire \o_Mod_display_state[1]_i_4_n_0 ;
  wire \o_Mod_display_state_reg[0]_0 ;
  wire \o_Mod_display_state_reg[1]_0 ;
  wire \o_Mod_display_state_reg[1]_1 ;
  wire \r_Ball_speed[3]_i_6_n_0 ;
  wire \r_Ball_speed[3]_i_7_n_0 ;
  wire \r_Ball_speed_reg[0]_0 ;
  wire \r_Ball_speed_reg[0]_1 ;
  wire \r_Ball_speed_reg[1]_0 ;
  wire \r_Ball_speed_reg[1]_1 ;
  wire \r_Ball_speed_reg[1]_2 ;
  wire \r_Ball_speed_reg[1]_3 ;
  wire \r_Ball_speed_reg[1]_4 ;
  wire \r_Ball_speed_reg[1]_5 ;
  wire \r_Ball_speed_reg[1]_6 ;
  wire \r_Ball_speed_reg[1]_7 ;
  wire [16:0]\r_Ball_speed_reg[2]_0 ;
  wire \r_Ball_speed_reg[2]_1 ;
  wire \r_Ball_speed_reg[2]_2 ;
  wire [3:0]\r_Ball_speed_reg[3]_0 ;
  wire r_Blink;
  wire r_Btn_cycle;
  wire r_Btn_inc;
  wire r_Btn_mod_req;
  wire [1:0]r_Game_state;
  wire \r_Message_index_reg[2] ;
  wire \r_Mod_state[0]_i_1_n_0 ;
  wire \r_Mod_state[1]_i_1_n_0 ;
  wire \r_Mod_state_reg_n_0_[0] ;
  wire \r_Mod_state_reg_n_0_[1] ;
  wire \r_Paddle_size[0]_i_1_n_0 ;
  wire \r_Paddle_size[1]_i_1_n_0 ;
  wire \r_Paddle_size[1]_i_3_n_0 ;
  wire \r_Paddle_size[2]_i_1_n_0 ;
  wire \r_Paddle_size_reg[0]_0 ;
  wire \r_Paddle_size_reg[0]_1 ;
  wire \r_Paddle_size_reg[0]_2 ;
  wire \r_Paddle_size_reg[0]_3 ;
  wire \r_Paddle_size_reg[0]_4 ;
  wire \r_Paddle_size_reg[1]_0 ;
  wire \r_Paddle_size_reg[2]_0 ;
  wire \r_Paddle_size_reg[2]_1 ;
  wire \r_Paddle_size_reg[2]_2 ;
  wire \r_Paddle_size_reg[2]_3 ;
  wire \r_ball_rate_reg[16] ;
  wire [1:0]w_Mod_display_state;
  wire w_New_key;
  wire [2:0]w_Paddle_size;
  wire w_idle_state;

  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_r_Game_state[1]_i_3 
       (.I0(w_Mod_display_state[0]),
        .I1(w_New_key),
        .I2(w_Mod_display_state[1]),
        .I3(r_Game_state[0]),
        .I4(r_Game_state[1]),
        .O(\o_Mod_display_state_reg[0]_0 ));
  button_inputs button_inputs_inst
       (.BTN_IBUF(BTN_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(button_inputs_inst_n_5),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D({button_inputs_inst_n_10,button_inputs_inst_n_11,button_inputs_inst_n_12,button_inputs_inst_n_13}),
        .E(button_inputs_inst_n_14),
        .Q(\r_Ball_speed_reg[3]_0 ),
        .o_Increment_reg_0(button_inputs_inst_n_6),
        .o_Increment_reg_1(button_inputs_inst_n_9),
        .o_Mod_state_change_reg_0(button_inputs_inst_n_3),
        .o_Mod_state_change_reg_1(button_inputs_inst_n_4),
        .o_Mod_state_change_reg_2(button_inputs_inst_n_7),
        .o_Mod_state_change_reg_3(button_inputs_inst_n_8),
        .\r_Ball_speed_reg[0] (\r_Mod_state_reg_n_0_[0] ),
        .\r_Ball_speed_reg[0]_0 (\r_Mod_state_reg_n_0_[1] ),
        .\r_Ball_speed_reg[3] (\r_Ball_speed[3]_i_6_n_0 ),
        .\r_Ball_speed_reg[3]_0 (\r_Ball_speed[3]_i_7_n_0 ),
        .r_Btn_cycle(r_Btn_cycle),
        .r_Btn_inc(r_Btn_inc),
        .r_Btn_mod_req(r_Btn_mod_req),
        .\r_Paddle_size_reg[0] (\r_Paddle_size[1]_i_3_n_0 ),
        .\r_Paddle_size_reg[2] (w_Paddle_size[2]),
        .\r_Paddle_size_reg[2]_0 (w_Paddle_size[1]),
        .\r_Paddle_size_reg[2]_1 (w_Paddle_size[0]),
        .w_idle_state(w_idle_state));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    i__carry_i_10
       (.I0(w_Paddle_size[0]),
        .I1(i__carry_i_5[0]),
        .I2(w_Paddle_size[1]),
        .I3(i__carry_i_5[1]),
        .O(\r_Paddle_size_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hF880)) 
    i__carry_i_10__1
       (.I0(w_Paddle_size[0]),
        .I1(i__carry_i_5__1[0]),
        .I2(w_Paddle_size[1]),
        .I3(i__carry_i_5__1[1]),
        .O(\r_Paddle_size_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000077F077FFFFF)) 
    i__carry_i_9
       (.I0(w_Paddle_size[0]),
        .I1(i__carry_i_5[0]),
        .I2(w_Paddle_size[1]),
        .I3(i__carry_i_5[1]),
        .I4(w_Paddle_size[2]),
        .I5(i__carry_i_5[2]),
        .O(\r_Paddle_size_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hD0DDDDDD0000D0DD)) 
    i__carry_i_9__0
       (.I0(w_Paddle_size[2]),
        .I1(i__carry_i_5__1[2]),
        .I2(i__carry_i_5__1[0]),
        .I3(w_Paddle_size[0]),
        .I4(w_Paddle_size[1]),
        .I5(i__carry_i_5__1[1]),
        .O(\r_Paddle_size_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000077F077FFFFF)) 
    i__carry_i_9__1
       (.I0(w_Paddle_size[0]),
        .I1(i__carry_i_5__1[0]),
        .I2(w_Paddle_size[1]),
        .I3(i__carry_i_5__1[1]),
        .I4(w_Paddle_size[2]),
        .I5(i__carry_i_5__1[2]),
        .O(\r_Paddle_size_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_Cathodes[0]_i_2 
       (.I0(\r_Ball_speed_reg[3]_0 [0]),
        .I1(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_Cathodes[0]_i_3 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [3]),
        .O(\r_Ball_speed_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \o_Cathodes[1]_i_6 
       (.I0(w_Paddle_size[1]),
        .I1(w_Paddle_size[2]),
        .I2(w_Paddle_size[0]),
        .O(\r_Paddle_size_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_Cathodes[1]_i_8 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[1]_7 ));
  LUT6 #(
    .INIT(64'h00000000FF6C0000)) 
    \o_Cathodes[3]_i_3 
       (.I0(\r_Ball_speed_reg[3]_0 [0]),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [2]),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\o_Cathodes_reg[3] ),
        .I5(r_Blink),
        .O(\r_Ball_speed_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_Cathodes[4]_i_7 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hA8AAA8AA888888AA)) 
    \o_Cathodes[5]_i_2 
       (.I0(\o_Cathodes_reg[5] ),
        .I1(\o_Cathodes_reg[5]_0 ),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .I4(\r_Ball_speed_reg[3]_0 [3]),
        .I5(\r_Ball_speed_reg[3]_0 [1]),
        .O(\r_Message_index_reg[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \o_Mod_display_state[0]_i_1 
       (.I0(button_inputs_inst_n_4),
        .I1(button_inputs_inst_n_3),
        .I2(w_Mod_display_state[0]),
        .O(\o_Mod_display_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00070500000505)) 
    \o_Mod_display_state[1]_i_1 
       (.I0(button_inputs_inst_n_7),
        .I1(r_Btn_mod_req),
        .I2(button_inputs_inst_n_8),
        .I3(CPU_RESETN_IBUF),
        .I4(\o_Mod_display_state[1]_i_4_n_0 ),
        .I5(w_Mod_display_state[1]),
        .O(\o_Mod_display_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \o_Mod_display_state[1]_i_4 
       (.I0(\r_Mod_state_reg_n_0_[0] ),
        .I1(\r_Mod_state_reg_n_0_[1] ),
        .I2(w_idle_state),
        .O(\o_Mod_display_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_Mod_display_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_Mod_display_state[0]_i_1_n_0 ),
        .Q(w_Mod_display_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_Mod_display_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\o_Mod_display_state[1]_i_1_n_0 ),
        .Q(w_Mod_display_state[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hD22D)) 
    \o_uart_buffer[50]_i_19 
       (.I0(w_Paddle_size[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(w_Paddle_size[1]),
        .O(\r_Paddle_size_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_Ball_speed[3]_i_6 
       (.I0(w_idle_state),
        .I1(\r_Mod_state_reg_n_0_[0] ),
        .I2(\r_Mod_state_reg_n_0_[1] ),
        .O(\r_Ball_speed[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_Ball_speed[3]_i_7 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_Ball_speed_reg[3]_0 [0]),
        .I2(\r_Ball_speed_reg[3]_0 [1]),
        .O(\r_Ball_speed[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Ball_speed_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(button_inputs_inst_n_14),
        .D(button_inputs_inst_n_13),
        .Q(\r_Ball_speed_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Ball_speed_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(button_inputs_inst_n_14),
        .D(button_inputs_inst_n_12),
        .Q(\r_Ball_speed_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_Ball_speed_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(button_inputs_inst_n_14),
        .D(button_inputs_inst_n_11),
        .Q(\r_Ball_speed_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Ball_speed_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(button_inputs_inst_n_14),
        .D(button_inputs_inst_n_10),
        .Q(\r_Ball_speed_reg[3]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5412AAAA54100000)) 
    \r_Mod_state[0]_i_1 
       (.I0(\r_Mod_state_reg_n_0_[0] ),
        .I1(\r_Mod_state_reg_n_0_[1] ),
        .I2(r_Btn_mod_req),
        .I3(r_Btn_cycle),
        .I4(w_idle_state),
        .I5(CPU_RESETN_IBUF),
        .O(\r_Mod_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2204CCCC22000000)) 
    \r_Mod_state[1]_i_1 
       (.I0(\r_Mod_state_reg_n_0_[0] ),
        .I1(\r_Mod_state_reg_n_0_[1] ),
        .I2(r_Btn_mod_req),
        .I3(r_Btn_cycle),
        .I4(w_idle_state),
        .I5(CPU_RESETN_IBUF),
        .O(\r_Mod_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Mod_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Mod_state[0]_i_1_n_0 ),
        .Q(\r_Mod_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Mod_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Mod_state[1]_i_1_n_0 ),
        .Q(\r_Mod_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hC7)) 
    \r_Paddle_size[0]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(button_inputs_inst_n_6),
        .I2(w_Paddle_size[0]),
        .O(\r_Paddle_size[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA6A600FF9999)) 
    \r_Paddle_size[1]_i_1 
       (.I0(w_Paddle_size[0]),
        .I1(r_Btn_inc),
        .I2(w_Paddle_size[2]),
        .I3(CPU_RESETN_IBUF),
        .I4(button_inputs_inst_n_6),
        .I5(w_Paddle_size[1]),
        .O(\r_Paddle_size[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \r_Paddle_size[1]_i_3 
       (.I0(\r_Mod_state_reg_n_0_[0] ),
        .I1(w_idle_state),
        .O(\r_Paddle_size[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \r_Paddle_size[2]_i_1 
       (.I0(\r_Mod_state_reg_n_0_[0] ),
        .I1(w_idle_state),
        .I2(\r_Mod_state_reg_n_0_[1] ),
        .I3(button_inputs_inst_n_9),
        .I4(button_inputs_inst_n_5),
        .I5(w_Paddle_size[2]),
        .O(\r_Paddle_size[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r_Paddle_size_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Paddle_size[0]_i_1_n_0 ),
        .Q(w_Paddle_size[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_Paddle_size_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Paddle_size[1]_i_1_n_0 ),
        .Q(w_Paddle_size[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Paddle_size_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_Paddle_size[2]_i_1_n_0 ),
        .Q(w_Paddle_size[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD0DDDDDD0000D0DD)) 
    r_ball_dir_x2_carry_i_9
       (.I0(w_Paddle_size[2]),
        .I1(i__carry_i_5[2]),
        .I2(i__carry_i_5[0]),
        .I3(w_Paddle_size[0]),
        .I4(w_Paddle_size[1]),
        .I5(i__carry_i_5[1]),
        .O(\r_Paddle_size_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h1AC1FFFF)) 
    \r_ball_rate[0]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_ball_rate_reg[16] ),
        .O(\r_Ball_speed_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hAAAAAA02)) 
    \r_ball_rate[10]_i_1 
       (.I0(\r_ball_rate_reg[16] ),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .I4(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[2]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hE0C000D0)) 
    \r_ball_rate[11]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_ball_rate_reg[16] ),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[2]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h3000B0B0)) 
    \r_ball_rate[12]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [0]),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_ball_rate_reg[16] ),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[2]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hAA082202)) 
    \r_ball_rate[13]_i_1 
       (.I0(\r_ball_rate_reg[16] ),
        .I1(\r_Ball_speed_reg[3]_0 [0]),
        .I2(\r_Ball_speed_reg[3]_0 [1]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .I4(\r_Ball_speed_reg[3]_0 [3]),
        .O(\r_Ball_speed_reg[2]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h2AEB)) 
    \r_ball_rate[14]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [3]),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[1]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h2AA0A0A2)) 
    \r_ball_rate[15]_i_1 
       (.I0(\r_ball_rate_reg[16] ),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .I4(\r_Ball_speed_reg[3]_0 [3]),
        .O(\r_Ball_speed_reg[2]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h280880A2)) 
    \r_ball_rate[16]_i_1 
       (.I0(\r_ball_rate_reg[16] ),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .I4(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[2]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hE359)) 
    \r_ball_rate[17]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [0]),
        .I2(\r_Ball_speed_reg[3]_0 [2]),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .O(\r_Ball_speed_reg[1]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h358B)) 
    \r_ball_rate[18]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [3]),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[1]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hD9EB)) 
    \r_ball_rate[19]_i_2 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [3]),
        .I2(\r_Ball_speed_reg[3]_0 [2]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hF0800090)) 
    \r_ball_rate[1]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [2]),
        .I2(\r_ball_rate_reg[16] ),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h0C0808CC)) 
    \r_ball_rate[20]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [0]),
        .I1(\r_ball_rate_reg[16] ),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .I4(\r_Ball_speed_reg[3]_0 [1]),
        .O(\r_Ball_speed_reg[2]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h00044004)) 
    \r_ball_rate[21]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [3]),
        .I1(\r_ball_rate_reg[16] ),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [1]),
        .I4(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[2]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \r_ball_rate[22]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [3]),
        .I1(\r_ball_rate_reg[16] ),
        .I2(\r_Ball_speed_reg[3]_0 [2]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[2]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \r_ball_rate[23]_i_2 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_ball_rate_reg[16] ),
        .O(\r_Ball_speed_reg[2]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h4E210000)) 
    \r_ball_rate[2]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [0]),
        .I1(\r_Ball_speed_reg[3]_0 [2]),
        .I2(\r_Ball_speed_reg[3]_0 [1]),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_ball_rate_reg[16] ),
        .O(\r_Ball_speed_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hC0C08004)) 
    \r_ball_rate[3]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [0]),
        .I1(\r_ball_rate_reg[16] ),
        .I2(\r_Ball_speed_reg[3]_0 [2]),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_Ball_speed_reg[3]_0 [1]),
        .O(\r_Ball_speed_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h2425)) 
    \r_ball_rate[4]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_Ball_speed_reg[3]_0 [3]),
        .I2(\r_Ball_speed_reg[3]_0 [0]),
        .I3(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hC000888C)) 
    \r_ball_rate[5]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_ball_rate_reg[16] ),
        .I2(\r_Ball_speed_reg[3]_0 [1]),
        .I3(\r_Ball_speed_reg[3]_0 [3]),
        .I4(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h1FD1)) 
    \r_ball_rate[6]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_Ball_speed_reg[3]_0 [0]),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_Ball_speed_reg[3]_0 [1]),
        .O(\r_Ball_speed_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h44040C44)) 
    \r_ball_rate[7]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [1]),
        .I1(\r_ball_rate_reg[16] ),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .I4(\r_Ball_speed_reg[3]_0 [2]),
        .O(\r_Ball_speed_reg[2]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h2008002A)) 
    \r_ball_rate[8]_i_1 
       (.I0(\r_ball_rate_reg[16] ),
        .I1(\r_Ball_speed_reg[3]_0 [2]),
        .I2(\r_Ball_speed_reg[3]_0 [1]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .I4(\r_Ball_speed_reg[3]_0 [3]),
        .O(\r_Ball_speed_reg[2]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h41FD)) 
    \r_ball_rate[9]_i_1 
       (.I0(\r_Ball_speed_reg[3]_0 [2]),
        .I1(\r_Ball_speed_reg[3]_0 [1]),
        .I2(\r_Ball_speed_reg[3]_0 [3]),
        .I3(\r_Ball_speed_reg[3]_0 [0]),
        .O(\r_Ball_speed_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'hFF00FF04)) 
    \r_game_value[1]_i_3 
       (.I0(w_Mod_display_state[1]),
        .I1(w_New_key),
        .I2(w_Mod_display_state[0]),
        .I3(r_Game_state[1]),
        .I4(r_Game_state[0]),
        .O(\o_Mod_display_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FFF1F0F0F)) 
    \r_game_value[1]_i_5 
       (.I0(w_Mod_display_state[1]),
        .I1(w_Mod_display_state[0]),
        .I2(CPU_RESETN_IBUF),
        .I3(r_Game_state[1]),
        .I4(w_New_key),
        .I5(r_Game_state[0]),
        .O(\o_Mod_display_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hDDD00000EEEEEEE0)) 
    \r_p1_paddle_pos[5]_i_9 
       (.I0(w_Paddle_size[2]),
        .I1(i__carry_i_5__1[2]),
        .I2(i__carry_i_5__1[0]),
        .I3(w_Paddle_size[0]),
        .I4(i__carry_i_5__1[1]),
        .I5(w_Paddle_size[1]),
        .O(\r_Paddle_size_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hDDD00000EEEEEEE0)) 
    \r_p2_paddle_pos[5]_i_10 
       (.I0(w_Paddle_size[2]),
        .I1(i__carry_i_5[2]),
        .I2(i__carry_i_5[0]),
        .I3(w_Paddle_size[0]),
        .I4(i__carry_i_5[1]),
        .I5(w_Paddle_size[1]),
        .O(\r_Paddle_size_reg[2]_0 ));
endmodule

(* NotValidForBitStream *)
module pong_top
   (CLK100MHZ,
    CPU_RESETN,
    UART_RXD_OUT,
    UART_TXD_IN,
    BTN,
    AN,
    C,
    LED17_BGR,
    LED16_BGR);
  input CLK100MHZ;
  input CPU_RESETN;
  output UART_RXD_OUT;
  input UART_TXD_IN;
  input [4:0]BTN;
  output [7:0]AN;
  output [7:0]C;
  output [0:2]LED17_BGR;
  output [0:2]LED16_BGR;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire [4:0]BTN;
  wire [4:0]BTN_IBUF;
  wire [7:0]C;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [6:0]C_OBUF;
  wire [0:2]LED16_BGR;
  wire [0:2]LED16_BGR_OBUF;
  wire [0:2]LED17_BGR;
  wire [0:2]LED17_BGR_OBUF;
  wire UART_RXD_OUT;
  wire UART_RXD_OUT_OBUF;
  wire UART_TXD_IN;
  wire UART_TXD_IN_IBUF;
  wire r_Blink;
  wire [1:0]r_Game_state;
  wire u_game_module_n_14;
  wire u_game_module_n_15;
  wire u_game_module_n_16;
  wire u_game_module_n_17;
  wire u_game_module_n_18;
  wire u_game_module_n_19;
  wire u_game_module_n_20;
  wire u_game_module_n_21;
  wire u_game_module_n_22;
  wire u_game_module_n_23;
  wire u_game_module_n_24;
  wire u_game_module_n_25;
  wire u_game_module_n_28;
  wire u_game_module_n_29;
  wire u_game_module_n_30;
  wire u_game_module_n_4;
  wire u_game_module_n_5;
  wire u_modification_module_n_0;
  wire u_modification_module_n_10;
  wire u_modification_module_n_11;
  wire u_modification_module_n_12;
  wire u_modification_module_n_13;
  wire u_modification_module_n_14;
  wire u_modification_module_n_15;
  wire u_modification_module_n_16;
  wire u_modification_module_n_17;
  wire u_modification_module_n_18;
  wire u_modification_module_n_19;
  wire u_modification_module_n_20;
  wire u_modification_module_n_21;
  wire u_modification_module_n_22;
  wire u_modification_module_n_23;
  wire u_modification_module_n_24;
  wire u_modification_module_n_25;
  wire u_modification_module_n_26;
  wire u_modification_module_n_27;
  wire u_modification_module_n_28;
  wire u_modification_module_n_33;
  wire u_modification_module_n_34;
  wire u_modification_module_n_35;
  wire u_modification_module_n_36;
  wire u_modification_module_n_37;
  wire u_modification_module_n_38;
  wire u_modification_module_n_39;
  wire u_modification_module_n_4;
  wire u_modification_module_n_42;
  wire u_modification_module_n_43;
  wire u_modification_module_n_44;
  wire u_modification_module_n_45;
  wire u_modification_module_n_46;
  wire u_modification_module_n_47;
  wire u_modification_module_n_48;
  wire u_modification_module_n_49;
  wire u_modification_module_n_5;
  wire u_modification_module_n_50;
  wire u_modification_module_n_51;
  wire u_modification_module_n_6;
  wire u_modification_module_n_7;
  wire u_modification_module_n_8;
  wire u_modification_module_n_9;
  wire u_uart_module_n_10;
  wire u_uart_module_n_11;
  wire u_uart_module_n_12;
  wire u_uart_module_n_13;
  wire u_uart_module_n_14;
  wire u_uart_module_n_15;
  wire u_uart_module_n_16;
  wire u_uart_module_n_17;
  wire u_uart_module_n_18;
  wire u_uart_module_n_19;
  wire u_uart_module_n_20;
  wire u_uart_module_n_21;
  wire u_uart_module_n_3;
  wire u_uart_module_n_4;
  wire u_uart_module_n_5;
  wire u_uart_module_n_6;
  wire u_uart_module_n_7;
  wire u_uart_module_n_8;
  wire u_uart_module_n_9;
  wire [3:0]w_Ball_speed;
  wire [1:0]w_Mod_display_state;
  wire w_New_key;
  wire [3:0]w_P1_paddle;
  wire [3:0]w_P2_paddle;
  wire [2:0]w_Paddle_size;
  wire [78:0]w_TX_buffer;
  wire [3:3]w_TX_count;
  wire w_TX_ready;
  wire w_TX_send;
  wire w_idle_state;

initial begin
 $sdf_annotate("pong_top_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF \BTN_IBUF[0]_inst 
       (.I(BTN[0]),
        .O(BTN_IBUF[0]));
  IBUF \BTN_IBUF[1]_inst 
       (.I(BTN[1]),
        .O(BTN_IBUF[1]));
  IBUF \BTN_IBUF[2]_inst 
       (.I(BTN[2]),
        .O(BTN_IBUF[2]));
  IBUF \BTN_IBUF[3]_inst 
       (.I(BTN[3]),
        .O(BTN_IBUF[3]));
  IBUF \BTN_IBUF[4]_inst 
       (.I(BTN[4]),
        .O(BTN_IBUF[4]));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  IBUF CPU_RESETN_IBUF_inst
       (.I(CPU_RESETN),
        .O(CPU_RESETN_IBUF));
  OBUF \C_OBUF[0]_inst 
       (.I(C_OBUF[0]),
        .O(C[0]));
  OBUF \C_OBUF[1]_inst 
       (.I(C_OBUF[1]),
        .O(C[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(C_OBUF[2]),
        .O(C[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(C_OBUF[3]),
        .O(C[3]));
  OBUF \C_OBUF[4]_inst 
       (.I(C_OBUF[4]),
        .O(C[4]));
  OBUF \C_OBUF[5]_inst 
       (.I(C_OBUF[5]),
        .O(C[5]));
  OBUF \C_OBUF[6]_inst 
       (.I(C_OBUF[6]),
        .O(C[6]));
  OBUF \C_OBUF[7]_inst 
       (.I(1'b1),
        .O(C[7]));
  OBUF \LED16_BGR_OBUF[0]_inst 
       (.I(LED16_BGR_OBUF[0]),
        .O(LED16_BGR[0]));
  OBUF \LED16_BGR_OBUF[1]_inst 
       (.I(LED16_BGR_OBUF[1]),
        .O(LED16_BGR[1]));
  OBUF \LED16_BGR_OBUF[2]_inst 
       (.I(LED16_BGR_OBUF[2]),
        .O(LED16_BGR[2]));
  OBUF \LED17_BGR_OBUF[0]_inst 
       (.I(LED17_BGR_OBUF[0]),
        .O(LED17_BGR[0]));
  OBUF \LED17_BGR_OBUF[1]_inst 
       (.I(LED17_BGR_OBUF[1]),
        .O(LED17_BGR[1]));
  OBUF \LED17_BGR_OBUF[2]_inst 
       (.I(LED17_BGR_OBUF[2]),
        .O(LED17_BGR[2]));
  OBUF UART_RXD_OUT_OBUF_inst
       (.I(UART_RXD_OUT_OBUF),
        .O(UART_RXD_OUT));
  IBUF UART_TXD_IN_IBUF_inst
       (.I(UART_TXD_IN),
        .O(UART_TXD_IN_IBUF));
  game_module u_game_module
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D({u_uart_module_n_5,u_uart_module_n_6,u_uart_module_n_7,u_uart_module_n_8}),
        .\FSM_sequential_r_Game_state_reg[0]_0 (u_modification_module_n_50),
        .\FSM_sequential_r_play_state_reg[0] (u_game_module_n_25),
        .Q({u_game_module_n_4,u_game_module_n_5}),
        .\o_Anodes_reg[7] (AN_OBUF),
        .\o_Cathodes[1]_i_5 (u_modification_module_n_51),
        .\o_Cathodes_reg[0] (u_modification_module_n_38),
        .\o_Cathodes_reg[0]_0 (u_modification_module_n_35),
        .\o_Cathodes_reg[1] (u_modification_module_n_33),
        .\o_Cathodes_reg[3] (u_modification_module_n_34),
        .\o_Cathodes_reg[4] (u_modification_module_n_37),
        .\o_Cathodes_reg[5] (u_modification_module_n_36),
        .\o_Cathodes_reg[6] (C_OBUF),
        .\o_Cathodes_reg[6]_0 (w_Ball_speed),
        .\o_LED16_bgr_reg[0] ({LED16_BGR_OBUF[0],LED16_BGR_OBUF[1],LED16_BGR_OBUF[2]}),
        .\o_LED17_bgr_reg[0] ({LED17_BGR_OBUF[0],LED17_BGR_OBUF[1],LED17_BGR_OBUF[2]}),
        .\o_uart_buffer[49]_i_13 (u_modification_module_n_0),
        .\o_uart_buffer_reg[54] (u_uart_module_n_3),
        .\o_uart_buffer_reg[78] ({w_TX_buffer[78:72],w_TX_buffer[70:64],w_TX_buffer[62:56],w_TX_buffer[54:48],w_TX_buffer[46:40],w_TX_buffer[38:32],w_TX_buffer[30:24],w_TX_buffer[22:16],w_TX_buffer[14:8],w_TX_buffer[6:0]}),
        .r_Blink(r_Blink),
        .r_Game_state(r_Game_state),
        .\r_Game_state_reg[1] (u_game_module_n_28),
        .\r_Message_index_reg[0] (u_game_module_n_22),
        .\r_Message_index_reg[0]_0 (u_game_module_n_24),
        .\r_Message_index_reg[2] (u_game_module_n_23),
        .\r_Paddle_size_reg[2] (u_game_module_n_17),
        .\r_Paddle_size_reg[2]_0 (u_game_module_n_21),
        .r_ball_dir_x2_carry(u_modification_module_n_5),
        .\r_ball_dir_x2_inferred__0/i__carry (u_modification_module_n_7),
        .\r_ball_dir_x2_inferred__0/i__carry_0 (u_modification_module_n_6),
        .\r_ball_dir_x2_inferred__1/i__carry (u_modification_module_n_9),
        .\r_ball_dir_x2_inferred__2/i__carry (u_modification_module_n_11),
        .\r_ball_dir_x2_inferred__2/i__carry_0 (u_modification_module_n_10),
        .\r_ball_rate_reg[14] (u_modification_module_n_46),
        .\r_ball_rate_reg[17] (u_modification_module_n_49),
        .\r_ball_rate_reg[18] (u_modification_module_n_47),
        .\r_ball_rate_reg[19] (u_modification_module_n_43),
        .\r_ball_rate_reg[23] ({u_modification_module_n_12,u_modification_module_n_13,u_modification_module_n_14,u_modification_module_n_15,u_modification_module_n_16,u_modification_module_n_17,u_modification_module_n_18,u_modification_module_n_19,u_modification_module_n_20,u_modification_module_n_21,u_modification_module_n_22,u_modification_module_n_23,u_modification_module_n_24,u_modification_module_n_25,u_modification_module_n_26,u_modification_module_n_27,u_modification_module_n_28}),
        .\r_ball_rate_reg[4] (u_modification_module_n_44),
        .\r_ball_rate_reg[6] (u_modification_module_n_45),
        .\r_ball_rate_reg[9] (u_modification_module_n_48),
        .\r_game_value_reg[1]_0 (u_modification_module_n_39),
        .\r_game_value_reg[1]_1 (u_modification_module_n_42),
        .\r_p1_paddle_pos[5]_i_6 (u_modification_module_n_8),
        .\r_p1_paddle_pos_reg[0] (u_game_module_n_20),
        .\r_p1_paddle_pos_reg[0]_0 (u_uart_module_n_20),
        .\r_p1_paddle_pos_reg[1] (u_game_module_n_18),
        .\r_p1_paddle_pos_reg[1]_0 (u_game_module_n_30),
        .\r_p1_paddle_pos_reg[2] (u_game_module_n_19),
        .\r_p1_paddle_pos_reg[3] (w_P1_paddle),
        .\r_p1_paddle_pos_reg[3]_0 ({u_uart_module_n_13,u_uart_module_n_14,u_uart_module_n_15,u_uart_module_n_16}),
        .\r_p1_paddle_pos_reg[4] (u_uart_module_n_18),
        .\r_p1_paddle_pos_reg[5] (u_uart_module_n_19),
        .\r_p1_paddle_pos_reg[5]_0 (u_uart_module_n_17),
        .\r_p2_paddle_pos[5]_i_6 (u_modification_module_n_4),
        .\r_p2_paddle_pos[5]_i_7 (u_uart_module_n_21),
        .\r_p2_paddle_pos_reg[0] (u_game_module_n_16),
        .\r_p2_paddle_pos_reg[0]_0 (u_uart_module_n_12),
        .\r_p2_paddle_pos_reg[1] (u_game_module_n_14),
        .\r_p2_paddle_pos_reg[1]_0 (u_game_module_n_29),
        .\r_p2_paddle_pos_reg[2] (u_game_module_n_15),
        .\r_p2_paddle_pos_reg[3] (w_P2_paddle),
        .\r_p2_paddle_pos_reg[4] (u_uart_module_n_10),
        .\r_p2_paddle_pos_reg[5] (u_uart_module_n_11),
        .\r_p2_paddle_pos_reg[5]_0 (u_uart_module_n_9),
        .r_send_pending_reg(u_uart_module_n_4),
        .w_Mod_display_state(w_Mod_display_state),
        .w_New_key(w_New_key),
        .w_Paddle_size(w_Paddle_size),
        .w_TX_count(w_TX_count),
        .w_TX_ready(w_TX_ready),
        .w_TX_send(w_TX_send),
        .w_idle_state(w_idle_state));
  modification_module u_modification_module
       (.BTN_IBUF(BTN_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q({u_game_module_n_4,u_game_module_n_5}),
        .i__carry_i_5(w_P2_paddle[2:0]),
        .i__carry_i_5__1(w_P1_paddle[2:0]),
        .\o_Cathodes_reg[3] (u_game_module_n_22),
        .\o_Cathodes_reg[5] (u_game_module_n_23),
        .\o_Cathodes_reg[5]_0 (u_game_module_n_24),
        .\o_Mod_display_state_reg[0]_0 (u_modification_module_n_50),
        .\o_Mod_display_state_reg[1]_0 (u_modification_module_n_39),
        .\o_Mod_display_state_reg[1]_1 (u_modification_module_n_42),
        .\r_Ball_speed_reg[0]_0 (u_modification_module_n_34),
        .\r_Ball_speed_reg[0]_1 (u_modification_module_n_38),
        .\r_Ball_speed_reg[1]_0 (u_modification_module_n_35),
        .\r_Ball_speed_reg[1]_1 (u_modification_module_n_37),
        .\r_Ball_speed_reg[1]_2 (u_modification_module_n_43),
        .\r_Ball_speed_reg[1]_3 (u_modification_module_n_44),
        .\r_Ball_speed_reg[1]_4 (u_modification_module_n_46),
        .\r_Ball_speed_reg[1]_5 (u_modification_module_n_47),
        .\r_Ball_speed_reg[1]_6 (u_modification_module_n_49),
        .\r_Ball_speed_reg[1]_7 (u_modification_module_n_51),
        .\r_Ball_speed_reg[2]_0 ({u_modification_module_n_12,u_modification_module_n_13,u_modification_module_n_14,u_modification_module_n_15,u_modification_module_n_16,u_modification_module_n_17,u_modification_module_n_18,u_modification_module_n_19,u_modification_module_n_20,u_modification_module_n_21,u_modification_module_n_22,u_modification_module_n_23,u_modification_module_n_24,u_modification_module_n_25,u_modification_module_n_26,u_modification_module_n_27,u_modification_module_n_28}),
        .\r_Ball_speed_reg[2]_1 (u_modification_module_n_45),
        .\r_Ball_speed_reg[2]_2 (u_modification_module_n_48),
        .\r_Ball_speed_reg[3]_0 (w_Ball_speed),
        .r_Blink(r_Blink),
        .r_Game_state(r_Game_state),
        .\r_Message_index_reg[2] (u_modification_module_n_36),
        .\r_Paddle_size_reg[0]_0 (u_modification_module_n_0),
        .\r_Paddle_size_reg[0]_1 (u_modification_module_n_6),
        .\r_Paddle_size_reg[0]_2 (u_modification_module_n_7),
        .\r_Paddle_size_reg[0]_3 (u_modification_module_n_10),
        .\r_Paddle_size_reg[0]_4 (u_modification_module_n_11),
        .\r_Paddle_size_reg[1]_0 (u_modification_module_n_33),
        .\r_Paddle_size_reg[2]_0 (u_modification_module_n_4),
        .\r_Paddle_size_reg[2]_1 (u_modification_module_n_5),
        .\r_Paddle_size_reg[2]_2 (u_modification_module_n_8),
        .\r_Paddle_size_reg[2]_3 (u_modification_module_n_9),
        .\r_ball_rate_reg[16] (u_game_module_n_25),
        .w_Mod_display_state(w_Mod_display_state),
        .w_New_key(w_New_key),
        .w_Paddle_size(w_Paddle_size),
        .w_idle_state(w_idle_state));
  uart_module u_uart_module
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D({u_uart_module_n_5,u_uart_module_n_6,u_uart_module_n_7,u_uart_module_n_8}),
        .UART_RXD_OUT_OBUF(UART_RXD_OUT_OBUF),
        .UART_TXD_IN_IBUF(UART_TXD_IN_IBUF),
        .o_Ready_to_send_reg(u_uart_module_n_3),
        .o_Ready_to_send_reg_0(u_uart_module_n_4),
        .\o_Received_byte_reg[0] (u_uart_module_n_21),
        .\o_Received_byte_reg[2] (u_uart_module_n_17),
        .\o_Received_byte_reg[2]_0 (u_uart_module_n_18),
        .\o_Received_byte_reg[3] (u_uart_module_n_11),
        .\o_Received_byte_reg[3]_0 (u_uart_module_n_12),
        .\o_Received_byte_reg[4] (u_uart_module_n_9),
        .\o_Received_byte_reg[4]_0 (u_uart_module_n_10),
        .\o_Received_byte_reg[4]_1 (u_uart_module_n_19),
        .\o_Received_byte_reg[4]_2 (u_uart_module_n_20),
        .\r_TX_message_reg[78] ({w_TX_buffer[78:72],w_TX_buffer[70:64],w_TX_buffer[62:56],w_TX_buffer[54:48],w_TX_buffer[46:40],w_TX_buffer[38:32],w_TX_buffer[30:24],w_TX_buffer[22:16],w_TX_buffer[14:8],w_TX_buffer[6:0]}),
        .\r_p1_paddle_pos_reg[3] ({u_uart_module_n_13,u_uart_module_n_14,u_uart_module_n_15,u_uart_module_n_16}),
        .\r_p1_paddle_pos_reg[3]_0 (w_P1_paddle),
        .\r_p1_paddle_pos_reg[3]_1 (u_game_module_n_18),
        .\r_p1_paddle_pos_reg[3]_2 (u_game_module_n_30),
        .\r_p1_paddle_pos_reg[3]_3 (u_game_module_n_19),
        .\r_p1_paddle_pos_reg[3]_4 (u_game_module_n_20),
        .\r_p1_paddle_pos_reg[3]_5 (u_game_module_n_21),
        .\r_p1_paddle_pos_reg[3]_6 (u_game_module_n_28),
        .\r_p2_paddle_pos_reg[3] (w_P2_paddle),
        .\r_p2_paddle_pos_reg[3]_0 (u_game_module_n_14),
        .\r_p2_paddle_pos_reg[3]_1 (u_game_module_n_29),
        .\r_p2_paddle_pos_reg[3]_2 (u_game_module_n_15),
        .\r_p2_paddle_pos_reg[3]_3 (u_game_module_n_16),
        .\r_p2_paddle_pos_reg[3]_4 (u_game_module_n_17),
        .w_New_key(w_New_key),
        .w_TX_count(w_TX_count),
        .w_TX_ready(w_TX_ready),
        .w_TX_send(w_TX_send));
endmodule

module receive_uart
   (w_New_key,
    D,
    \o_Received_byte_reg[4]_0 ,
    \o_Received_byte_reg[4]_1 ,
    \o_Received_byte_reg[3]_0 ,
    \o_Received_byte_reg[3]_1 ,
    \r_p1_paddle_pos_reg[3] ,
    \o_Received_byte_reg[2]_0 ,
    \o_Received_byte_reg[2]_1 ,
    \o_Received_byte_reg[4]_2 ,
    \o_Received_byte_reg[4]_3 ,
    \o_Received_byte_reg[0]_0 ,
    UART_TXD_IN_IBUF,
    CLK100MHZ_IBUF_BUFG,
    o_Received_new_byte_reg_0,
    \r_p2_paddle_pos_reg[3] ,
    \r_p2_paddle_pos_reg[3]_0 ,
    \r_p2_paddle_pos_reg[3]_1 ,
    \r_p2_paddle_pos_reg[3]_2 ,
    \r_p2_paddle_pos_reg[3]_3 ,
    \r_p2_paddle_pos_reg[3]_4 ,
    \r_p1_paddle_pos_reg[3]_0 ,
    \r_p1_paddle_pos_reg[3]_1 ,
    \r_p1_paddle_pos_reg[3]_2 ,
    \r_p1_paddle_pos_reg[3]_3 ,
    \r_p1_paddle_pos_reg[3]_4 ,
    \r_p1_paddle_pos_reg[3]_5 ,
    \r_p1_paddle_pos_reg[3]_6 );
  output w_New_key;
  output [3:0]D;
  output \o_Received_byte_reg[4]_0 ;
  output \o_Received_byte_reg[4]_1 ;
  output \o_Received_byte_reg[3]_0 ;
  output \o_Received_byte_reg[3]_1 ;
  output [3:0]\r_p1_paddle_pos_reg[3] ;
  output \o_Received_byte_reg[2]_0 ;
  output \o_Received_byte_reg[2]_1 ;
  output \o_Received_byte_reg[4]_2 ;
  output \o_Received_byte_reg[4]_3 ;
  output \o_Received_byte_reg[0]_0 ;
  input UART_TXD_IN_IBUF;
  input CLK100MHZ_IBUF_BUFG;
  input o_Received_new_byte_reg_0;
  input [3:0]\r_p2_paddle_pos_reg[3] ;
  input \r_p2_paddle_pos_reg[3]_0 ;
  input \r_p2_paddle_pos_reg[3]_1 ;
  input \r_p2_paddle_pos_reg[3]_2 ;
  input \r_p2_paddle_pos_reg[3]_3 ;
  input \r_p2_paddle_pos_reg[3]_4 ;
  input [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  input \r_p1_paddle_pos_reg[3]_1 ;
  input \r_p1_paddle_pos_reg[3]_2 ;
  input \r_p1_paddle_pos_reg[3]_3 ;
  input \r_p1_paddle_pos_reg[3]_4 ;
  input \r_p1_paddle_pos_reg[3]_5 ;
  input \r_p1_paddle_pos_reg[3]_6 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire [3:0]D;
  wire \FSM_sequential_r_RX_state[0]_i_1_n_0 ;
  wire \FSM_sequential_r_RX_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_RX_state[1]_i_1_n_0 ;
  wire \FSM_sequential_r_RX_state[1]_i_3_n_0 ;
  wire \FSM_sequential_r_RX_state[1]_i_4_n_0 ;
  wire \FSM_sequential_r_RX_state[1]_i_5_n_0 ;
  wire \FSM_sequential_r_RX_state[1]_i_6_n_0 ;
  wire UART_TXD_IN_IBUF;
  wire \o_Received_byte[7]_i_1_n_0 ;
  wire \o_Received_byte_reg[0]_0 ;
  wire \o_Received_byte_reg[2]_0 ;
  wire \o_Received_byte_reg[2]_1 ;
  wire \o_Received_byte_reg[3]_0 ;
  wire \o_Received_byte_reg[3]_1 ;
  wire \o_Received_byte_reg[4]_0 ;
  wire \o_Received_byte_reg[4]_1 ;
  wire \o_Received_byte_reg[4]_2 ;
  wire \o_Received_byte_reg[4]_3 ;
  wire o_Received_new_byte_reg_0;
  wire [0:0]r_Bit_index;
  wire \r_Bit_index[0]_i_1_n_0 ;
  wire \r_Bit_index[1]_i_1_n_0 ;
  wire \r_Bit_index[2]_i_1_n_0 ;
  wire \r_Bit_index_reg_n_0_[0] ;
  wire \r_Bit_index_reg_n_0_[1] ;
  wire \r_Bit_index_reg_n_0_[2] ;
  wire r_Half_RX_sync;
  wire [7:0]r_RX_character;
  wire \r_RX_character[7]_i_1_n_0 ;
  wire [0:0]r_RX_cnt;
  wire \r_RX_cnt[0]_i_1_n_0 ;
  wire \r_RX_cnt[1]_i_1_n_0 ;
  wire \r_RX_cnt[1]_i_2_n_0 ;
  wire \r_RX_cnt[2]_i_1_n_0 ;
  wire \r_RX_cnt[2]_i_2_n_0 ;
  wire \r_RX_cnt[3]_i_1_n_0 ;
  wire \r_RX_cnt[3]_i_2_n_0 ;
  wire \r_RX_cnt[4]_i_1_n_0 ;
  wire \r_RX_cnt[4]_i_2_n_0 ;
  wire \r_RX_cnt[5]_i_1_n_0 ;
  wire \r_RX_cnt[5]_i_2_n_0 ;
  wire \r_RX_cnt[6]_i_1_n_0 ;
  wire \r_RX_cnt[6]_i_2_n_0 ;
  wire \r_RX_cnt[7]_i_1_n_0 ;
  wire \r_RX_cnt[7]_i_2_n_0 ;
  wire \r_RX_cnt[8]_i_1_n_0 ;
  wire \r_RX_cnt[8]_i_2_n_0 ;
  wire \r_RX_cnt[9]_i_2_n_0 ;
  wire \r_RX_cnt[9]_i_3_n_0 ;
  wire \r_RX_cnt[9]_i_4_n_0 ;
  wire \r_RX_cnt_reg_n_0_[0] ;
  wire \r_RX_cnt_reg_n_0_[1] ;
  wire \r_RX_cnt_reg_n_0_[2] ;
  wire \r_RX_cnt_reg_n_0_[3] ;
  wire \r_RX_cnt_reg_n_0_[4] ;
  wire \r_RX_cnt_reg_n_0_[5] ;
  wire \r_RX_cnt_reg_n_0_[6] ;
  wire \r_RX_cnt_reg_n_0_[7] ;
  wire \r_RX_cnt_reg_n_0_[8] ;
  wire \r_RX_cnt_reg_n_0_[9] ;
  wire [1:0]r_RX_state;
  wire r_RX_sync;
  wire [3:0]\r_p1_paddle_pos_reg[3] ;
  wire [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  wire \r_p1_paddle_pos_reg[3]_1 ;
  wire \r_p1_paddle_pos_reg[3]_2 ;
  wire \r_p1_paddle_pos_reg[3]_3 ;
  wire \r_p1_paddle_pos_reg[3]_4 ;
  wire \r_p1_paddle_pos_reg[3]_5 ;
  wire \r_p1_paddle_pos_reg[3]_6 ;
  wire [3:0]\r_p2_paddle_pos_reg[3] ;
  wire \r_p2_paddle_pos_reg[3]_0 ;
  wire \r_p2_paddle_pos_reg[3]_1 ;
  wire \r_p2_paddle_pos_reg[3]_2 ;
  wire \r_p2_paddle_pos_reg[3]_3 ;
  wire \r_p2_paddle_pos_reg[3]_4 ;
  wire w_New_key;
  wire [7:0]w_Received_byte;

  LUT6 #(
    .INIT(64'h0F55F0330F550033)) 
    \FSM_sequential_r_RX_state[0]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(r_RX_state[1]),
        .I4(r_RX_state[0]),
        .I5(\FSM_sequential_r_RX_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_r_RX_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_r_RX_state[0]_i_2 
       (.I0(\r_Bit_index_reg_n_0_[1] ),
        .I1(\r_Bit_index_reg_n_0_[2] ),
        .I2(\r_Bit_index_reg_n_0_[0] ),
        .O(\FSM_sequential_r_RX_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3AF0)) 
    \FSM_sequential_r_RX_state[1]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I2(r_RX_state[1]),
        .I3(r_RX_state[0]),
        .O(\FSM_sequential_r_RX_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_r_RX_state[1]_i_3 
       (.I0(\r_RX_cnt_reg_n_0_[9] ),
        .I1(\r_RX_cnt_reg_n_0_[8] ),
        .I2(\FSM_sequential_r_RX_state[1]_i_5_n_0 ),
        .I3(\r_RX_cnt_reg_n_0_[7] ),
        .O(\FSM_sequential_r_RX_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_r_RX_state[1]_i_4 
       (.I0(\r_RX_cnt_reg_n_0_[8] ),
        .I1(\FSM_sequential_r_RX_state[1]_i_6_n_0 ),
        .I2(\r_RX_cnt_reg_n_0_[9] ),
        .O(\FSM_sequential_r_RX_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \FSM_sequential_r_RX_state[1]_i_5 
       (.I0(\r_RX_cnt_reg_n_0_[6] ),
        .I1(\r_RX_cnt_reg_n_0_[5] ),
        .I2(\r_RX_cnt_reg_n_0_[3] ),
        .I3(\r_RX_cnt_reg_n_0_[1] ),
        .I4(\r_RX_cnt_reg_n_0_[2] ),
        .I5(\r_RX_cnt_reg_n_0_[4] ),
        .O(\FSM_sequential_r_RX_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \FSM_sequential_r_RX_state[1]_i_6 
       (.I0(\r_RX_cnt_reg_n_0_[7] ),
        .I1(\r_RX_cnt_reg_n_0_[6] ),
        .I2(\r_RX_cnt_reg_n_0_[4] ),
        .I3(\r_RX_cnt_reg_n_0_[2] ),
        .I4(\r_RX_cnt_reg_n_0_[3] ),
        .I5(\r_RX_cnt_reg_n_0_[5] ),
        .O(\FSM_sequential_r_RX_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,starting:01,receive_data:10,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_RX_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(o_Received_new_byte_reg_0),
        .D(\FSM_sequential_r_RX_state[0]_i_1_n_0 ),
        .Q(r_RX_state[0]));
  (* FSM_ENCODED_STATES = "idle:00,starting:01,receive_data:10,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_RX_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(o_Received_new_byte_reg_0),
        .D(\FSM_sequential_r_RX_state[1]_i_1_n_0 ),
        .Q(r_RX_state[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \o_Received_byte[7]_i_1 
       (.I0(r_RX_state[1]),
        .I1(r_RX_state[0]),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .O(\o_Received_byte[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[0]),
        .Q(w_Received_byte[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[1]),
        .Q(w_Received_byte[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[2]),
        .Q(w_Received_byte[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[3]),
        .Q(w_Received_byte[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[4]),
        .Q(w_Received_byte[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[5]),
        .Q(w_Received_byte[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[6]),
        .Q(w_Received_byte[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_Received_byte_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\o_Received_byte[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[7]),
        .Q(w_Received_byte[7]));
  FDCE #(
    .INIT(1'b0)) 
    o_Received_new_byte_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(o_Received_new_byte_reg_0),
        .D(\o_Received_byte[7]_i_1_n_0 ),
        .Q(w_New_key));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hC7F73000)) 
    \r_Bit_index[0]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_state[0]),
        .I2(r_RX_state[1]),
        .I3(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I4(\r_Bit_index_reg_n_0_[0] ),
        .O(\r_Bit_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF53FFF3F0A000000)) 
    \r_Bit_index[1]_i_1 
       (.I0(\r_Bit_index_reg_n_0_[0] ),
        .I1(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I2(r_RX_state[0]),
        .I3(r_RX_state[1]),
        .I4(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I5(\r_Bit_index_reg_n_0_[1] ),
        .O(\r_Bit_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \r_Bit_index[2]_i_1 
       (.I0(r_RX_state[1]),
        .I1(\r_Bit_index_reg_n_0_[1] ),
        .I2(\r_Bit_index_reg_n_0_[0] ),
        .I3(r_Bit_index),
        .I4(\r_Bit_index_reg_n_0_[2] ),
        .O(\r_Bit_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \r_Bit_index[2]_i_2 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_state[0]),
        .I2(r_RX_state[1]),
        .I3(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .O(r_Bit_index));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_Bit_index[0]_i_1_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_Bit_index[1]_i_1_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_Bit_index[2]_i_1_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b1)) 
    r_Half_RX_sync_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(UART_TXD_IN_IBUF),
        .Q(r_Half_RX_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \r_RX_character[7]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I1(r_RX_state[1]),
        .I2(r_RX_state[0]),
        .O(\r_RX_character[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[1]),
        .Q(r_RX_character[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[2]),
        .Q(r_RX_character[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[3]),
        .Q(r_RX_character[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[4]),
        .Q(r_RX_character[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[5]),
        .Q(r_RX_character[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[6]),
        .Q(r_RX_character[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_character[7]),
        .Q(r_RX_character[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_character_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_RX_character[7]_i_1_n_0 ),
        .CLR(o_Received_new_byte_reg_0),
        .D(r_RX_sync),
        .Q(r_RX_character[7]));
  LUT6 #(
    .INIT(64'h000F0505000FCCCC)) 
    \r_RX_cnt[0]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\r_RX_cnt_reg_n_0_[0] ),
        .I3(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[1]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[1]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_RX_cnt[1]_i_2 
       (.I0(\r_RX_cnt_reg_n_0_[0] ),
        .I1(\r_RX_cnt_reg_n_0_[1] ),
        .O(\r_RX_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[2]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[2]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_RX_cnt[2]_i_2 
       (.I0(\r_RX_cnt_reg_n_0_[0] ),
        .I1(\r_RX_cnt_reg_n_0_[1] ),
        .I2(\r_RX_cnt_reg_n_0_[2] ),
        .O(\r_RX_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[3]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[3]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_RX_cnt[3]_i_2 
       (.I0(\r_RX_cnt_reg_n_0_[1] ),
        .I1(\r_RX_cnt_reg_n_0_[0] ),
        .I2(\r_RX_cnt_reg_n_0_[2] ),
        .I3(\r_RX_cnt_reg_n_0_[3] ),
        .O(\r_RX_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[4]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[4]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_RX_cnt[4]_i_2 
       (.I0(\r_RX_cnt_reg_n_0_[2] ),
        .I1(\r_RX_cnt_reg_n_0_[0] ),
        .I2(\r_RX_cnt_reg_n_0_[1] ),
        .I3(\r_RX_cnt_reg_n_0_[3] ),
        .I4(\r_RX_cnt_reg_n_0_[4] ),
        .O(\r_RX_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[5]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[5]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_RX_cnt[5]_i_2 
       (.I0(\r_RX_cnt_reg_n_0_[3] ),
        .I1(\r_RX_cnt_reg_n_0_[1] ),
        .I2(\r_RX_cnt_reg_n_0_[0] ),
        .I3(\r_RX_cnt_reg_n_0_[2] ),
        .I4(\r_RX_cnt_reg_n_0_[4] ),
        .I5(\r_RX_cnt_reg_n_0_[5] ),
        .O(\r_RX_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[6]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[6]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_RX_cnt[6]_i_2 
       (.I0(\r_RX_cnt[9]_i_4_n_0 ),
        .I1(\r_RX_cnt_reg_n_0_[6] ),
        .O(\r_RX_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[7]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[7]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_RX_cnt[7]_i_2 
       (.I0(\r_RX_cnt[9]_i_4_n_0 ),
        .I1(\r_RX_cnt_reg_n_0_[6] ),
        .I2(\r_RX_cnt_reg_n_0_[7] ),
        .O(\r_RX_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[8]_i_1 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[8]_i_2_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_RX_cnt[8]_i_2 
       (.I0(\r_RX_cnt_reg_n_0_[6] ),
        .I1(\r_RX_cnt[9]_i_4_n_0 ),
        .I2(\r_RX_cnt_reg_n_0_[7] ),
        .I3(\r_RX_cnt_reg_n_0_[8] ),
        .O(\r_RX_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \r_RX_cnt[9]_i_1 
       (.I0(r_RX_state[1]),
        .I1(r_RX_sync),
        .I2(r_RX_state[0]),
        .O(r_RX_cnt));
  LUT6 #(
    .INIT(64'h0F0055000F00CCCC)) 
    \r_RX_cnt[9]_i_2 
       (.I0(\FSM_sequential_r_RX_state[1]_i_3_n_0 ),
        .I1(r_RX_sync),
        .I2(\FSM_sequential_r_RX_state[1]_i_4_n_0 ),
        .I3(\r_RX_cnt[9]_i_3_n_0 ),
        .I4(r_RX_state[1]),
        .I5(r_RX_state[0]),
        .O(\r_RX_cnt[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_RX_cnt[9]_i_3 
       (.I0(\r_RX_cnt_reg_n_0_[7] ),
        .I1(\r_RX_cnt[9]_i_4_n_0 ),
        .I2(\r_RX_cnt_reg_n_0_[6] ),
        .I3(\r_RX_cnt_reg_n_0_[8] ),
        .I4(\r_RX_cnt_reg_n_0_[9] ),
        .O(\r_RX_cnt[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_RX_cnt[9]_i_4 
       (.I0(\r_RX_cnt_reg_n_0_[5] ),
        .I1(\r_RX_cnt_reg_n_0_[3] ),
        .I2(\r_RX_cnt_reg_n_0_[1] ),
        .I3(\r_RX_cnt_reg_n_0_[0] ),
        .I4(\r_RX_cnt_reg_n_0_[2] ),
        .I5(\r_RX_cnt_reg_n_0_[4] ),
        .O(\r_RX_cnt[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[0]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[1]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[2]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[3]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[4]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[5]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[6]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[7]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[8]_i_1_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_RX_cnt_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_RX_cnt),
        .CLR(o_Received_new_byte_reg_0),
        .D(\r_RX_cnt[9]_i_2_n_0 ),
        .Q(\r_RX_cnt_reg_n_0_[9] ));
  FDRE #(
    .INIT(1'b1)) 
    r_RX_sync_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(r_Half_RX_sync),
        .Q(r_RX_sync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \r_p1_paddle_pos[0]_i_1 
       (.I0(\o_Received_byte_reg[4]_3 ),
        .I1(\r_p1_paddle_pos_reg[3]_0 [0]),
        .O(\r_p1_paddle_pos_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'h0000CAAC)) 
    \r_p1_paddle_pos[1]_i_1 
       (.I0(\o_Received_byte_reg[2]_0 ),
        .I1(\o_Received_byte_reg[2]_1 ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I4(\o_Received_byte_reg[4]_2 ),
        .O(\r_p1_paddle_pos_reg[3] [1]));
  LUT6 #(
    .INIT(64'hAFFBBAAAFFFBBBBF)) 
    \r_p1_paddle_pos[2]_i_1 
       (.I0(\o_Received_byte_reg[4]_2 ),
        .I1(\o_Received_byte_reg[2]_1 ),
        .I2(\r_p1_paddle_pos_reg[3]_0 [0]),
        .I3(\r_p1_paddle_pos_reg[3]_0 [1]),
        .I4(\r_p1_paddle_pos_reg[3]_0 [2]),
        .I5(\o_Received_byte_reg[2]_0 ),
        .O(\r_p1_paddle_pos_reg[3] [2]));
  LUT6 #(
    .INIT(64'hAAFBBFFBBFAABFFB)) 
    \r_p1_paddle_pos[3]_i_1 
       (.I0(\o_Received_byte_reg[4]_2 ),
        .I1(\o_Received_byte_reg[2]_1 ),
        .I2(\r_p1_paddle_pos_reg[3]_1 ),
        .I3(\r_p1_paddle_pos_reg[3]_0 [3]),
        .I4(\o_Received_byte_reg[2]_0 ),
        .I5(\r_p1_paddle_pos_reg[3]_2 ),
        .O(\r_p1_paddle_pos_reg[3] [3]));
  LUT5 #(
    .INIT(32'h2F2F2F00)) 
    \r_p1_paddle_pos[4]_i_3 
       (.I0(w_Received_byte[2]),
        .I1(w_Received_byte[3]),
        .I2(w_Received_byte[4]),
        .I3(\r_p1_paddle_pos_reg[3]_4 ),
        .I4(\r_p1_paddle_pos_reg[3]_5 ),
        .O(\o_Received_byte_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \r_p1_paddle_pos[5]_i_3 
       (.I0(\o_Received_byte_reg[4]_2 ),
        .I1(\o_Received_byte_reg[2]_1 ),
        .I2(\o_Received_byte_reg[2]_0 ),
        .O(\o_Received_byte_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \r_p1_paddle_pos[5]_i_6 
       (.I0(w_Received_byte[2]),
        .I1(w_Received_byte[3]),
        .I2(w_Received_byte[4]),
        .I3(\r_p1_paddle_pos_reg[3]_3 ),
        .O(\o_Received_byte_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \r_p1_paddle_pos[5]_i_7 
       (.I0(\r_p1_paddle_pos_reg[3]_6 ),
        .I1(w_Received_byte[4]),
        .I2(w_Received_byte[3]),
        .O(\o_Received_byte_reg[4]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \r_p2_paddle_pos[0]_i_1 
       (.I0(\o_Received_byte_reg[3]_1 ),
        .I1(\r_p2_paddle_pos_reg[3] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h0000CAAC)) 
    \r_p2_paddle_pos[1]_i_1 
       (.I0(\o_Received_byte_reg[4]_0 ),
        .I1(\o_Received_byte_reg[4]_1 ),
        .I2(\r_p2_paddle_pos_reg[3] [1]),
        .I3(\r_p2_paddle_pos_reg[3] [0]),
        .I4(\o_Received_byte_reg[3]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFFBBAAAFFFBBBBF)) 
    \r_p2_paddle_pos[2]_i_1 
       (.I0(\o_Received_byte_reg[3]_0 ),
        .I1(\o_Received_byte_reg[4]_1 ),
        .I2(\r_p2_paddle_pos_reg[3] [0]),
        .I3(\r_p2_paddle_pos_reg[3] [1]),
        .I4(\r_p2_paddle_pos_reg[3] [2]),
        .I5(\o_Received_byte_reg[4]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAFBBFFBBFAABFFB)) 
    \r_p2_paddle_pos[3]_i_1 
       (.I0(\o_Received_byte_reg[3]_0 ),
        .I1(\o_Received_byte_reg[4]_1 ),
        .I2(\r_p2_paddle_pos_reg[3]_0 ),
        .I3(\r_p2_paddle_pos_reg[3] [3]),
        .I4(\o_Received_byte_reg[4]_0 ),
        .I5(\r_p2_paddle_pos_reg[3]_1 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEAEAEA00)) 
    \r_p2_paddle_pos[4]_i_3 
       (.I0(w_Received_byte[4]),
        .I1(w_Received_byte[3]),
        .I2(w_Received_byte[2]),
        .I3(\r_p2_paddle_pos_reg[3]_3 ),
        .I4(\r_p2_paddle_pos_reg[3]_4 ),
        .O(\o_Received_byte_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \r_p2_paddle_pos[5]_i_12 
       (.I0(w_Received_byte[0]),
        .I1(w_Received_byte[7]),
        .I2(w_New_key),
        .I3(w_Received_byte[1]),
        .I4(w_Received_byte[6]),
        .I5(w_Received_byte[5]),
        .O(\o_Received_byte_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \r_p2_paddle_pos[5]_i_3 
       (.I0(\o_Received_byte_reg[3]_0 ),
        .I1(\o_Received_byte_reg[4]_1 ),
        .I2(\o_Received_byte_reg[4]_0 ),
        .O(\o_Received_byte_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \r_p2_paddle_pos[5]_i_6 
       (.I0(w_Received_byte[4]),
        .I1(w_Received_byte[3]),
        .I2(w_Received_byte[2]),
        .I3(\r_p2_paddle_pos_reg[3]_2 ),
        .O(\o_Received_byte_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \r_p2_paddle_pos[5]_i_7 
       (.I0(w_Received_byte[3]),
        .I1(w_Received_byte[4]),
        .I2(\r_p1_paddle_pos_reg[3]_6 ),
        .O(\o_Received_byte_reg[3]_0 ));
endmodule

module transmit_uart
   (UART_RXD_OUT_OBUF,
    CPU_RESETN,
    o_Ready_to_send_reg_0,
    o_Ready_to_send_reg_1,
    o_Ready_to_send_reg_2,
    CLK100MHZ_IBUF_BUFG,
    w_TX_send,
    CPU_RESETN_IBUF,
    \r_TX_message_reg[78]_0 ,
    w_TX_count);
  output UART_RXD_OUT_OBUF;
  output CPU_RESETN;
  output o_Ready_to_send_reg_0;
  output o_Ready_to_send_reg_1;
  output o_Ready_to_send_reg_2;
  input CLK100MHZ_IBUF_BUFG;
  input w_TX_send;
  input CPU_RESETN_IBUF;
  input [69:0]\r_TX_message_reg[78]_0 ;
  input [0:0]w_TX_count;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire \FSM_sequential_r_TX_state[0]_i_1_n_0 ;
  wire \FSM_sequential_r_TX_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_TX_state[0]_i_3_n_0 ;
  wire \FSM_sequential_r_TX_state[1]_i_1_n_0 ;
  wire \FSM_sequential_r_TX_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_TX_state[1]_i_3_n_0 ;
  wire UART_RXD_OUT_OBUF;
  wire [6:0]data10;
  wire [6:0]data2;
  wire [6:0]data3;
  wire [6:0]data4;
  wire [6:0]data5;
  wire [6:0]data6;
  wire [6:0]data7;
  wire [6:0]data8;
  wire [6:0]data9;
  wire o_Ready_to_send_i_1_n_0;
  wire o_Ready_to_send_reg_0;
  wire o_Ready_to_send_reg_1;
  wire o_Ready_to_send_reg_2;
  wire o_UART_TXD_i_1_n_0;
  wire o_UART_TXD_i_2_n_0;
  wire o_UART_TXD_i_3_n_0;
  wire o_UART_TXD_i_4_n_0;
  wire [0:0]r_Bit_index;
  wire \r_Bit_index[0]_i_1_n_0 ;
  wire \r_Bit_index[1]_i_1_n_0 ;
  wire \r_Bit_index[2]_i_1_n_0 ;
  wire \r_Bit_index[3]_i_2_n_0 ;
  wire \r_Bit_index[3]_i_3_n_0 ;
  wire \r_Bit_index_reg_n_0_[0] ;
  wire \r_Bit_index_reg_n_0_[1] ;
  wire \r_Bit_index_reg_n_0_[2] ;
  wire \r_Bit_index_reg_n_0_[3] ;
  wire \r_Char_cnt[0]_i_1_n_0 ;
  wire \r_Char_cnt[1]_i_1_n_0 ;
  wire \r_Char_cnt[2]_i_1_n_0 ;
  wire \r_Char_cnt[3]_i_1_n_0 ;
  wire \r_Char_cnt[3]_i_2_n_0 ;
  wire \r_Char_cnt_reg_n_0_[0] ;
  wire \r_Char_cnt_reg_n_0_[1] ;
  wire \r_Char_cnt_reg_n_0_[2] ;
  wire \r_Char_cnt_reg_n_0_[3] ;
  wire [6:0]r_TX_char;
  wire \r_TX_char[0]_i_1_n_0 ;
  wire \r_TX_char[0]_i_2_n_0 ;
  wire \r_TX_char[0]_i_3_n_0 ;
  wire \r_TX_char[0]_i_4_n_0 ;
  wire \r_TX_char[1]_i_1_n_0 ;
  wire \r_TX_char[1]_i_2_n_0 ;
  wire \r_TX_char[1]_i_3_n_0 ;
  wire \r_TX_char[1]_i_4_n_0 ;
  wire \r_TX_char[2]_i_1_n_0 ;
  wire \r_TX_char[2]_i_2_n_0 ;
  wire \r_TX_char[2]_i_3_n_0 ;
  wire \r_TX_char[2]_i_4_n_0 ;
  wire \r_TX_char[3]_i_1_n_0 ;
  wire \r_TX_char[3]_i_2_n_0 ;
  wire \r_TX_char[3]_i_3_n_0 ;
  wire \r_TX_char[3]_i_4_n_0 ;
  wire \r_TX_char[4]_i_1_n_0 ;
  wire \r_TX_char[4]_i_2_n_0 ;
  wire \r_TX_char[4]_i_3_n_0 ;
  wire \r_TX_char[4]_i_4_n_0 ;
  wire \r_TX_char[5]_i_1_n_0 ;
  wire \r_TX_char[5]_i_2_n_0 ;
  wire \r_TX_char[5]_i_3_n_0 ;
  wire \r_TX_char[5]_i_4_n_0 ;
  wire \r_TX_char[6]_i_1_n_0 ;
  wire \r_TX_char[6]_i_2_n_0 ;
  wire \r_TX_char[6]_i_3_n_0 ;
  wire \r_TX_char[6]_i_4_n_0 ;
  wire \r_TX_char[6]_i_5_n_0 ;
  wire [0:0]r_TX_cnt;
  wire \r_TX_cnt[0]_i_1_n_0 ;
  wire \r_TX_cnt[1]_i_1_n_0 ;
  wire \r_TX_cnt[2]_i_1_n_0 ;
  wire \r_TX_cnt[3]_i_1_n_0 ;
  wire \r_TX_cnt[4]_i_1_n_0 ;
  wire \r_TX_cnt[4]_i_2_n_0 ;
  wire \r_TX_cnt[5]_i_1_n_0 ;
  wire \r_TX_cnt[5]_i_2_n_0 ;
  wire \r_TX_cnt[6]_i_1_n_0 ;
  wire \r_TX_cnt[7]_i_1_n_0 ;
  wire \r_TX_cnt[8]_i_1_n_0 ;
  wire \r_TX_cnt[8]_i_2_n_0 ;
  wire \r_TX_cnt[9]_i_2_n_0 ;
  wire \r_TX_cnt[9]_i_3_n_0 ;
  wire \r_TX_cnt_reg_n_0_[0] ;
  wire \r_TX_cnt_reg_n_0_[1] ;
  wire \r_TX_cnt_reg_n_0_[2] ;
  wire \r_TX_cnt_reg_n_0_[3] ;
  wire \r_TX_cnt_reg_n_0_[4] ;
  wire \r_TX_cnt_reg_n_0_[5] ;
  wire \r_TX_cnt_reg_n_0_[6] ;
  wire \r_TX_cnt_reg_n_0_[7] ;
  wire \r_TX_cnt_reg_n_0_[8] ;
  wire \r_TX_cnt_reg_n_0_[9] ;
  wire [0:0]r_TX_message;
  wire [69:0]\r_TX_message_reg[78]_0 ;
  wire \r_TX_message_reg_n_0_[0] ;
  wire \r_TX_message_reg_n_0_[1] ;
  wire \r_TX_message_reg_n_0_[2] ;
  wire \r_TX_message_reg_n_0_[3] ;
  wire \r_TX_message_reg_n_0_[4] ;
  wire \r_TX_message_reg_n_0_[5] ;
  wire \r_TX_message_reg_n_0_[6] ;
  wire [1:0]r_TX_state;
  wire [0:0]w_TX_count;
  wire w_TX_send;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_r_RX_state[1]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .O(CPU_RESETN));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hFF00C0AA)) 
    \FSM_sequential_r_TX_state[0]_i_1 
       (.I0(w_TX_send),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_Bit_index_reg_n_0_[3] ),
        .I3(r_TX_state[1]),
        .I4(r_TX_state[0]),
        .O(\FSM_sequential_r_TX_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_r_TX_state[0]_i_2 
       (.I0(\r_TX_cnt_reg_n_0_[8] ),
        .I1(\FSM_sequential_r_TX_state[0]_i_3_n_0 ),
        .I2(\r_TX_cnt_reg_n_0_[9] ),
        .O(\FSM_sequential_r_TX_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \FSM_sequential_r_TX_state[0]_i_3 
       (.I0(\r_TX_cnt_reg_n_0_[7] ),
        .I1(\r_TX_cnt_reg_n_0_[6] ),
        .I2(\r_TX_cnt_reg_n_0_[4] ),
        .I3(\r_TX_cnt_reg_n_0_[2] ),
        .I4(\r_TX_cnt_reg_n_0_[3] ),
        .I5(\r_TX_cnt_reg_n_0_[5] ),
        .O(\FSM_sequential_r_TX_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFD000000)) 
    \FSM_sequential_r_TX_state[1]_i_1 
       (.I0(\FSM_sequential_r_TX_state[1]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_Char_cnt_reg_n_0_[2] ),
        .I3(r_TX_state[0]),
        .I4(\FSM_sequential_r_TX_state[1]_i_3_n_0 ),
        .I5(r_TX_state[1]),
        .O(\FSM_sequential_r_TX_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_r_TX_state[1]_i_2 
       (.I0(\r_Char_cnt_reg_n_0_[0] ),
        .I1(\r_Char_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_r_TX_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hCCFFC0AA)) 
    \FSM_sequential_r_TX_state[1]_i_3 
       (.I0(w_TX_send),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_Bit_index_reg_n_0_[3] ),
        .I3(r_TX_state[1]),
        .I4(r_TX_state[0]),
        .O(\FSM_sequential_r_TX_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "starting:01,transmitting_data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_TX_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\FSM_sequential_r_TX_state[0]_i_1_n_0 ),
        .Q(r_TX_state[0]));
  (* FSM_ENCODED_STATES = "starting:01,transmitting_data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_TX_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\FSM_sequential_r_TX_state[1]_i_1_n_0 ),
        .Q(r_TX_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    o_Ready_to_send_i_1
       (.I0(w_TX_send),
        .I1(r_TX_state[0]),
        .I2(r_TX_state[1]),
        .I3(o_Ready_to_send_reg_0),
        .O(o_Ready_to_send_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    o_Ready_to_send_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(o_Ready_to_send_i_1_n_0),
        .PRE(CPU_RESETN),
        .Q(o_Ready_to_send_reg_0));
  LUT6 #(
    .INIT(64'h00FD00FDFFFF00FF)) 
    o_UART_TXD_i_1
       (.I0(\FSM_sequential_r_TX_state[1]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[2] ),
        .I2(\r_Char_cnt_reg_n_0_[3] ),
        .I3(r_TX_state[1]),
        .I4(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I5(r_TX_state[0]),
        .O(o_UART_TXD_i_1_n_0));
  LUT6 #(
    .INIT(64'h5554445455555555)) 
    o_UART_TXD_i_2
       (.I0(r_TX_state[0]),
        .I1(\r_Bit_index_reg_n_0_[3] ),
        .I2(o_UART_TXD_i_3_n_0),
        .I3(\r_Bit_index_reg_n_0_[2] ),
        .I4(o_UART_TXD_i_4_n_0),
        .I5(r_TX_state[1]),
        .O(o_UART_TXD_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_UART_TXD_i_3
       (.I0(r_TX_char[3]),
        .I1(r_TX_char[2]),
        .I2(\r_Bit_index_reg_n_0_[1] ),
        .I3(r_TX_char[1]),
        .I4(\r_Bit_index_reg_n_0_[0] ),
        .I5(r_TX_char[0]),
        .O(o_UART_TXD_i_3_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    o_UART_TXD_i_4
       (.I0(r_TX_char[6]),
        .I1(\r_Bit_index_reg_n_0_[1] ),
        .I2(r_TX_char[5]),
        .I3(\r_Bit_index_reg_n_0_[0] ),
        .I4(r_TX_char[4]),
        .O(o_UART_TXD_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    o_UART_TXD_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(o_UART_TXD_i_1_n_0),
        .D(o_UART_TXD_i_2_n_0),
        .PRE(CPU_RESETN),
        .Q(UART_RXD_OUT_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Bit_index[0]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\r_Bit_index_reg_n_0_[0] ),
        .O(\r_Bit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_Bit_index[1]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\r_Bit_index_reg_n_0_[1] ),
        .I2(\r_Bit_index_reg_n_0_[0] ),
        .O(\r_Bit_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \r_Bit_index[2]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\r_Bit_index_reg_n_0_[2] ),
        .I2(\r_Bit_index_reg_n_0_[1] ),
        .I3(\r_Bit_index_reg_n_0_[0] ),
        .O(\r_Bit_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08380808)) 
    \r_Bit_index[3]_i_1 
       (.I0(\r_Bit_index[3]_i_3_n_0 ),
        .I1(r_TX_state[0]),
        .I2(r_TX_state[1]),
        .I3(\r_Bit_index_reg_n_0_[3] ),
        .I4(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .O(r_Bit_index));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \r_Bit_index[3]_i_2 
       (.I0(r_TX_state[1]),
        .I1(\r_Bit_index_reg_n_0_[3] ),
        .I2(\r_Bit_index_reg_n_0_[2] ),
        .I3(\r_Bit_index_reg_n_0_[0] ),
        .I4(\r_Bit_index_reg_n_0_[1] ),
        .O(\r_Bit_index[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_Bit_index[3]_i_3 
       (.I0(\r_Char_cnt_reg_n_0_[1] ),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(\r_Char_cnt_reg_n_0_[2] ),
        .I3(\r_Char_cnt_reg_n_0_[3] ),
        .O(\r_Bit_index[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_Bit_index),
        .CLR(CPU_RESETN),
        .D(\r_Bit_index[0]_i_1_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_Bit_index),
        .CLR(CPU_RESETN),
        .D(\r_Bit_index[1]_i_1_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_Bit_index),
        .CLR(CPU_RESETN),
        .D(\r_Bit_index[2]_i_1_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Bit_index_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_Bit_index),
        .CLR(CPU_RESETN),
        .D(\r_Bit_index[3]_i_2_n_0 ),
        .Q(\r_Bit_index_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Char_cnt[0]_i_1 
       (.I0(r_TX_state[0]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .O(\r_Char_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \r_Char_cnt[1]_i_1 
       (.I0(\r_Char_cnt_reg_n_0_[0] ),
        .I1(\r_Char_cnt_reg_n_0_[1] ),
        .I2(r_TX_state[0]),
        .I3(w_TX_count),
        .O(\r_Char_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    \r_Char_cnt[2]_i_1 
       (.I0(r_TX_state[0]),
        .I1(\r_Char_cnt_reg_n_0_[2] ),
        .I2(\r_Char_cnt_reg_n_0_[0] ),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .O(\r_Char_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE2EEEE)) 
    \r_Char_cnt[3]_i_1 
       (.I0(w_TX_send),
        .I1(r_TX_state[0]),
        .I2(\r_Char_cnt_reg_n_0_[3] ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\FSM_sequential_r_TX_state[1]_i_2_n_0 ),
        .I5(r_TX_state[1]),
        .O(\r_Char_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \r_Char_cnt[3]_i_2 
       (.I0(\r_Char_cnt_reg_n_0_[0] ),
        .I1(\r_Char_cnt_reg_n_0_[1] ),
        .I2(\r_Char_cnt_reg_n_0_[2] ),
        .I3(\r_Char_cnt_reg_n_0_[3] ),
        .I4(r_TX_state[0]),
        .I5(w_TX_count),
        .O(\r_Char_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Char_cnt_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Char_cnt[3]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_Char_cnt[0]_i_1_n_0 ),
        .Q(\r_Char_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Char_cnt_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Char_cnt[3]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_Char_cnt[1]_i_1_n_0 ),
        .Q(\r_Char_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Char_cnt_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Char_cnt[3]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_Char_cnt[2]_i_1_n_0 ),
        .Q(\r_Char_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Char_cnt_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_Char_cnt[3]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_Char_cnt[3]_i_2_n_0 ),
        .Q(\r_Char_cnt_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[0]_i_1 
       (.I0(\r_TX_char[0]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[0]_i_3_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[0]_i_4_n_0 ),
        .O(\r_TX_char[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[0]_i_2 
       (.I0(data8[0]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[0]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[0]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[0]_i_3 
       (.I0(data7[0]),
        .I1(data6[0]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[0]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[0]),
        .O(\r_TX_char[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[0]_i_4 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[0] ),
        .O(\r_TX_char[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[1]_i_1 
       (.I0(\r_TX_char[1]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[1]_i_3_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[1]_i_4_n_0 ),
        .O(\r_TX_char[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[1]_i_2 
       (.I0(data8[1]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[1]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[1]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[1]_i_3 
       (.I0(data7[1]),
        .I1(data6[1]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[1]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[1]),
        .O(\r_TX_char[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[1]_i_4 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[1] ),
        .O(\r_TX_char[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[2]_i_1 
       (.I0(\r_TX_char[2]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[2]_i_3_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[2]_i_4_n_0 ),
        .O(\r_TX_char[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[2]_i_2 
       (.I0(data8[2]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[2]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[2]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[2]_i_3 
       (.I0(data7[2]),
        .I1(data6[2]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[2]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[2]),
        .O(\r_TX_char[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[2]_i_4 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[2] ),
        .O(\r_TX_char[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[3]_i_1 
       (.I0(\r_TX_char[3]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[3]_i_3_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[3]_i_4_n_0 ),
        .O(\r_TX_char[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[3]_i_2 
       (.I0(data8[3]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[3]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[3]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[3]_i_3 
       (.I0(data7[3]),
        .I1(data6[3]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[3]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[3]),
        .O(\r_TX_char[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[3]_i_4 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[3] ),
        .O(\r_TX_char[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[4]_i_1 
       (.I0(\r_TX_char[4]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[4]_i_3_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[4]_i_4_n_0 ),
        .O(\r_TX_char[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[4]_i_2 
       (.I0(data8[4]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[4]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[4]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[4]_i_3 
       (.I0(data7[4]),
        .I1(data6[4]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[4]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[4]),
        .O(\r_TX_char[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[4]_i_4 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[4] ),
        .O(\r_TX_char[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[5]_i_1 
       (.I0(\r_TX_char[5]_i_2_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[5]_i_3_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[5]_i_4_n_0 ),
        .O(\r_TX_char[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[5]_i_2 
       (.I0(data8[5]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[5]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[5]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[5]_i_3 
       (.I0(data7[5]),
        .I1(data6[5]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[5]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[5]),
        .O(\r_TX_char[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[5]_i_4 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[5] ),
        .O(\r_TX_char[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \r_TX_char[6]_i_1 
       (.I0(\r_Char_cnt_reg_n_0_[1] ),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(\r_Char_cnt_reg_n_0_[2] ),
        .I3(\r_Char_cnt_reg_n_0_[3] ),
        .I4(r_TX_state[0]),
        .I5(r_TX_state[1]),
        .O(\r_TX_char[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_TX_char[6]_i_2 
       (.I0(\r_TX_char[6]_i_3_n_0 ),
        .I1(\r_Char_cnt_reg_n_0_[3] ),
        .I2(\r_TX_char[6]_i_4_n_0 ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_TX_char[6]_i_5_n_0 ),
        .O(\r_TX_char[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \r_TX_char[6]_i_3 
       (.I0(data8[6]),
        .I1(\r_Char_cnt_reg_n_0_[0] ),
        .I2(data9[6]),
        .I3(\r_Char_cnt_reg_n_0_[1] ),
        .I4(data10[6]),
        .I5(\r_Char_cnt_reg_n_0_[2] ),
        .O(\r_TX_char[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_TX_char[6]_i_4 
       (.I0(data7[6]),
        .I1(data6[6]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(data5[6]),
        .I4(\r_Char_cnt_reg_n_0_[0] ),
        .I5(data4[6]),
        .O(\r_TX_char[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \r_TX_char[6]_i_5 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(\r_Char_cnt_reg_n_0_[1] ),
        .I3(\r_Char_cnt_reg_n_0_[0] ),
        .I4(\r_TX_message_reg_n_0_[6] ),
        .O(\r_TX_char[6]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[0]_i_1_n_0 ),
        .Q(r_TX_char[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[1]_i_1_n_0 ),
        .Q(r_TX_char[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[2]_i_1_n_0 ),
        .Q(r_TX_char[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[3]_i_1_n_0 ),
        .Q(r_TX_char[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[4]_i_1_n_0 ),
        .Q(r_TX_char[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[5]_i_1_n_0 ),
        .Q(r_TX_char[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_char_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\r_TX_char[6]_i_1_n_0 ),
        .CLR(CPU_RESETN),
        .D(\r_TX_char[6]_i_2_n_0 ),
        .Q(r_TX_char[6]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_TX_cnt[0]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\r_TX_cnt_reg_n_0_[0] ),
        .I2(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .O(\r_TX_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \r_TX_cnt[1]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt_reg_n_0_[0] ),
        .I3(\r_TX_cnt_reg_n_0_[1] ),
        .O(\r_TX_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \r_TX_cnt[2]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt_reg_n_0_[0] ),
        .I3(\r_TX_cnt_reg_n_0_[1] ),
        .I4(\r_TX_cnt_reg_n_0_[2] ),
        .O(\r_TX_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \r_TX_cnt[3]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt_reg_n_0_[1] ),
        .I3(\r_TX_cnt_reg_n_0_[0] ),
        .I4(\r_TX_cnt_reg_n_0_[2] ),
        .I5(\r_TX_cnt_reg_n_0_[3] ),
        .O(\r_TX_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0220)) 
    \r_TX_cnt[4]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt[4]_i_2_n_0 ),
        .I3(\r_TX_cnt_reg_n_0_[4] ),
        .O(\r_TX_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_TX_cnt[4]_i_2 
       (.I0(\r_TX_cnt_reg_n_0_[3] ),
        .I1(\r_TX_cnt_reg_n_0_[1] ),
        .I2(\r_TX_cnt_reg_n_0_[0] ),
        .I3(\r_TX_cnt_reg_n_0_[2] ),
        .O(\r_TX_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \r_TX_cnt[5]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt[5]_i_2_n_0 ),
        .I3(\r_TX_cnt_reg_n_0_[5] ),
        .O(\r_TX_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_TX_cnt[5]_i_2 
       (.I0(\r_TX_cnt_reg_n_0_[4] ),
        .I1(\r_TX_cnt_reg_n_0_[2] ),
        .I2(\r_TX_cnt_reg_n_0_[0] ),
        .I3(\r_TX_cnt_reg_n_0_[1] ),
        .I4(\r_TX_cnt_reg_n_0_[3] ),
        .O(\r_TX_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \r_TX_cnt[6]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt[8]_i_2_n_0 ),
        .I3(\r_TX_cnt_reg_n_0_[6] ),
        .O(\r_TX_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \r_TX_cnt[7]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt[8]_i_2_n_0 ),
        .I3(\r_TX_cnt_reg_n_0_[6] ),
        .I4(\r_TX_cnt_reg_n_0_[7] ),
        .O(\r_TX_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \r_TX_cnt[8]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt_reg_n_0_[6] ),
        .I3(\r_TX_cnt[8]_i_2_n_0 ),
        .I4(\r_TX_cnt_reg_n_0_[7] ),
        .I5(\r_TX_cnt_reg_n_0_[8] ),
        .O(\r_TX_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_TX_cnt[8]_i_2 
       (.I0(\r_TX_cnt_reg_n_0_[5] ),
        .I1(\r_TX_cnt_reg_n_0_[3] ),
        .I2(\r_TX_cnt_reg_n_0_[1] ),
        .I3(\r_TX_cnt_reg_n_0_[0] ),
        .I4(\r_TX_cnt_reg_n_0_[2] ),
        .I5(\r_TX_cnt_reg_n_0_[4] ),
        .O(\r_TX_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \r_TX_cnt[9]_i_1 
       (.I0(r_TX_state[1]),
        .I1(\r_Char_cnt_reg_n_0_[1] ),
        .I2(\r_Char_cnt_reg_n_0_[0] ),
        .I3(\r_Char_cnt_reg_n_0_[2] ),
        .I4(\r_Char_cnt_reg_n_0_[3] ),
        .I5(r_TX_state[0]),
        .O(r_TX_cnt));
  LUT5 #(
    .INIT(32'h02222000)) 
    \r_TX_cnt[9]_i_2 
       (.I0(r_TX_state[1]),
        .I1(\FSM_sequential_r_TX_state[0]_i_2_n_0 ),
        .I2(\r_TX_cnt[9]_i_3_n_0 ),
        .I3(\r_TX_cnt_reg_n_0_[8] ),
        .I4(\r_TX_cnt_reg_n_0_[9] ),
        .O(\r_TX_cnt[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \r_TX_cnt[9]_i_3 
       (.I0(\r_TX_cnt_reg_n_0_[7] ),
        .I1(\r_TX_cnt[8]_i_2_n_0 ),
        .I2(\r_TX_cnt_reg_n_0_[6] ),
        .O(\r_TX_cnt[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[0]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[1]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[2]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[3]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[4]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[5]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[6]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[7]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[8]_i_1_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_cnt_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_cnt),
        .CLR(CPU_RESETN),
        .D(\r_TX_cnt[9]_i_2_n_0 ),
        .Q(\r_TX_cnt_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h02)) 
    \r_TX_message[78]_i_1 
       (.I0(w_TX_send),
        .I1(r_TX_state[0]),
        .I2(r_TX_state[1]),
        .O(r_TX_message));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [0]),
        .Q(\r_TX_message_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [9]),
        .Q(data2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [10]),
        .Q(data2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [11]),
        .Q(data2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [12]),
        .Q(data2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [13]),
        .Q(data2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [14]),
        .Q(data3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [15]),
        .Q(data3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [16]),
        .Q(data3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [17]),
        .Q(data3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [1]),
        .Q(\r_TX_message_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [18]),
        .Q(data3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [19]),
        .Q(data3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [20]),
        .Q(data3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [21]),
        .Q(data4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [22]),
        .Q(data4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [23]),
        .Q(data4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [24]),
        .Q(data4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [25]),
        .Q(data4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [26]),
        .Q(data4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [2]),
        .Q(\r_TX_message_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [27]),
        .Q(data4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[32] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [28]),
        .Q(data5[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[33] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [29]),
        .Q(data5[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[34] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [30]),
        .Q(data5[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[35] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [31]),
        .Q(data5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[36] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [32]),
        .Q(data5[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[37] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [33]),
        .Q(data5[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[38] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [34]),
        .Q(data5[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [3]),
        .Q(\r_TX_message_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[40] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [35]),
        .Q(data6[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[41] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [36]),
        .Q(data6[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[42] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [37]),
        .Q(data6[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[43] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [38]),
        .Q(data6[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[44] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [39]),
        .Q(data6[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[45] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [40]),
        .Q(data6[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[46] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [41]),
        .Q(data6[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[48] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [42]),
        .Q(data7[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[49] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [43]),
        .Q(data7[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [4]),
        .Q(\r_TX_message_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[50] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [44]),
        .Q(data7[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[51] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [45]),
        .Q(data7[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[52] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [46]),
        .Q(data7[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[53] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [47]),
        .Q(data7[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[54] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [48]),
        .Q(data7[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[56] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [49]),
        .Q(data8[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[57] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [50]),
        .Q(data8[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[58] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [51]),
        .Q(data8[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[59] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [52]),
        .Q(data8[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [5]),
        .Q(\r_TX_message_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[60] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [53]),
        .Q(data8[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[61] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [54]),
        .Q(data8[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[62] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [55]),
        .Q(data8[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[64] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [56]),
        .Q(data9[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[65] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [57]),
        .Q(data9[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[66] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [58]),
        .Q(data9[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[67] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [59]),
        .Q(data9[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[68] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [60]),
        .Q(data9[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[69] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [61]),
        .Q(data9[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [6]),
        .Q(\r_TX_message_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[70] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [62]),
        .Q(data9[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[72] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [63]),
        .Q(data10[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[73] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [64]),
        .Q(data10[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[74] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [65]),
        .Q(data10[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[75] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [66]),
        .Q(data10[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[76] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [67]),
        .Q(data10[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[77] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [68]),
        .Q(data10[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[78] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [69]),
        .Q(data10[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [7]),
        .Q(data2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TX_message_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(r_TX_message),
        .CLR(CPU_RESETN),
        .D(\r_TX_message_reg[78]_0 [8]),
        .Q(data2[1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_screen_render_state[0]_i_2 
       (.I0(o_Ready_to_send_reg_0),
        .I1(w_TX_send),
        .O(o_Ready_to_send_reg_1));
  LUT3 #(
    .INIT(8'h8A)) 
    r_send_pending_i_8
       (.I0(CPU_RESETN_IBUF),
        .I1(o_Ready_to_send_reg_0),
        .I2(w_TX_send),
        .O(o_Ready_to_send_reg_2));
endmodule

module uart_module
   (w_New_key,
    UART_RXD_OUT_OBUF,
    w_TX_ready,
    o_Ready_to_send_reg,
    o_Ready_to_send_reg_0,
    D,
    \o_Received_byte_reg[4] ,
    \o_Received_byte_reg[4]_0 ,
    \o_Received_byte_reg[3] ,
    \o_Received_byte_reg[3]_0 ,
    \r_p1_paddle_pos_reg[3] ,
    \o_Received_byte_reg[2] ,
    \o_Received_byte_reg[2]_0 ,
    \o_Received_byte_reg[4]_1 ,
    \o_Received_byte_reg[4]_2 ,
    \o_Received_byte_reg[0] ,
    UART_TXD_IN_IBUF,
    CLK100MHZ_IBUF_BUFG,
    w_TX_send,
    CPU_RESETN_IBUF,
    \r_p2_paddle_pos_reg[3] ,
    \r_p2_paddle_pos_reg[3]_0 ,
    \r_p2_paddle_pos_reg[3]_1 ,
    \r_p2_paddle_pos_reg[3]_2 ,
    \r_p2_paddle_pos_reg[3]_3 ,
    \r_p2_paddle_pos_reg[3]_4 ,
    \r_p1_paddle_pos_reg[3]_0 ,
    \r_p1_paddle_pos_reg[3]_1 ,
    \r_p1_paddle_pos_reg[3]_2 ,
    \r_p1_paddle_pos_reg[3]_3 ,
    \r_p1_paddle_pos_reg[3]_4 ,
    \r_p1_paddle_pos_reg[3]_5 ,
    \r_p1_paddle_pos_reg[3]_6 ,
    \r_TX_message_reg[78] ,
    w_TX_count);
  output w_New_key;
  output UART_RXD_OUT_OBUF;
  output w_TX_ready;
  output o_Ready_to_send_reg;
  output o_Ready_to_send_reg_0;
  output [3:0]D;
  output \o_Received_byte_reg[4] ;
  output \o_Received_byte_reg[4]_0 ;
  output \o_Received_byte_reg[3] ;
  output \o_Received_byte_reg[3]_0 ;
  output [3:0]\r_p1_paddle_pos_reg[3] ;
  output \o_Received_byte_reg[2] ;
  output \o_Received_byte_reg[2]_0 ;
  output \o_Received_byte_reg[4]_1 ;
  output \o_Received_byte_reg[4]_2 ;
  output \o_Received_byte_reg[0] ;
  input UART_TXD_IN_IBUF;
  input CLK100MHZ_IBUF_BUFG;
  input w_TX_send;
  input CPU_RESETN_IBUF;
  input [3:0]\r_p2_paddle_pos_reg[3] ;
  input \r_p2_paddle_pos_reg[3]_0 ;
  input \r_p2_paddle_pos_reg[3]_1 ;
  input \r_p2_paddle_pos_reg[3]_2 ;
  input \r_p2_paddle_pos_reg[3]_3 ;
  input \r_p2_paddle_pos_reg[3]_4 ;
  input [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  input \r_p1_paddle_pos_reg[3]_1 ;
  input \r_p1_paddle_pos_reg[3]_2 ;
  input \r_p1_paddle_pos_reg[3]_3 ;
  input \r_p1_paddle_pos_reg[3]_4 ;
  input \r_p1_paddle_pos_reg[3]_5 ;
  input \r_p1_paddle_pos_reg[3]_6 ;
  input [69:0]\r_TX_message_reg[78] ;
  input [0:0]w_TX_count;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire [3:0]D;
  wire UART_RXD_OUT_OBUF;
  wire UART_TXD_IN_IBUF;
  wire o_Ready_to_send_reg;
  wire o_Ready_to_send_reg_0;
  wire \o_Received_byte_reg[0] ;
  wire \o_Received_byte_reg[2] ;
  wire \o_Received_byte_reg[2]_0 ;
  wire \o_Received_byte_reg[3] ;
  wire \o_Received_byte_reg[3]_0 ;
  wire \o_Received_byte_reg[4] ;
  wire \o_Received_byte_reg[4]_0 ;
  wire \o_Received_byte_reg[4]_1 ;
  wire \o_Received_byte_reg[4]_2 ;
  wire [69:0]\r_TX_message_reg[78] ;
  wire [3:0]\r_p1_paddle_pos_reg[3] ;
  wire [3:0]\r_p1_paddle_pos_reg[3]_0 ;
  wire \r_p1_paddle_pos_reg[3]_1 ;
  wire \r_p1_paddle_pos_reg[3]_2 ;
  wire \r_p1_paddle_pos_reg[3]_3 ;
  wire \r_p1_paddle_pos_reg[3]_4 ;
  wire \r_p1_paddle_pos_reg[3]_5 ;
  wire \r_p1_paddle_pos_reg[3]_6 ;
  wire [3:0]\r_p2_paddle_pos_reg[3] ;
  wire \r_p2_paddle_pos_reg[3]_0 ;
  wire \r_p2_paddle_pos_reg[3]_1 ;
  wire \r_p2_paddle_pos_reg[3]_2 ;
  wire \r_p2_paddle_pos_reg[3]_3 ;
  wire \r_p2_paddle_pos_reg[3]_4 ;
  wire uart_transmit_inst_n_1;
  wire w_New_key;
  wire [0:0]w_TX_count;
  wire w_TX_ready;
  wire w_TX_send;

  receive_uart uart_receive_inst
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(D),
        .UART_TXD_IN_IBUF(UART_TXD_IN_IBUF),
        .\o_Received_byte_reg[0]_0 (\o_Received_byte_reg[0] ),
        .\o_Received_byte_reg[2]_0 (\o_Received_byte_reg[2] ),
        .\o_Received_byte_reg[2]_1 (\o_Received_byte_reg[2]_0 ),
        .\o_Received_byte_reg[3]_0 (\o_Received_byte_reg[3] ),
        .\o_Received_byte_reg[3]_1 (\o_Received_byte_reg[3]_0 ),
        .\o_Received_byte_reg[4]_0 (\o_Received_byte_reg[4] ),
        .\o_Received_byte_reg[4]_1 (\o_Received_byte_reg[4]_0 ),
        .\o_Received_byte_reg[4]_2 (\o_Received_byte_reg[4]_1 ),
        .\o_Received_byte_reg[4]_3 (\o_Received_byte_reg[4]_2 ),
        .o_Received_new_byte_reg_0(uart_transmit_inst_n_1),
        .\r_p1_paddle_pos_reg[3] (\r_p1_paddle_pos_reg[3] ),
        .\r_p1_paddle_pos_reg[3]_0 (\r_p1_paddle_pos_reg[3]_0 ),
        .\r_p1_paddle_pos_reg[3]_1 (\r_p1_paddle_pos_reg[3]_1 ),
        .\r_p1_paddle_pos_reg[3]_2 (\r_p1_paddle_pos_reg[3]_2 ),
        .\r_p1_paddle_pos_reg[3]_3 (\r_p1_paddle_pos_reg[3]_3 ),
        .\r_p1_paddle_pos_reg[3]_4 (\r_p1_paddle_pos_reg[3]_4 ),
        .\r_p1_paddle_pos_reg[3]_5 (\r_p1_paddle_pos_reg[3]_5 ),
        .\r_p1_paddle_pos_reg[3]_6 (\r_p1_paddle_pos_reg[3]_6 ),
        .\r_p2_paddle_pos_reg[3] (\r_p2_paddle_pos_reg[3] ),
        .\r_p2_paddle_pos_reg[3]_0 (\r_p2_paddle_pos_reg[3]_0 ),
        .\r_p2_paddle_pos_reg[3]_1 (\r_p2_paddle_pos_reg[3]_1 ),
        .\r_p2_paddle_pos_reg[3]_2 (\r_p2_paddle_pos_reg[3]_2 ),
        .\r_p2_paddle_pos_reg[3]_3 (\r_p2_paddle_pos_reg[3]_3 ),
        .\r_p2_paddle_pos_reg[3]_4 (\r_p2_paddle_pos_reg[3]_4 ),
        .w_New_key(w_New_key));
  transmit_uart uart_transmit_inst
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(uart_transmit_inst_n_1),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .UART_RXD_OUT_OBUF(UART_RXD_OUT_OBUF),
        .o_Ready_to_send_reg_0(w_TX_ready),
        .o_Ready_to_send_reg_1(o_Ready_to_send_reg),
        .o_Ready_to_send_reg_2(o_Ready_to_send_reg_0),
        .\r_TX_message_reg[78]_0 (\r_TX_message_reg[78] ),
        .w_TX_count(w_TX_count),
        .w_TX_send(w_TX_send));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
