// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  1 22:29:47 2022
// Host        : Danny-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_display_ip -prefix
//               uart_display_ip_ uart_display_ip_sim_netlist.v
// Design      : uart_display_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_display_ip_baudrate_gen
   (\FSM_sequential_R_state_reg[3] ,
    W_bps_rx_clk,
    Q,
    O_bps_rx_clk_en,
    I_clk,
    I_rst_n);
  output \FSM_sequential_R_state_reg[3] ;
  output W_bps_rx_clk;
  input [0:0]Q;
  input O_bps_rx_clk_en;
  input I_clk;
  input I_rst_n;

  wire \FSM_sequential_R_state[3]_i_4_n_0 ;
  wire \FSM_sequential_R_state[3]_i_5_n_0 ;
  wire \FSM_sequential_R_state[3]_i_6_n_0 ;
  wire \FSM_sequential_R_state_reg[3] ;
  wire I_clk;
  wire I_rst_n;
  wire O_bps_rx_clk_en;
  wire [0:0]Q;
  wire [12:0]R_bps_rx_cnt;
  wire [12:1]R_bps_rx_cnt0;
  wire R_bps_rx_cnt0_carry__0_n_0;
  wire R_bps_rx_cnt0_carry__0_n_1;
  wire R_bps_rx_cnt0_carry__0_n_2;
  wire R_bps_rx_cnt0_carry__0_n_3;
  wire R_bps_rx_cnt0_carry__1_n_1;
  wire R_bps_rx_cnt0_carry__1_n_2;
  wire R_bps_rx_cnt0_carry__1_n_3;
  wire R_bps_rx_cnt0_carry_n_0;
  wire R_bps_rx_cnt0_carry_n_1;
  wire R_bps_rx_cnt0_carry_n_2;
  wire R_bps_rx_cnt0_carry_n_3;
  wire \R_bps_rx_cnt[0]_i_1_n_0 ;
  wire \R_bps_rx_cnt[12]_i_2_n_0 ;
  wire \R_bps_rx_cnt[12]_i_3_n_0 ;
  wire W_bps_rx_clk;
  wire [12:1]p_0_in;
  wire [3:3]NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_R_state[3]_i_3 
       (.I0(\FSM_sequential_R_state[3]_i_4_n_0 ),
        .I1(\FSM_sequential_R_state[3]_i_5_n_0 ),
        .I2(\FSM_sequential_R_state[3]_i_6_n_0 ),
        .O(W_bps_rx_clk));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \FSM_sequential_R_state[3]_i_4 
       (.I0(R_bps_rx_cnt[5]),
        .I1(R_bps_rx_cnt[3]),
        .I2(R_bps_rx_cnt[4]),
        .I3(R_bps_rx_cnt[2]),
        .I4(R_bps_rx_cnt[0]),
        .I5(R_bps_rx_cnt[1]),
        .O(\FSM_sequential_R_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000230023002300)) 
    \FSM_sequential_R_state[3]_i_5 
       (.I0(R_bps_rx_cnt[10]),
        .I1(R_bps_rx_cnt[11]),
        .I2(R_bps_rx_cnt[9]),
        .I3(R_bps_rx_cnt[8]),
        .I4(R_bps_rx_cnt[7]),
        .I5(R_bps_rx_cnt[6]),
        .O(\FSM_sequential_R_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_sequential_R_state[3]_i_6 
       (.I0(R_bps_rx_cnt[5]),
        .I1(R_bps_rx_cnt[7]),
        .I2(R_bps_rx_cnt[8]),
        .I3(R_bps_rx_cnt[10]),
        .I4(R_bps_rx_cnt[12]),
        .I5(R_bps_rx_cnt[11]),
        .O(\FSM_sequential_R_state[3]_i_6_n_0 ));
  CARRY4 R_bps_rx_cnt0_carry
       (.CI(1'b0),
        .CO({R_bps_rx_cnt0_carry_n_0,R_bps_rx_cnt0_carry_n_1,R_bps_rx_cnt0_carry_n_2,R_bps_rx_cnt0_carry_n_3}),
        .CYINIT(R_bps_rx_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_bps_rx_cnt0[4:1]),
        .S(R_bps_rx_cnt[4:1]));
  CARRY4 R_bps_rx_cnt0_carry__0
       (.CI(R_bps_rx_cnt0_carry_n_0),
        .CO({R_bps_rx_cnt0_carry__0_n_0,R_bps_rx_cnt0_carry__0_n_1,R_bps_rx_cnt0_carry__0_n_2,R_bps_rx_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_bps_rx_cnt0[8:5]),
        .S(R_bps_rx_cnt[8:5]));
  CARRY4 R_bps_rx_cnt0_carry__1
       (.CI(R_bps_rx_cnt0_carry__0_n_0),
        .CO({NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED[3],R_bps_rx_cnt0_carry__1_n_1,R_bps_rx_cnt0_carry__1_n_2,R_bps_rx_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_bps_rx_cnt0[12:9]),
        .S(R_bps_rx_cnt[12:9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \R_bps_rx_cnt[0]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt[0]),
        .O(\R_bps_rx_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[10]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[11]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[12]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h8880808080808080)) 
    \R_bps_rx_cnt[12]_i_2 
       (.I0(R_bps_rx_cnt[9]),
        .I1(R_bps_rx_cnt[8]),
        .I2(R_bps_rx_cnt[7]),
        .I3(R_bps_rx_cnt[6]),
        .I4(R_bps_rx_cnt[5]),
        .I5(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .O(\R_bps_rx_cnt[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \R_bps_rx_cnt[12]_i_3 
       (.I0(R_bps_rx_cnt[4]),
        .I1(R_bps_rx_cnt[1]),
        .I2(R_bps_rx_cnt[0]),
        .I3(R_bps_rx_cnt[3]),
        .I4(R_bps_rx_cnt[2]),
        .O(\R_bps_rx_cnt[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[1]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[2]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[3]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[4]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[5]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[6]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[7]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[8]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \R_bps_rx_cnt[9]_i_1 
       (.I0(O_bps_rx_clk_en),
        .I1(\R_bps_rx_cnt[12]_i_2_n_0 ),
        .I2(R_bps_rx_cnt[10]),
        .I3(R_bps_rx_cnt[12]),
        .I4(R_bps_rx_cnt[11]),
        .I5(R_bps_rx_cnt0[9]),
        .O(p_0_in[9]));
  FDCE \R_bps_rx_cnt_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_bps_rx_cnt[0]_i_1_n_0 ),
        .Q(R_bps_rx_cnt[0]));
  FDCE \R_bps_rx_cnt_reg[10] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[10]),
        .Q(R_bps_rx_cnt[10]));
  FDCE \R_bps_rx_cnt_reg[11] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[11]),
        .Q(R_bps_rx_cnt[11]));
  FDCE \R_bps_rx_cnt_reg[12] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[12]),
        .Q(R_bps_rx_cnt[12]));
  FDCE \R_bps_rx_cnt_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[1]),
        .Q(R_bps_rx_cnt[1]));
  FDCE \R_bps_rx_cnt_reg[2] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[2]),
        .Q(R_bps_rx_cnt[2]));
  FDCE \R_bps_rx_cnt_reg[3] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[3]),
        .Q(R_bps_rx_cnt[3]));
  FDCE \R_bps_rx_cnt_reg[4] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[4]),
        .Q(R_bps_rx_cnt[4]));
  FDCE \R_bps_rx_cnt_reg[5] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[5]),
        .Q(R_bps_rx_cnt[5]));
  FDCE \R_bps_rx_cnt_reg[6] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[6]),
        .Q(R_bps_rx_cnt[6]));
  FDCE \R_bps_rx_cnt_reg[7] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[7]),
        .Q(R_bps_rx_cnt[7]));
  FDCE \R_bps_rx_cnt_reg[8] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[8]),
        .Q(R_bps_rx_cnt[8]));
  FDCE \R_bps_rx_cnt_reg[9] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(p_0_in[9]),
        .Q(R_bps_rx_cnt[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \R_para_data_reg[6]_i_5 
       (.I0(W_bps_rx_clk),
        .I1(Q),
        .O(\FSM_sequential_R_state_reg[3] ));
endmodule

module uart_display_ip_light_show
   (\R_dx_temp_reg[0]_0 ,
    \R_dx_temp_reg[1]_0 ,
    O_led,
    I_clk,
    Q,
    I_rst_n);
  output \R_dx_temp_reg[0]_0 ;
  output \R_dx_temp_reg[1]_0 ;
  output [6:0]O_led;
  input I_clk;
  input [7:0]Q;
  input I_rst_n;

  wire I_clk;
  wire I_rst_n;
  wire [6:0]O_led;
  wire \O_led[5]_INST_0_i_1_n_0 ;
  wire \O_led[6]_INST_0_i_1_n_0 ;
  wire \O_led[6]_INST_0_i_2_n_0 ;
  wire \O_led[6]_INST_0_i_3_n_0 ;
  wire [7:0]Q;
  wire [32:0]R_counter;
  wire [32:1]R_counter0;
  wire R_counter0_carry__0_n_0;
  wire R_counter0_carry__0_n_1;
  wire R_counter0_carry__0_n_2;
  wire R_counter0_carry__0_n_3;
  wire R_counter0_carry__1_n_0;
  wire R_counter0_carry__1_n_1;
  wire R_counter0_carry__1_n_2;
  wire R_counter0_carry__1_n_3;
  wire R_counter0_carry__2_n_0;
  wire R_counter0_carry__2_n_1;
  wire R_counter0_carry__2_n_2;
  wire R_counter0_carry__2_n_3;
  wire R_counter0_carry__3_n_0;
  wire R_counter0_carry__3_n_1;
  wire R_counter0_carry__3_n_2;
  wire R_counter0_carry__3_n_3;
  wire R_counter0_carry__4_n_0;
  wire R_counter0_carry__4_n_1;
  wire R_counter0_carry__4_n_2;
  wire R_counter0_carry__4_n_3;
  wire R_counter0_carry__5_n_0;
  wire R_counter0_carry__5_n_1;
  wire R_counter0_carry__5_n_2;
  wire R_counter0_carry__5_n_3;
  wire R_counter0_carry__6_n_1;
  wire R_counter0_carry__6_n_2;
  wire R_counter0_carry__6_n_3;
  wire R_counter0_carry_n_0;
  wire R_counter0_carry_n_1;
  wire R_counter0_carry_n_2;
  wire R_counter0_carry_n_3;
  wire \R_counter[0]_i_1_n_0 ;
  wire \R_counter[10]_i_1_n_0 ;
  wire \R_counter[11]_i_1_n_0 ;
  wire \R_counter[12]_i_1_n_0 ;
  wire \R_counter[13]_i_1_n_0 ;
  wire \R_counter[14]_i_1_n_0 ;
  wire \R_counter[15]_i_1_n_0 ;
  wire \R_counter[16]_i_1_n_0 ;
  wire \R_counter[17]_i_1_n_0 ;
  wire \R_counter[18]_i_1_n_0 ;
  wire \R_counter[19]_i_1_n_0 ;
  wire \R_counter[1]_i_1_n_0 ;
  wire \R_counter[20]_i_1_n_0 ;
  wire \R_counter[21]_i_1_n_0 ;
  wire \R_counter[22]_i_1_n_0 ;
  wire \R_counter[23]_i_1_n_0 ;
  wire \R_counter[24]_i_1_n_0 ;
  wire \R_counter[25]_i_1_n_0 ;
  wire \R_counter[26]_i_1_n_0 ;
  wire \R_counter[27]_i_1_n_0 ;
  wire \R_counter[28]_i_1_n_0 ;
  wire \R_counter[29]_i_1_n_0 ;
  wire \R_counter[2]_i_1_n_0 ;
  wire \R_counter[30]_i_1_n_0 ;
  wire \R_counter[31]_i_1_n_0 ;
  wire \R_counter[32]_i_1_n_0 ;
  wire \R_counter[3]_i_1_n_0 ;
  wire \R_counter[4]_i_1_n_0 ;
  wire \R_counter[5]_i_1_n_0 ;
  wire \R_counter[6]_i_1_n_0 ;
  wire \R_counter[7]_i_1_n_0 ;
  wire \R_counter[8]_i_1_n_0 ;
  wire \R_counter[9]_i_1_n_0 ;
  wire R_dx_temp11_out;
  wire \R_dx_temp[0]_i_1_n_0 ;
  wire \R_dx_temp[1]_i_1_n_0 ;
  wire \R_dx_temp_reg[0]_0 ;
  wire \R_dx_temp_reg[1]_0 ;
  wire R_temp;
  wire \R_temp[0]_C_i_1_n_0 ;
  wire \R_temp[0]_P_i_1_n_0 ;
  wire \R_temp[1]_C_i_1_n_0 ;
  wire \R_temp[1]_P_i_1_n_0 ;
  wire \R_temp[2]_C_i_1_n_0 ;
  wire \R_temp[2]_P_i_1_n_0 ;
  wire \R_temp[3]_C_i_1_n_0 ;
  wire \R_temp[3]_P_i_10_n_0 ;
  wire \R_temp[3]_P_i_2_n_0 ;
  wire \R_temp[3]_P_i_3_n_0 ;
  wire \R_temp[3]_P_i_4_n_0 ;
  wire \R_temp[3]_P_i_5_n_0 ;
  wire \R_temp[3]_P_i_6_n_0 ;
  wire \R_temp[3]_P_i_7_n_0 ;
  wire \R_temp[3]_P_i_8_n_0 ;
  wire \R_temp[3]_P_i_9_n_0 ;
  wire \R_temp_reg[0]_C_n_0 ;
  wire \R_temp_reg[0]_LDC_i_1_n_0 ;
  wire \R_temp_reg[0]_LDC_i_2_n_0 ;
  wire \R_temp_reg[0]_LDC_n_0 ;
  wire \R_temp_reg[0]_P_n_0 ;
  wire \R_temp_reg[1]_C_n_0 ;
  wire \R_temp_reg[1]_LDC_i_1_n_0 ;
  wire \R_temp_reg[1]_LDC_i_2_n_0 ;
  wire \R_temp_reg[1]_LDC_n_0 ;
  wire \R_temp_reg[1]_P_n_0 ;
  wire \R_temp_reg[2]_C_n_0 ;
  wire \R_temp_reg[2]_LDC_i_1_n_0 ;
  wire \R_temp_reg[2]_LDC_i_2_n_0 ;
  wire \R_temp_reg[2]_LDC_n_0 ;
  wire \R_temp_reg[2]_P_n_0 ;
  wire \R_temp_reg[3]_C_n_0 ;
  wire \R_temp_reg[3]_LDC_i_1_n_0 ;
  wire \R_temp_reg[3]_LDC_i_2_n_0 ;
  wire \R_temp_reg[3]_LDC_n_0 ;
  wire \R_temp_reg[3]_P_n_0 ;
  wire [3:3]NLW_R_counter0_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hE2FFFFE2FFFF1DE2)) 
    \O_led[0]_INST_0 
       (.I0(\R_temp_reg[3]_C_n_0 ),
        .I1(\R_temp_reg[3]_LDC_n_0 ),
        .I2(\R_temp_reg[3]_P_n_0 ),
        .I3(\O_led[6]_INST_0_i_2_n_0 ),
        .I4(\O_led[6]_INST_0_i_3_n_0 ),
        .I5(\O_led[6]_INST_0_i_1_n_0 ),
        .O(O_led[0]));
  LUT6 #(
    .INIT(64'hDF71DFDFDF717171)) 
    \O_led[1]_INST_0 
       (.I0(\O_led[6]_INST_0_i_1_n_0 ),
        .I1(\O_led[6]_INST_0_i_3_n_0 ),
        .I2(\O_led[6]_INST_0_i_2_n_0 ),
        .I3(\R_temp_reg[3]_P_n_0 ),
        .I4(\R_temp_reg[3]_LDC_n_0 ),
        .I5(\R_temp_reg[3]_C_n_0 ),
        .O(O_led[1]));
  LUT6 #(
    .INIT(64'hE2E2E200FFFFE2FF)) 
    \O_led[2]_INST_0 
       (.I0(\R_temp_reg[3]_C_n_0 ),
        .I1(\R_temp_reg[3]_LDC_n_0 ),
        .I2(\R_temp_reg[3]_P_n_0 ),
        .I3(\O_led[6]_INST_0_i_2_n_0 ),
        .I4(\O_led[6]_INST_0_i_3_n_0 ),
        .I5(\O_led[6]_INST_0_i_1_n_0 ),
        .O(O_led[2]));
  LUT6 #(
    .INIT(64'h5555ABFBFEAEFD5D)) 
    \O_led[3]_INST_0 
       (.I0(\O_led[6]_INST_0_i_1_n_0 ),
        .I1(\R_temp_reg[3]_C_n_0 ),
        .I2(\R_temp_reg[3]_LDC_n_0 ),
        .I3(\R_temp_reg[3]_P_n_0 ),
        .I4(\O_led[6]_INST_0_i_2_n_0 ),
        .I5(\O_led[6]_INST_0_i_3_n_0 ),
        .O(O_led[3]));
  LUT6 #(
    .INIT(64'h1DFFFFFF1DE21DFF)) 
    \O_led[4]_INST_0 
       (.I0(\R_temp_reg[3]_C_n_0 ),
        .I1(\R_temp_reg[3]_LDC_n_0 ),
        .I2(\R_temp_reg[3]_P_n_0 ),
        .I3(\O_led[6]_INST_0_i_2_n_0 ),
        .I4(\O_led[6]_INST_0_i_3_n_0 ),
        .I5(\O_led[6]_INST_0_i_1_n_0 ),
        .O(O_led[4]));
  LUT6 #(
    .INIT(64'h297F2929297F7F7F)) 
    \O_led[5]_INST_0 
       (.I0(\O_led[6]_INST_0_i_1_n_0 ),
        .I1(\O_led[6]_INST_0_i_3_n_0 ),
        .I2(\O_led[5]_INST_0_i_1_n_0 ),
        .I3(\R_temp_reg[2]_P_n_0 ),
        .I4(\R_temp_reg[2]_LDC_n_0 ),
        .I5(\R_temp_reg[2]_C_n_0 ),
        .O(O_led[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \O_led[5]_INST_0_i_1 
       (.I0(\R_temp_reg[3]_P_n_0 ),
        .I1(\R_temp_reg[3]_LDC_n_0 ),
        .I2(\R_temp_reg[3]_C_n_0 ),
        .O(\O_led[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF57F756A6FD5D)) 
    \O_led[6]_INST_0 
       (.I0(\O_led[6]_INST_0_i_1_n_0 ),
        .I1(\R_temp_reg[3]_C_n_0 ),
        .I2(\R_temp_reg[3]_LDC_n_0 ),
        .I3(\R_temp_reg[3]_P_n_0 ),
        .I4(\O_led[6]_INST_0_i_2_n_0 ),
        .I5(\O_led[6]_INST_0_i_3_n_0 ),
        .O(O_led[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \O_led[6]_INST_0_i_1 
       (.I0(\R_temp_reg[0]_P_n_0 ),
        .I1(\R_temp_reg[0]_LDC_n_0 ),
        .I2(\R_temp_reg[0]_C_n_0 ),
        .O(\O_led[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \O_led[6]_INST_0_i_2 
       (.I0(\R_temp_reg[2]_P_n_0 ),
        .I1(\R_temp_reg[2]_LDC_n_0 ),
        .I2(\R_temp_reg[2]_C_n_0 ),
        .O(\O_led[6]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \O_led[6]_INST_0_i_3 
       (.I0(\R_temp_reg[1]_P_n_0 ),
        .I1(\R_temp_reg[1]_LDC_n_0 ),
        .I2(\R_temp_reg[1]_C_n_0 ),
        .O(\O_led[6]_INST_0_i_3_n_0 ));
  CARRY4 R_counter0_carry
       (.CI(1'b0),
        .CO({R_counter0_carry_n_0,R_counter0_carry_n_1,R_counter0_carry_n_2,R_counter0_carry_n_3}),
        .CYINIT(R_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[4:1]),
        .S(R_counter[4:1]));
  CARRY4 R_counter0_carry__0
       (.CI(R_counter0_carry_n_0),
        .CO({R_counter0_carry__0_n_0,R_counter0_carry__0_n_1,R_counter0_carry__0_n_2,R_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[8:5]),
        .S(R_counter[8:5]));
  CARRY4 R_counter0_carry__1
       (.CI(R_counter0_carry__0_n_0),
        .CO({R_counter0_carry__1_n_0,R_counter0_carry__1_n_1,R_counter0_carry__1_n_2,R_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[12:9]),
        .S(R_counter[12:9]));
  CARRY4 R_counter0_carry__2
       (.CI(R_counter0_carry__1_n_0),
        .CO({R_counter0_carry__2_n_0,R_counter0_carry__2_n_1,R_counter0_carry__2_n_2,R_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[16:13]),
        .S(R_counter[16:13]));
  CARRY4 R_counter0_carry__3
       (.CI(R_counter0_carry__2_n_0),
        .CO({R_counter0_carry__3_n_0,R_counter0_carry__3_n_1,R_counter0_carry__3_n_2,R_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[20:17]),
        .S(R_counter[20:17]));
  CARRY4 R_counter0_carry__4
       (.CI(R_counter0_carry__3_n_0),
        .CO({R_counter0_carry__4_n_0,R_counter0_carry__4_n_1,R_counter0_carry__4_n_2,R_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[24:21]),
        .S(R_counter[24:21]));
  CARRY4 R_counter0_carry__5
       (.CI(R_counter0_carry__4_n_0),
        .CO({R_counter0_carry__5_n_0,R_counter0_carry__5_n_1,R_counter0_carry__5_n_2,R_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[28:25]),
        .S(R_counter[28:25]));
  CARRY4 R_counter0_carry__6
       (.CI(R_counter0_carry__5_n_0),
        .CO({NLW_R_counter0_carry__6_CO_UNCONNECTED[3],R_counter0_carry__6_n_1,R_counter0_carry__6_n_2,R_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R_counter0[32:29]),
        .S(R_counter[32:29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \R_counter[0]_i_1 
       (.I0(R_temp),
        .I1(R_counter[0]),
        .O(\R_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[10]_i_1 
       (.I0(R_counter0[10]),
        .I1(R_temp),
        .O(\R_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[11]_i_1 
       (.I0(R_counter0[11]),
        .I1(R_temp),
        .O(\R_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[12]_i_1 
       (.I0(R_counter0[12]),
        .I1(R_temp),
        .O(\R_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[13]_i_1 
       (.I0(R_counter0[13]),
        .I1(R_temp),
        .O(\R_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[14]_i_1 
       (.I0(R_counter0[14]),
        .I1(R_temp),
        .O(\R_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[15]_i_1 
       (.I0(R_counter0[15]),
        .I1(R_temp),
        .O(\R_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[16]_i_1 
       (.I0(R_counter0[16]),
        .I1(R_temp),
        .O(\R_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[17]_i_1 
       (.I0(R_counter0[17]),
        .I1(R_temp),
        .O(\R_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[18]_i_1 
       (.I0(R_counter0[18]),
        .I1(R_temp),
        .O(\R_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[19]_i_1 
       (.I0(R_counter0[19]),
        .I1(R_temp),
        .O(\R_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[1]_i_1 
       (.I0(R_counter0[1]),
        .I1(R_temp),
        .O(\R_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[20]_i_1 
       (.I0(R_counter0[20]),
        .I1(R_temp),
        .O(\R_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[21]_i_1 
       (.I0(R_counter0[21]),
        .I1(R_temp),
        .O(\R_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[22]_i_1 
       (.I0(R_counter0[22]),
        .I1(R_temp),
        .O(\R_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[23]_i_1 
       (.I0(R_counter0[23]),
        .I1(R_temp),
        .O(\R_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[24]_i_1 
       (.I0(R_counter0[24]),
        .I1(R_temp),
        .O(\R_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[25]_i_1 
       (.I0(R_counter0[25]),
        .I1(R_temp),
        .O(\R_counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[26]_i_1 
       (.I0(R_counter0[26]),
        .I1(R_temp),
        .O(\R_counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[27]_i_1 
       (.I0(R_counter0[27]),
        .I1(R_temp),
        .O(\R_counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[28]_i_1 
       (.I0(R_counter0[28]),
        .I1(R_temp),
        .O(\R_counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[29]_i_1 
       (.I0(R_counter0[29]),
        .I1(R_temp),
        .O(\R_counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[2]_i_1 
       (.I0(R_counter0[2]),
        .I1(R_temp),
        .O(\R_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[30]_i_1 
       (.I0(R_counter0[30]),
        .I1(R_temp),
        .O(\R_counter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[31]_i_1 
       (.I0(R_counter0[31]),
        .I1(R_temp),
        .O(\R_counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[32]_i_1 
       (.I0(R_counter0[32]),
        .I1(R_temp),
        .O(\R_counter[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[3]_i_1 
       (.I0(R_counter0[3]),
        .I1(R_temp),
        .O(\R_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[4]_i_1 
       (.I0(R_counter0[4]),
        .I1(R_temp),
        .O(\R_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[5]_i_1 
       (.I0(R_counter0[5]),
        .I1(R_temp),
        .O(\R_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[6]_i_1 
       (.I0(R_counter0[6]),
        .I1(R_temp),
        .O(\R_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[7]_i_1 
       (.I0(R_counter0[7]),
        .I1(R_temp),
        .O(\R_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[8]_i_1 
       (.I0(R_counter0[8]),
        .I1(R_temp),
        .O(\R_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_counter[9]_i_1 
       (.I0(R_counter0[9]),
        .I1(R_temp),
        .O(\R_counter[9]_i_1_n_0 ));
  FDCE \R_counter_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[0]_i_1_n_0 ),
        .Q(R_counter[0]));
  FDCE \R_counter_reg[10] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[10]_i_1_n_0 ),
        .Q(R_counter[10]));
  FDCE \R_counter_reg[11] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[11]_i_1_n_0 ),
        .Q(R_counter[11]));
  FDCE \R_counter_reg[12] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[12]_i_1_n_0 ),
        .Q(R_counter[12]));
  FDCE \R_counter_reg[13] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[13]_i_1_n_0 ),
        .Q(R_counter[13]));
  FDCE \R_counter_reg[14] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[14]_i_1_n_0 ),
        .Q(R_counter[14]));
  FDCE \R_counter_reg[15] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[15]_i_1_n_0 ),
        .Q(R_counter[15]));
  FDCE \R_counter_reg[16] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[16]_i_1_n_0 ),
        .Q(R_counter[16]));
  FDCE \R_counter_reg[17] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[17]_i_1_n_0 ),
        .Q(R_counter[17]));
  FDCE \R_counter_reg[18] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[18]_i_1_n_0 ),
        .Q(R_counter[18]));
  FDCE \R_counter_reg[19] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[19]_i_1_n_0 ),
        .Q(R_counter[19]));
  FDCE \R_counter_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[1]_i_1_n_0 ),
        .Q(R_counter[1]));
  FDCE \R_counter_reg[20] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[20]_i_1_n_0 ),
        .Q(R_counter[20]));
  FDCE \R_counter_reg[21] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[21]_i_1_n_0 ),
        .Q(R_counter[21]));
  FDCE \R_counter_reg[22] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[22]_i_1_n_0 ),
        .Q(R_counter[22]));
  FDCE \R_counter_reg[23] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[23]_i_1_n_0 ),
        .Q(R_counter[23]));
  FDCE \R_counter_reg[24] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[24]_i_1_n_0 ),
        .Q(R_counter[24]));
  FDCE \R_counter_reg[25] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[25]_i_1_n_0 ),
        .Q(R_counter[25]));
  FDCE \R_counter_reg[26] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[26]_i_1_n_0 ),
        .Q(R_counter[26]));
  FDCE \R_counter_reg[27] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[27]_i_1_n_0 ),
        .Q(R_counter[27]));
  FDCE \R_counter_reg[28] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[28]_i_1_n_0 ),
        .Q(R_counter[28]));
  FDCE \R_counter_reg[29] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[29]_i_1_n_0 ),
        .Q(R_counter[29]));
  FDCE \R_counter_reg[2] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[2]_i_1_n_0 ),
        .Q(R_counter[2]));
  FDCE \R_counter_reg[30] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[30]_i_1_n_0 ),
        .Q(R_counter[30]));
  FDCE \R_counter_reg[31] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[31]_i_1_n_0 ),
        .Q(R_counter[31]));
  FDCE \R_counter_reg[32] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[32]_i_1_n_0 ),
        .Q(R_counter[32]));
  FDCE \R_counter_reg[3] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[3]_i_1_n_0 ),
        .Q(R_counter[3]));
  FDCE \R_counter_reg[4] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[4]_i_1_n_0 ),
        .Q(R_counter[4]));
  FDCE \R_counter_reg[5] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[5]_i_1_n_0 ),
        .Q(R_counter[5]));
  FDCE \R_counter_reg[6] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[6]_i_1_n_0 ),
        .Q(R_counter[6]));
  FDCE \R_counter_reg[7] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[7]_i_1_n_0 ),
        .Q(R_counter[7]));
  FDCE \R_counter_reg[8] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[8]_i_1_n_0 ),
        .Q(R_counter[8]));
  FDCE \R_counter_reg[9] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_counter[9]_i_1_n_0 ),
        .Q(R_counter[9]));
  LUT3 #(
    .INIT(8'h74)) 
    \R_dx_temp[0]_i_1 
       (.I0(R_dx_temp11_out),
        .I1(R_temp),
        .I2(\R_dx_temp_reg[0]_0 ),
        .O(\R_dx_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R_dx_temp[1]_i_1 
       (.I0(R_dx_temp11_out),
        .I1(R_temp),
        .I2(\R_dx_temp_reg[1]_0 ),
        .O(\R_dx_temp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \R_dx_temp[1]_i_2 
       (.I0(\R_dx_temp_reg[1]_0 ),
        .I1(\R_dx_temp_reg[0]_0 ),
        .I2(\R_temp[3]_P_i_5_n_0 ),
        .I3(\R_temp[3]_P_i_4_n_0 ),
        .I4(\R_temp[3]_P_i_3_n_0 ),
        .O(R_dx_temp11_out));
  FDPE \R_dx_temp_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .D(\R_dx_temp[0]_i_1_n_0 ),
        .PRE(I_rst_n),
        .Q(\R_dx_temp_reg[0]_0 ));
  FDCE \R_dx_temp_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_dx_temp[1]_i_1_n_0 ),
        .Q(\R_dx_temp_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R_temp[0]_C_i_1 
       (.I0(Q[4]),
        .I1(R_dx_temp11_out),
        .I2(Q[0]),
        .I3(R_temp),
        .I4(\R_temp_reg[0]_C_n_0 ),
        .O(\R_temp[0]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_temp[0]_P_i_1 
       (.I0(Q[4]),
        .I1(R_dx_temp11_out),
        .I2(Q[0]),
        .O(\R_temp[0]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R_temp[1]_C_i_1 
       (.I0(Q[5]),
        .I1(R_dx_temp11_out),
        .I2(Q[1]),
        .I3(R_temp),
        .I4(\R_temp_reg[1]_C_n_0 ),
        .O(\R_temp[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_temp[1]_P_i_1 
       (.I0(Q[5]),
        .I1(R_dx_temp11_out),
        .I2(Q[1]),
        .O(\R_temp[1]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R_temp[2]_C_i_1 
       (.I0(Q[6]),
        .I1(R_dx_temp11_out),
        .I2(Q[2]),
        .I3(R_temp),
        .I4(\R_temp_reg[2]_C_n_0 ),
        .O(\R_temp[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_temp[2]_P_i_1 
       (.I0(Q[6]),
        .I1(R_dx_temp11_out),
        .I2(Q[2]),
        .O(\R_temp[2]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R_temp[3]_C_i_1 
       (.I0(Q[7]),
        .I1(R_dx_temp11_out),
        .I2(Q[3]),
        .I3(R_temp),
        .I4(\R_temp_reg[3]_C_n_0 ),
        .O(\R_temp[3]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00808000)) 
    \R_temp[3]_P_i_1 
       (.I0(\R_temp[3]_P_i_3_n_0 ),
        .I1(\R_temp[3]_P_i_4_n_0 ),
        .I2(\R_temp[3]_P_i_5_n_0 ),
        .I3(\R_dx_temp_reg[0]_0 ),
        .I4(\R_dx_temp_reg[1]_0 ),
        .O(R_temp));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \R_temp[3]_P_i_10 
       (.I0(R_counter[11]),
        .I1(R_counter[12]),
        .I2(R_counter[13]),
        .I3(R_counter[14]),
        .I4(R_counter[16]),
        .I5(R_counter[15]),
        .O(\R_temp[3]_P_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R_temp[3]_P_i_2 
       (.I0(Q[7]),
        .I1(R_dx_temp11_out),
        .I2(Q[3]),
        .O(\R_temp[3]_P_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \R_temp[3]_P_i_3 
       (.I0(R_counter[29]),
        .I1(R_counter[30]),
        .I2(R_counter[31]),
        .I3(R_counter[32]),
        .I4(\R_temp[3]_P_i_6_n_0 ),
        .O(\R_temp[3]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \R_temp[3]_P_i_4 
       (.I0(R_counter[19]),
        .I1(R_counter[20]),
        .I2(R_counter[17]),
        .I3(R_counter[18]),
        .I4(\R_temp[3]_P_i_7_n_0 ),
        .O(\R_temp[3]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \R_temp[3]_P_i_5 
       (.I0(R_counter[2]),
        .I1(R_counter[1]),
        .I2(R_counter[0]),
        .I3(\R_temp[3]_P_i_8_n_0 ),
        .I4(\R_temp[3]_P_i_9_n_0 ),
        .I5(\R_temp[3]_P_i_10_n_0 ),
        .O(\R_temp[3]_P_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \R_temp[3]_P_i_6 
       (.I0(R_counter[28]),
        .I1(R_counter[27]),
        .I2(R_counter[26]),
        .I3(R_counter[25]),
        .O(\R_temp[3]_P_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \R_temp[3]_P_i_7 
       (.I0(R_counter[24]),
        .I1(R_counter[23]),
        .I2(R_counter[22]),
        .I3(R_counter[21]),
        .O(\R_temp[3]_P_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \R_temp[3]_P_i_8 
       (.I0(R_counter[6]),
        .I1(R_counter[5]),
        .I2(R_counter[4]),
        .I3(R_counter[3]),
        .O(\R_temp[3]_P_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \R_temp[3]_P_i_9 
       (.I0(R_counter[10]),
        .I1(R_counter[9]),
        .I2(R_counter[8]),
        .I3(R_counter[7]),
        .O(\R_temp[3]_P_i_9_n_0 ));
  FDCE \R_temp_reg[0]_C 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_temp_reg[0]_LDC_i_2_n_0 ),
        .D(\R_temp[0]_C_i_1_n_0 ),
        .Q(\R_temp_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_temp_reg[0]_LDC 
       (.CLR(\R_temp_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\R_temp_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\R_temp_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R_temp_reg[0]_LDC_i_1 
       (.I0(I_rst_n),
        .I1(Q[0]),
        .O(\R_temp_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \R_temp_reg[0]_LDC_i_2 
       (.I0(I_rst_n),
        .I1(Q[0]),
        .O(\R_temp_reg[0]_LDC_i_2_n_0 ));
  FDPE \R_temp_reg[0]_P 
       (.C(I_clk),
        .CE(R_temp),
        .D(\R_temp[0]_P_i_1_n_0 ),
        .PRE(\R_temp_reg[0]_LDC_i_1_n_0 ),
        .Q(\R_temp_reg[0]_P_n_0 ));
  FDCE \R_temp_reg[1]_C 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_temp_reg[1]_LDC_i_2_n_0 ),
        .D(\R_temp[1]_C_i_1_n_0 ),
        .Q(\R_temp_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_temp_reg[1]_LDC 
       (.CLR(\R_temp_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\R_temp_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\R_temp_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R_temp_reg[1]_LDC_i_1 
       (.I0(I_rst_n),
        .I1(Q[1]),
        .O(\R_temp_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \R_temp_reg[1]_LDC_i_2 
       (.I0(I_rst_n),
        .I1(Q[1]),
        .O(\R_temp_reg[1]_LDC_i_2_n_0 ));
  FDPE \R_temp_reg[1]_P 
       (.C(I_clk),
        .CE(R_temp),
        .D(\R_temp[1]_P_i_1_n_0 ),
        .PRE(\R_temp_reg[1]_LDC_i_1_n_0 ),
        .Q(\R_temp_reg[1]_P_n_0 ));
  FDCE \R_temp_reg[2]_C 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_temp_reg[2]_LDC_i_2_n_0 ),
        .D(\R_temp[2]_C_i_1_n_0 ),
        .Q(\R_temp_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_temp_reg[2]_LDC 
       (.CLR(\R_temp_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\R_temp_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\R_temp_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R_temp_reg[2]_LDC_i_1 
       (.I0(I_rst_n),
        .I1(Q[2]),
        .O(\R_temp_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \R_temp_reg[2]_LDC_i_2 
       (.I0(I_rst_n),
        .I1(Q[2]),
        .O(\R_temp_reg[2]_LDC_i_2_n_0 ));
  FDPE \R_temp_reg[2]_P 
       (.C(I_clk),
        .CE(R_temp),
        .D(\R_temp[2]_P_i_1_n_0 ),
        .PRE(\R_temp_reg[2]_LDC_i_1_n_0 ),
        .Q(\R_temp_reg[2]_P_n_0 ));
  FDCE \R_temp_reg[3]_C 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(\R_temp_reg[3]_LDC_i_2_n_0 ),
        .D(\R_temp[3]_C_i_1_n_0 ),
        .Q(\R_temp_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R_temp_reg[3]_LDC 
       (.CLR(\R_temp_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\R_temp_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\R_temp_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \R_temp_reg[3]_LDC_i_1 
       (.I0(Q[3]),
        .I1(I_rst_n),
        .O(\R_temp_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \R_temp_reg[3]_LDC_i_2 
       (.I0(I_rst_n),
        .I1(Q[3]),
        .O(\R_temp_reg[3]_LDC_i_2_n_0 ));
  FDPE \R_temp_reg[3]_P 
       (.C(I_clk),
        .CE(R_temp),
        .D(\R_temp[3]_P_i_2_n_0 ),
        .PRE(\R_temp_reg[3]_LDC_i_1_n_0 ),
        .Q(\R_temp_reg[3]_P_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "uart_display_ip,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "uart_top,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module uart_display_ip
   (I_clk,
    I_rst_n,
    I_rs232_rxd,
    O_rs232_txd,
    O_led,
    O_px);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_clk, ASSOCIATED_RESET I_rst_n, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input I_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 I_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input I_rst_n;
  input I_rs232_rxd;
  output O_rs232_txd;
  output [6:0]O_led;
  output [1:0]O_px;

  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire [6:0]O_led;
  wire [1:0]O_px;
  wire O_rs232_txd;

  uart_display_ip_uart_top inst
       (.I_clk(I_clk),
        .I_rs232_rxd(I_rs232_rxd),
        .I_rst_n(I_rst_n),
        .O_led(O_led),
        .O_px(O_px),
        .O_rs232_txd(O_rs232_txd));
endmodule

module uart_display_ip_uart_rx
   (O_bps_rx_clk_en,
    W_rx_done,
    Q,
    \O_para_data_reg[7]_0 ,
    I_clk,
    I_rst_n,
    W_bps_rx_clk,
    I_rs232_rxd,
    \R_para_data_reg_reg[6]_0 );
  output O_bps_rx_clk_en;
  output W_rx_done;
  output [0:0]Q;
  output [7:0]\O_para_data_reg[7]_0 ;
  input I_clk;
  input I_rst_n;
  input W_bps_rx_clk;
  input I_rs232_rxd;
  input \R_para_data_reg_reg[6]_0 ;

  wire \FSM_sequential_R_state[0]_i_1_n_0 ;
  wire \FSM_sequential_R_state[1]_i_1_n_0 ;
  wire \FSM_sequential_R_state[2]_i_1_n_0 ;
  wire \FSM_sequential_R_state[3]_i_1_n_0 ;
  wire \FSM_sequential_R_state[3]_i_2_n_0 ;
  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire O_bps_rx_clk_en;
  wire \O_para_data[7]_i_1_n_0 ;
  wire \O_para_data[7]_i_2_n_0 ;
  wire [7:0]\O_para_data_reg[7]_0 ;
  wire O_rx_done1;
  wire O_rx_done_i_1_n_0;
  wire [0:0]Q;
  wire [7:0]R_para_data_reg;
  wire \R_para_data_reg[0]_i_1_n_0 ;
  wire \R_para_data_reg[1]_i_1_n_0 ;
  wire \R_para_data_reg[1]_i_2_n_0 ;
  wire \R_para_data_reg[1]_i_3_n_0 ;
  wire \R_para_data_reg[2]_i_1_n_0 ;
  wire \R_para_data_reg[2]_i_3_n_0 ;
  wire \R_para_data_reg[3]_i_1_n_0 ;
  wire \R_para_data_reg[3]_i_2_n_0 ;
  wire \R_para_data_reg[4]_i_1_n_0 ;
  wire \R_para_data_reg[4]_i_3_n_0 ;
  wire \R_para_data_reg[5]_i_1_n_0 ;
  wire \R_para_data_reg[5]_i_2_n_0 ;
  wire \R_para_data_reg[6]_i_1_n_0 ;
  wire \R_para_data_reg[6]_i_2_n_0 ;
  wire \R_para_data_reg[6]_i_3_n_0 ;
  wire \R_para_data_reg[6]_i_4_n_0 ;
  wire \R_para_data_reg[7]_i_1_n_0 ;
  wire \R_para_data_reg[7]_i_2_n_0 ;
  wire \R_para_data_reg_reg[6]_0 ;
  wire R_receiving_i_1_n_0;
  wire R_receiving_reg_n_0;
  wire [2:0]R_state;
  wire W_bps_rx_clk;
  wire W_rx_done;
  wire [4:0]p_1_in;

  LUT6 #(
    .INIT(64'h0004000400040404)) 
    \FSM_sequential_R_state[0]_i_1 
       (.I0(R_state[0]),
        .I1(R_receiving_reg_n_0),
        .I2(W_rx_done),
        .I3(Q),
        .I4(R_state[1]),
        .I5(R_state[2]),
        .O(\FSM_sequential_R_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \FSM_sequential_R_state[1]_i_1 
       (.I0(Q),
        .I1(R_receiving_reg_n_0),
        .I2(W_rx_done),
        .I3(R_state[0]),
        .I4(R_state[1]),
        .O(\FSM_sequential_R_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000070000000800)) 
    \FSM_sequential_R_state[2]_i_1 
       (.I0(R_state[1]),
        .I1(R_state[0]),
        .I2(Q),
        .I3(R_receiving_reg_n_0),
        .I4(W_rx_done),
        .I5(R_state[2]),
        .O(\FSM_sequential_R_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_R_state[3]_i_1 
       (.I0(W_bps_rx_clk),
        .I1(W_rx_done),
        .I2(R_receiving_reg_n_0),
        .O(\FSM_sequential_R_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001800000)) 
    \FSM_sequential_R_state[3]_i_2 
       (.I0(R_state[0]),
        .I1(R_state[1]),
        .I2(R_state[2]),
        .I3(Q),
        .I4(R_receiving_reg_n_0),
        .I5(W_rx_done),
        .O(\FSM_sequential_R_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[0] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n),
        .D(\FSM_sequential_R_state[0]_i_1_n_0 ),
        .Q(R_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[1] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n),
        .D(\FSM_sequential_R_state[1]_i_1_n_0 ),
        .Q(R_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[2] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n),
        .D(\FSM_sequential_R_state[2]_i_1_n_0 ),
        .Q(R_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDCE \FSM_sequential_R_state_reg[3] 
       (.C(I_clk),
        .CE(\FSM_sequential_R_state[3]_i_1_n_0 ),
        .CLR(I_rst_n),
        .D(\FSM_sequential_R_state[3]_i_2_n_0 ),
        .Q(Q));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    O_bps_rx_clk_en_i_1
       (.I0(R_receiving_reg_n_0),
        .I1(W_rx_done),
        .O(O_rx_done1));
  FDCE O_bps_rx_clk_en_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(O_rx_done1),
        .Q(O_bps_rx_clk_en));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \O_para_data[7]_i_1 
       (.I0(Q),
        .I1(R_state[0]),
        .I2(\O_para_data[7]_i_2_n_0 ),
        .I3(O_rx_done1),
        .I4(I_rst_n),
        .I5(W_bps_rx_clk),
        .O(\O_para_data[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \O_para_data[7]_i_2 
       (.I0(R_state[1]),
        .I1(R_state[2]),
        .O(\O_para_data[7]_i_2_n_0 ));
  FDRE \O_para_data_reg[0] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[0]),
        .Q(\O_para_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \O_para_data_reg[1] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[1]),
        .Q(\O_para_data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \O_para_data_reg[2] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[2]),
        .Q(\O_para_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \O_para_data_reg[3] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[3]),
        .Q(\O_para_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \O_para_data_reg[4] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[4]),
        .Q(\O_para_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \O_para_data_reg[5] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[5]),
        .Q(\O_para_data_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \O_para_data_reg[6] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[6]),
        .Q(\O_para_data_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \O_para_data_reg[7] 
       (.C(I_clk),
        .CE(\O_para_data[7]_i_1_n_0 ),
        .D(R_para_data_reg[7]),
        .Q(\O_para_data_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    O_rx_done_i_1
       (.I0(R_state[0]),
        .I1(\O_para_data[7]_i_2_n_0 ),
        .I2(Q),
        .I3(W_bps_rx_clk),
        .I4(W_rx_done),
        .I5(R_receiving_reg_n_0),
        .O(O_rx_done_i_1_n_0));
  FDCE O_rx_done_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(O_rx_done_i_1_n_0),
        .Q(W_rx_done));
  LUT6 #(
    .INIT(64'hFEFFAAAA0200AAAA)) 
    \R_para_data_reg[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(R_state[1]),
        .I2(R_state[2]),
        .I3(\R_para_data_reg_reg[6]_0 ),
        .I4(O_rx_done1),
        .I5(R_para_data_reg[0]),
        .O(\R_para_data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \R_para_data_reg[0]_i_2 
       (.I0(R_state[2]),
        .I1(O_rx_done1),
        .I2(Q),
        .I3(R_state[0]),
        .I4(I_rs232_rxd),
        .I5(R_state[1]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \R_para_data_reg[1]_i_1 
       (.I0(\R_para_data_reg[1]_i_2_n_0 ),
        .I1(R_state[0]),
        .I2(R_state[1]),
        .I3(I_rs232_rxd),
        .I4(\R_para_data_reg[1]_i_3_n_0 ),
        .I5(R_para_data_reg[1]),
        .O(\R_para_data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \R_para_data_reg[1]_i_2 
       (.I0(Q),
        .I1(R_receiving_reg_n_0),
        .I2(W_rx_done),
        .I3(R_state[2]),
        .O(\R_para_data_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0002FFFFFFFF)) 
    \R_para_data_reg[1]_i_3 
       (.I0(W_bps_rx_clk),
        .I1(R_state[0]),
        .I2(Q),
        .I3(R_state[2]),
        .I4(W_rx_done),
        .I5(R_receiving_reg_n_0),
        .O(\R_para_data_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFFFF08AA0000)) 
    \R_para_data_reg[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(\R_para_data_reg_reg[6]_0 ),
        .I2(R_state[2]),
        .I3(O_rx_done1),
        .I4(\R_para_data_reg[2]_i_3_n_0 ),
        .I5(R_para_data_reg[2]),
        .O(\R_para_data_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \R_para_data_reg[2]_i_2 
       (.I0(R_state[2]),
        .I1(O_rx_done1),
        .I2(Q),
        .I3(R_state[0]),
        .I4(R_state[1]),
        .I5(I_rs232_rxd),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \R_para_data_reg[2]_i_3 
       (.I0(R_state[1]),
        .I1(R_state[0]),
        .I2(W_rx_done),
        .I3(R_receiving_reg_n_0),
        .O(\R_para_data_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \R_para_data_reg[3]_i_1 
       (.I0(R_state[0]),
        .I1(I_rs232_rxd),
        .I2(R_state[1]),
        .I3(\R_para_data_reg[6]_i_2_n_0 ),
        .I4(\R_para_data_reg[3]_i_2_n_0 ),
        .I5(R_para_data_reg[3]),
        .O(\R_para_data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0002FFFFFFFF)) 
    \R_para_data_reg[3]_i_2 
       (.I0(W_bps_rx_clk),
        .I1(R_state[0]),
        .I2(Q),
        .I3(R_state[1]),
        .I4(W_rx_done),
        .I5(R_receiving_reg_n_0),
        .O(\R_para_data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFFFF08AA0000)) 
    \R_para_data_reg[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(\R_para_data_reg_reg[6]_0 ),
        .I2(R_state[1]),
        .I3(O_rx_done1),
        .I4(\R_para_data_reg[4]_i_3_n_0 ),
        .I5(R_para_data_reg[4]),
        .O(\R_para_data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \R_para_data_reg[4]_i_2 
       (.I0(R_state[2]),
        .I1(O_rx_done1),
        .I2(Q),
        .I3(R_state[0]),
        .I4(I_rs232_rxd),
        .I5(R_state[1]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFDFDFF)) 
    \R_para_data_reg[4]_i_3 
       (.I0(R_receiving_reg_n_0),
        .I1(W_rx_done),
        .I2(R_state[1]),
        .I3(R_state[2]),
        .I4(R_state[0]),
        .O(\R_para_data_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \R_para_data_reg[5]_i_1 
       (.I0(\R_para_data_reg[6]_i_2_n_0 ),
        .I1(R_state[0]),
        .I2(R_state[1]),
        .I3(I_rs232_rxd),
        .I4(\R_para_data_reg[5]_i_2_n_0 ),
        .I5(R_para_data_reg[5]),
        .O(\R_para_data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02000002FFFFFFFF)) 
    \R_para_data_reg[5]_i_2 
       (.I0(W_bps_rx_clk),
        .I1(R_state[0]),
        .I2(Q),
        .I3(R_state[2]),
        .I4(R_state[1]),
        .I5(O_rx_done1),
        .O(\R_para_data_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF888880008888)) 
    \R_para_data_reg[6]_i_1 
       (.I0(\R_para_data_reg[6]_i_2_n_0 ),
        .I1(\R_para_data_reg[6]_i_3_n_0 ),
        .I2(\R_para_data_reg[6]_i_4_n_0 ),
        .I3(\R_para_data_reg_reg[6]_0 ),
        .I4(O_rx_done1),
        .I5(R_para_data_reg[6]),
        .O(\R_para_data_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \R_para_data_reg[6]_i_2 
       (.I0(Q),
        .I1(R_receiving_reg_n_0),
        .I2(W_rx_done),
        .I3(R_state[2]),
        .O(\R_para_data_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_para_data_reg[6]_i_3 
       (.I0(I_rs232_rxd),
        .I1(R_state[1]),
        .I2(R_state[0]),
        .O(\R_para_data_reg[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \R_para_data_reg[6]_i_4 
       (.I0(R_state[0]),
        .I1(R_state[1]),
        .I2(R_state[2]),
        .O(\R_para_data_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF000080000000)) 
    \R_para_data_reg[7]_i_1 
       (.I0(I_rs232_rxd),
        .I1(Q),
        .I2(W_bps_rx_clk),
        .I3(\R_para_data_reg[7]_i_2_n_0 ),
        .I4(O_rx_done1),
        .I5(R_para_data_reg[7]),
        .O(\R_para_data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \R_para_data_reg[7]_i_2 
       (.I0(R_state[2]),
        .I1(R_state[1]),
        .I2(R_state[0]),
        .O(\R_para_data_reg[7]_i_2_n_0 ));
  FDCE \R_para_data_reg_reg[0] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[0]_i_1_n_0 ),
        .Q(R_para_data_reg[0]));
  FDCE \R_para_data_reg_reg[1] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[1]_i_1_n_0 ),
        .Q(R_para_data_reg[1]));
  FDCE \R_para_data_reg_reg[2] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[2]_i_1_n_0 ),
        .Q(R_para_data_reg[2]));
  FDCE \R_para_data_reg_reg[3] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[3]_i_1_n_0 ),
        .Q(R_para_data_reg[3]));
  FDCE \R_para_data_reg_reg[4] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[4]_i_1_n_0 ),
        .Q(R_para_data_reg[4]));
  FDCE \R_para_data_reg_reg[5] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[5]_i_1_n_0 ),
        .Q(R_para_data_reg[5]));
  FDCE \R_para_data_reg_reg[6] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[6]_i_1_n_0 ),
        .Q(R_para_data_reg[6]));
  FDCE \R_para_data_reg_reg[7] 
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(\R_para_data_reg[7]_i_1_n_0 ),
        .Q(R_para_data_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h51)) 
    R_receiving_i_1
       (.I0(W_rx_done),
        .I1(I_rs232_rxd),
        .I2(R_receiving_reg_n_0),
        .O(R_receiving_i_1_n_0));
  FDCE R_receiving_reg
       (.C(I_clk),
        .CE(1'b1),
        .CLR(I_rst_n),
        .D(R_receiving_i_1_n_0),
        .Q(R_receiving_reg_n_0));
endmodule

module uart_display_ip_uart_top
   (I_clk,
    I_rst_n,
    I_rs232_rxd,
    O_rs232_txd,
    O_led,
    O_px);
  input I_clk;
  input I_rst_n;
  input I_rs232_rxd;
  output O_rs232_txd;
  output [6:0]O_led;
  output [1:0]O_px;

  wire \<const0> ;
  wire I_clk;
  wire I_rs232_rxd;
  wire I_rst_n;
  wire O_bps_rx_clk_en;
  wire [6:0]O_led;
  wire [7:0]O_para_data;
  wire [1:0]O_px;
  wire [7:0]R_led_reg;
  wire [3:3]R_state;
  wire U_baudrate_gen_n_0;
  wire W_bps_rx_clk;
  wire W_rx_done;

  assign O_rs232_txd = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDCE \R_led_reg_reg[0] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[0]),
        .Q(R_led_reg[0]));
  FDCE \R_led_reg_reg[1] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[1]),
        .Q(R_led_reg[1]));
  FDCE \R_led_reg_reg[2] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[2]),
        .Q(R_led_reg[2]));
  FDCE \R_led_reg_reg[3] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[3]),
        .Q(R_led_reg[3]));
  FDCE \R_led_reg_reg[4] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[4]),
        .Q(R_led_reg[4]));
  FDCE \R_led_reg_reg[5] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[5]),
        .Q(R_led_reg[5]));
  FDCE \R_led_reg_reg[6] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[6]),
        .Q(R_led_reg[6]));
  FDCE \R_led_reg_reg[7] 
       (.C(I_clk),
        .CE(W_rx_done),
        .CLR(I_rst_n),
        .D(O_para_data[7]),
        .Q(R_led_reg[7]));
  uart_display_ip_baudrate_gen U_baudrate_gen
       (.\FSM_sequential_R_state_reg[3] (U_baudrate_gen_n_0),
        .I_clk(I_clk),
        .I_rst_n(I_rst_n),
        .O_bps_rx_clk_en(O_bps_rx_clk_en),
        .Q(R_state),
        .W_bps_rx_clk(W_bps_rx_clk));
  uart_display_ip_light_show U_light_show
       (.I_clk(I_clk),
        .I_rst_n(I_rst_n),
        .O_led(O_led),
        .Q(R_led_reg),
        .\R_dx_temp_reg[0]_0 (O_px[0]),
        .\R_dx_temp_reg[1]_0 (O_px[1]));
  uart_display_ip_uart_rx U_uart_rxd
       (.I_clk(I_clk),
        .I_rs232_rxd(I_rs232_rxd),
        .I_rst_n(I_rst_n),
        .O_bps_rx_clk_en(O_bps_rx_clk_en),
        .\O_para_data_reg[7]_0 (O_para_data),
        .Q(R_state),
        .\R_para_data_reg_reg[6]_0 (U_baudrate_gen_n_0),
        .W_bps_rx_clk(W_bps_rx_clk),
        .W_rx_done(W_rx_done));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
