// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  1 22:29:47 2022
// Host        : Danny-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top uart_display_ip -prefix
//               uart_display_ip_ uart_display_ip_stub.v
// Design      : uart_display_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_top,Vivado 2019.2" *)
module uart_display_ip(I_clk, I_rst_n, I_rs232_rxd, O_rs232_txd, O_led, 
  O_px)
/* synthesis syn_black_box black_box_pad_pin="I_clk,I_rst_n,I_rs232_rxd,O_rs232_txd,O_led[6:0],O_px[1:0]" */;
  input I_clk;
  input I_rst_n;
  input I_rs232_rxd;
  output O_rs232_txd;
  output [6:0]O_led;
  output [1:0]O_px;
endmodule
