-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Sep  1 22:29:47 2022
-- Host        : Danny-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top uart_display_ip -prefix
--               uart_display_ip_ uart_display_ip_stub.vhdl
-- Design      : uart_display_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_display_ip is
  Port ( 
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O_px : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end uart_display_ip;

architecture stub of uart_display_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_clk,I_rst_n,I_rs232_rxd,O_rs232_txd,O_led[6:0],O_px[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_top,Vivado 2019.2";
begin
end;
