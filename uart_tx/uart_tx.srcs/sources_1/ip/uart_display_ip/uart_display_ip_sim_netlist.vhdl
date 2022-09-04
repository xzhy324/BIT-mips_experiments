-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Sep  1 22:29:47 2022
-- Host        : Danny-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top uart_display_ip -prefix
--               uart_display_ip_ uart_display_ip_sim_netlist.vhdl
-- Design      : uart_display_ip
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_display_ip_baudrate_gen is
  port (
    \FSM_sequential_R_state_reg[3]\ : out STD_LOGIC;
    W_bps_rx_clk : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O_bps_rx_clk_en : in STD_LOGIC;
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC
  );
end uart_display_ip_baudrate_gen;

architecture STRUCTURE of uart_display_ip_baudrate_gen is
  signal \FSM_sequential_R_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_6_n_0\ : STD_LOGIC;
  signal R_bps_rx_cnt : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal R_bps_rx_cnt0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \R_bps_rx_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \R_bps_rx_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_0 : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_1 : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_2 : STD_LOGIC;
  signal R_bps_rx_cnt0_carry_n_3 : STD_LOGIC;
  signal \R_bps_rx_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_bps_rx_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \R_bps_rx_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \^w_bps_rx_clk\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  W_bps_rx_clk <= \^w_bps_rx_clk\;
\FSM_sequential_R_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_sequential_R_state[3]_i_4_n_0\,
      I1 => \FSM_sequential_R_state[3]_i_5_n_0\,
      I2 => \FSM_sequential_R_state[3]_i_6_n_0\,
      O => \^w_bps_rx_clk\
    );
\FSM_sequential_R_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => R_bps_rx_cnt(5),
      I1 => R_bps_rx_cnt(3),
      I2 => R_bps_rx_cnt(4),
      I3 => R_bps_rx_cnt(2),
      I4 => R_bps_rx_cnt(0),
      I5 => R_bps_rx_cnt(1),
      O => \FSM_sequential_R_state[3]_i_4_n_0\
    );
\FSM_sequential_R_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230023002300"
    )
        port map (
      I0 => R_bps_rx_cnt(10),
      I1 => R_bps_rx_cnt(11),
      I2 => R_bps_rx_cnt(9),
      I3 => R_bps_rx_cnt(8),
      I4 => R_bps_rx_cnt(7),
      I5 => R_bps_rx_cnt(6),
      O => \FSM_sequential_R_state[3]_i_5_n_0\
    );
\FSM_sequential_R_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => R_bps_rx_cnt(5),
      I1 => R_bps_rx_cnt(7),
      I2 => R_bps_rx_cnt(8),
      I3 => R_bps_rx_cnt(10),
      I4 => R_bps_rx_cnt(12),
      I5 => R_bps_rx_cnt(11),
      O => \FSM_sequential_R_state[3]_i_6_n_0\
    );
R_bps_rx_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => R_bps_rx_cnt0_carry_n_0,
      CO(2) => R_bps_rx_cnt0_carry_n_1,
      CO(1) => R_bps_rx_cnt0_carry_n_2,
      CO(0) => R_bps_rx_cnt0_carry_n_3,
      CYINIT => R_bps_rx_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_bps_rx_cnt0(4 downto 1),
      S(3 downto 0) => R_bps_rx_cnt(4 downto 1)
    );
\R_bps_rx_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => R_bps_rx_cnt0_carry_n_0,
      CO(3) => \R_bps_rx_cnt0_carry__0_n_0\,
      CO(2) => \R_bps_rx_cnt0_carry__0_n_1\,
      CO(1) => \R_bps_rx_cnt0_carry__0_n_2\,
      CO(0) => \R_bps_rx_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_bps_rx_cnt0(8 downto 5),
      S(3 downto 0) => R_bps_rx_cnt(8 downto 5)
    );
\R_bps_rx_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_bps_rx_cnt0_carry__0_n_0\,
      CO(3) => \NLW_R_bps_rx_cnt0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \R_bps_rx_cnt0_carry__1_n_1\,
      CO(1) => \R_bps_rx_cnt0_carry__1_n_2\,
      CO(0) => \R_bps_rx_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_bps_rx_cnt0(12 downto 9),
      S(3 downto 0) => R_bps_rx_cnt(12 downto 9)
    );
\R_bps_rx_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt(0),
      O => \R_bps_rx_cnt[0]_i_1_n_0\
    );
\R_bps_rx_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(10),
      O => p_0_in(10)
    );
\R_bps_rx_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(11),
      O => p_0_in(11)
    );
\R_bps_rx_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(12),
      O => p_0_in(12)
    );
\R_bps_rx_cnt[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880808080808080"
    )
        port map (
      I0 => R_bps_rx_cnt(9),
      I1 => R_bps_rx_cnt(8),
      I2 => R_bps_rx_cnt(7),
      I3 => R_bps_rx_cnt(6),
      I4 => R_bps_rx_cnt(5),
      I5 => \R_bps_rx_cnt[12]_i_3_n_0\,
      O => \R_bps_rx_cnt[12]_i_2_n_0\
    );
\R_bps_rx_cnt[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => R_bps_rx_cnt(4),
      I1 => R_bps_rx_cnt(1),
      I2 => R_bps_rx_cnt(0),
      I3 => R_bps_rx_cnt(3),
      I4 => R_bps_rx_cnt(2),
      O => \R_bps_rx_cnt[12]_i_3_n_0\
    );
\R_bps_rx_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(1),
      O => p_0_in(1)
    );
\R_bps_rx_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(2),
      O => p_0_in(2)
    );
\R_bps_rx_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(3),
      O => p_0_in(3)
    );
\R_bps_rx_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(4),
      O => p_0_in(4)
    );
\R_bps_rx_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(5),
      O => p_0_in(5)
    );
\R_bps_rx_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(6),
      O => p_0_in(6)
    );
\R_bps_rx_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(7),
      O => p_0_in(7)
    );
\R_bps_rx_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(8),
      O => p_0_in(8)
    );
\R_bps_rx_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => O_bps_rx_clk_en,
      I1 => \R_bps_rx_cnt[12]_i_2_n_0\,
      I2 => R_bps_rx_cnt(10),
      I3 => R_bps_rx_cnt(12),
      I4 => R_bps_rx_cnt(11),
      I5 => R_bps_rx_cnt0(9),
      O => p_0_in(9)
    );
\R_bps_rx_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_bps_rx_cnt[0]_i_1_n_0\,
      Q => R_bps_rx_cnt(0)
    );
\R_bps_rx_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(10),
      Q => R_bps_rx_cnt(10)
    );
\R_bps_rx_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(11),
      Q => R_bps_rx_cnt(11)
    );
\R_bps_rx_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(12),
      Q => R_bps_rx_cnt(12)
    );
\R_bps_rx_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(1),
      Q => R_bps_rx_cnt(1)
    );
\R_bps_rx_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(2),
      Q => R_bps_rx_cnt(2)
    );
\R_bps_rx_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(3),
      Q => R_bps_rx_cnt(3)
    );
\R_bps_rx_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(4),
      Q => R_bps_rx_cnt(4)
    );
\R_bps_rx_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(5),
      Q => R_bps_rx_cnt(5)
    );
\R_bps_rx_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(6),
      Q => R_bps_rx_cnt(6)
    );
\R_bps_rx_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(7),
      Q => R_bps_rx_cnt(7)
    );
\R_bps_rx_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(8),
      Q => R_bps_rx_cnt(8)
    );
\R_bps_rx_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => p_0_in(9),
      Q => R_bps_rx_cnt(9)
    );
\R_para_data_reg[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^w_bps_rx_clk\,
      I1 => Q(0),
      O => \FSM_sequential_R_state_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_display_ip_light_show is
  port (
    \R_dx_temp_reg[0]_0\ : out STD_LOGIC;
    \R_dx_temp_reg[1]_0\ : out STD_LOGIC;
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    I_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_rst_n : in STD_LOGIC
  );
end uart_display_ip_light_show;

architecture STRUCTURE of uart_display_ip_light_show is
  signal \O_led[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \O_led[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \O_led[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \O_led[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal R_counter : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal R_counter0 : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal \R_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \R_counter0_carry__6_n_1\ : STD_LOGIC;
  signal \R_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \R_counter0_carry__6_n_3\ : STD_LOGIC;
  signal R_counter0_carry_n_0 : STD_LOGIC;
  signal R_counter0_carry_n_1 : STD_LOGIC;
  signal R_counter0_carry_n_2 : STD_LOGIC;
  signal R_counter0_carry_n_3 : STD_LOGIC;
  signal \R_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[32]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \R_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal R_dx_temp11_out : STD_LOGIC;
  signal \R_dx_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_dx_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \^r_dx_temp_reg[0]_0\ : STD_LOGIC;
  signal \^r_dx_temp_reg[1]_0\ : STD_LOGIC;
  signal R_temp : STD_LOGIC;
  signal \R_temp[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[0]_P_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[1]_P_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[2]_P_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_10_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_2_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_3_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_4_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_5_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_6_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_7_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_8_n_0\ : STD_LOGIC;
  signal \R_temp[3]_P_i_9_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[0]_P_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[1]_P_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[2]_P_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_C_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \R_temp_reg[3]_P_n_0\ : STD_LOGIC;
  signal \NLW_R_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_counter[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \R_counter[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_counter[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_counter[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_counter[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R_counter[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \R_counter[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \R_counter[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_counter[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R_counter[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \R_counter[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \R_counter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \R_counter[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \R_counter[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R_counter[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R_counter[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R_counter[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_counter[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R_counter[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_counter[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R_counter[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_counter[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R_counter[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_counter[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_counter[32]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R_counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_counter[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R_counter[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_counter[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \R_counter[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \R_counter[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \R_dx_temp[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \R_temp_reg[3]_LDC\ : label is "LDC";
begin
  \R_dx_temp_reg[0]_0\ <= \^r_dx_temp_reg[0]_0\;
  \R_dx_temp_reg[1]_0\ <= \^r_dx_temp_reg[1]_0\;
\O_led[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFFFE2FFFF1DE2"
    )
        port map (
      I0 => \R_temp_reg[3]_C_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_P_n_0\,
      I3 => \O_led[6]_INST_0_i_2_n_0\,
      I4 => \O_led[6]_INST_0_i_3_n_0\,
      I5 => \O_led[6]_INST_0_i_1_n_0\,
      O => O_led(0)
    );
\O_led[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF71DFDFDF717171"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \O_led[6]_INST_0_i_3_n_0\,
      I2 => \O_led[6]_INST_0_i_2_n_0\,
      I3 => \R_temp_reg[3]_P_n_0\,
      I4 => \R_temp_reg[3]_LDC_n_0\,
      I5 => \R_temp_reg[3]_C_n_0\,
      O => O_led(1)
    );
\O_led[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E200FFFFE2FF"
    )
        port map (
      I0 => \R_temp_reg[3]_C_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_P_n_0\,
      I3 => \O_led[6]_INST_0_i_2_n_0\,
      I4 => \O_led[6]_INST_0_i_3_n_0\,
      I5 => \O_led[6]_INST_0_i_1_n_0\,
      O => O_led(2)
    );
\O_led[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555ABFBFEAEFD5D"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \R_temp_reg[3]_C_n_0\,
      I2 => \R_temp_reg[3]_LDC_n_0\,
      I3 => \R_temp_reg[3]_P_n_0\,
      I4 => \O_led[6]_INST_0_i_2_n_0\,
      I5 => \O_led[6]_INST_0_i_3_n_0\,
      O => O_led(3)
    );
\O_led[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DFFFFFF1DE21DFF"
    )
        port map (
      I0 => \R_temp_reg[3]_C_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_P_n_0\,
      I3 => \O_led[6]_INST_0_i_2_n_0\,
      I4 => \O_led[6]_INST_0_i_3_n_0\,
      I5 => \O_led[6]_INST_0_i_1_n_0\,
      O => O_led(4)
    );
\O_led[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"297F2929297F7F7F"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \O_led[6]_INST_0_i_3_n_0\,
      I2 => \O_led[5]_INST_0_i_1_n_0\,
      I3 => \R_temp_reg[2]_P_n_0\,
      I4 => \R_temp_reg[2]_LDC_n_0\,
      I5 => \R_temp_reg[2]_C_n_0\,
      O => O_led(5)
    );
\O_led[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[3]_P_n_0\,
      I1 => \R_temp_reg[3]_LDC_n_0\,
      I2 => \R_temp_reg[3]_C_n_0\,
      O => \O_led[5]_INST_0_i_1_n_0\
    );
\O_led[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF57F756A6FD5D"
    )
        port map (
      I0 => \O_led[6]_INST_0_i_1_n_0\,
      I1 => \R_temp_reg[3]_C_n_0\,
      I2 => \R_temp_reg[3]_LDC_n_0\,
      I3 => \R_temp_reg[3]_P_n_0\,
      I4 => \O_led[6]_INST_0_i_2_n_0\,
      I5 => \O_led[6]_INST_0_i_3_n_0\,
      O => O_led(6)
    );
\O_led[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[0]_P_n_0\,
      I1 => \R_temp_reg[0]_LDC_n_0\,
      I2 => \R_temp_reg[0]_C_n_0\,
      O => \O_led[6]_INST_0_i_1_n_0\
    );
\O_led[6]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[2]_P_n_0\,
      I1 => \R_temp_reg[2]_LDC_n_0\,
      I2 => \R_temp_reg[2]_C_n_0\,
      O => \O_led[6]_INST_0_i_2_n_0\
    );
\O_led[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R_temp_reg[1]_P_n_0\,
      I1 => \R_temp_reg[1]_LDC_n_0\,
      I2 => \R_temp_reg[1]_C_n_0\,
      O => \O_led[6]_INST_0_i_3_n_0\
    );
R_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => R_counter0_carry_n_0,
      CO(2) => R_counter0_carry_n_1,
      CO(1) => R_counter0_carry_n_2,
      CO(0) => R_counter0_carry_n_3,
      CYINIT => R_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(4 downto 1),
      S(3 downto 0) => R_counter(4 downto 1)
    );
\R_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => R_counter0_carry_n_0,
      CO(3) => \R_counter0_carry__0_n_0\,
      CO(2) => \R_counter0_carry__0_n_1\,
      CO(1) => \R_counter0_carry__0_n_2\,
      CO(0) => \R_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(8 downto 5),
      S(3 downto 0) => R_counter(8 downto 5)
    );
\R_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__0_n_0\,
      CO(3) => \R_counter0_carry__1_n_0\,
      CO(2) => \R_counter0_carry__1_n_1\,
      CO(1) => \R_counter0_carry__1_n_2\,
      CO(0) => \R_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(12 downto 9),
      S(3 downto 0) => R_counter(12 downto 9)
    );
\R_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__1_n_0\,
      CO(3) => \R_counter0_carry__2_n_0\,
      CO(2) => \R_counter0_carry__2_n_1\,
      CO(1) => \R_counter0_carry__2_n_2\,
      CO(0) => \R_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(16 downto 13),
      S(3 downto 0) => R_counter(16 downto 13)
    );
\R_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__2_n_0\,
      CO(3) => \R_counter0_carry__3_n_0\,
      CO(2) => \R_counter0_carry__3_n_1\,
      CO(1) => \R_counter0_carry__3_n_2\,
      CO(0) => \R_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(20 downto 17),
      S(3 downto 0) => R_counter(20 downto 17)
    );
\R_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__3_n_0\,
      CO(3) => \R_counter0_carry__4_n_0\,
      CO(2) => \R_counter0_carry__4_n_1\,
      CO(1) => \R_counter0_carry__4_n_2\,
      CO(0) => \R_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(24 downto 21),
      S(3 downto 0) => R_counter(24 downto 21)
    );
\R_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__4_n_0\,
      CO(3) => \R_counter0_carry__5_n_0\,
      CO(2) => \R_counter0_carry__5_n_1\,
      CO(1) => \R_counter0_carry__5_n_2\,
      CO(0) => \R_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(28 downto 25),
      S(3 downto 0) => R_counter(28 downto 25)
    );
\R_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_counter0_carry__5_n_0\,
      CO(3) => \NLW_R_counter0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \R_counter0_carry__6_n_1\,
      CO(1) => \R_counter0_carry__6_n_2\,
      CO(0) => \R_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => R_counter0(32 downto 29),
      S(3 downto 0) => R_counter(32 downto 29)
    );
\R_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_temp,
      I1 => R_counter(0),
      O => \R_counter[0]_i_1_n_0\
    );
\R_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(10),
      I1 => R_temp,
      O => \R_counter[10]_i_1_n_0\
    );
\R_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(11),
      I1 => R_temp,
      O => \R_counter[11]_i_1_n_0\
    );
\R_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(12),
      I1 => R_temp,
      O => \R_counter[12]_i_1_n_0\
    );
\R_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(13),
      I1 => R_temp,
      O => \R_counter[13]_i_1_n_0\
    );
\R_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(14),
      I1 => R_temp,
      O => \R_counter[14]_i_1_n_0\
    );
\R_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(15),
      I1 => R_temp,
      O => \R_counter[15]_i_1_n_0\
    );
\R_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(16),
      I1 => R_temp,
      O => \R_counter[16]_i_1_n_0\
    );
\R_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(17),
      I1 => R_temp,
      O => \R_counter[17]_i_1_n_0\
    );
\R_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(18),
      I1 => R_temp,
      O => \R_counter[18]_i_1_n_0\
    );
\R_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(19),
      I1 => R_temp,
      O => \R_counter[19]_i_1_n_0\
    );
\R_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(1),
      I1 => R_temp,
      O => \R_counter[1]_i_1_n_0\
    );
\R_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(20),
      I1 => R_temp,
      O => \R_counter[20]_i_1_n_0\
    );
\R_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(21),
      I1 => R_temp,
      O => \R_counter[21]_i_1_n_0\
    );
\R_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(22),
      I1 => R_temp,
      O => \R_counter[22]_i_1_n_0\
    );
\R_counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(23),
      I1 => R_temp,
      O => \R_counter[23]_i_1_n_0\
    );
\R_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(24),
      I1 => R_temp,
      O => \R_counter[24]_i_1_n_0\
    );
\R_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(25),
      I1 => R_temp,
      O => \R_counter[25]_i_1_n_0\
    );
\R_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(26),
      I1 => R_temp,
      O => \R_counter[26]_i_1_n_0\
    );
\R_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(27),
      I1 => R_temp,
      O => \R_counter[27]_i_1_n_0\
    );
\R_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(28),
      I1 => R_temp,
      O => \R_counter[28]_i_1_n_0\
    );
\R_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(29),
      I1 => R_temp,
      O => \R_counter[29]_i_1_n_0\
    );
\R_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(2),
      I1 => R_temp,
      O => \R_counter[2]_i_1_n_0\
    );
\R_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(30),
      I1 => R_temp,
      O => \R_counter[30]_i_1_n_0\
    );
\R_counter[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(31),
      I1 => R_temp,
      O => \R_counter[31]_i_1_n_0\
    );
\R_counter[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(32),
      I1 => R_temp,
      O => \R_counter[32]_i_1_n_0\
    );
\R_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(3),
      I1 => R_temp,
      O => \R_counter[3]_i_1_n_0\
    );
\R_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(4),
      I1 => R_temp,
      O => \R_counter[4]_i_1_n_0\
    );
\R_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(5),
      I1 => R_temp,
      O => \R_counter[5]_i_1_n_0\
    );
\R_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(6),
      I1 => R_temp,
      O => \R_counter[6]_i_1_n_0\
    );
\R_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(7),
      I1 => R_temp,
      O => \R_counter[7]_i_1_n_0\
    );
\R_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(8),
      I1 => R_temp,
      O => \R_counter[8]_i_1_n_0\
    );
\R_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_counter0(9),
      I1 => R_temp,
      O => \R_counter[9]_i_1_n_0\
    );
\R_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[0]_i_1_n_0\,
      Q => R_counter(0)
    );
\R_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[10]_i_1_n_0\,
      Q => R_counter(10)
    );
\R_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[11]_i_1_n_0\,
      Q => R_counter(11)
    );
\R_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[12]_i_1_n_0\,
      Q => R_counter(12)
    );
\R_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[13]_i_1_n_0\,
      Q => R_counter(13)
    );
\R_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[14]_i_1_n_0\,
      Q => R_counter(14)
    );
\R_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[15]_i_1_n_0\,
      Q => R_counter(15)
    );
\R_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[16]_i_1_n_0\,
      Q => R_counter(16)
    );
\R_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[17]_i_1_n_0\,
      Q => R_counter(17)
    );
\R_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[18]_i_1_n_0\,
      Q => R_counter(18)
    );
\R_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[19]_i_1_n_0\,
      Q => R_counter(19)
    );
\R_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[1]_i_1_n_0\,
      Q => R_counter(1)
    );
\R_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[20]_i_1_n_0\,
      Q => R_counter(20)
    );
\R_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[21]_i_1_n_0\,
      Q => R_counter(21)
    );
\R_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[22]_i_1_n_0\,
      Q => R_counter(22)
    );
\R_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[23]_i_1_n_0\,
      Q => R_counter(23)
    );
\R_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[24]_i_1_n_0\,
      Q => R_counter(24)
    );
\R_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[25]_i_1_n_0\,
      Q => R_counter(25)
    );
\R_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[26]_i_1_n_0\,
      Q => R_counter(26)
    );
\R_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[27]_i_1_n_0\,
      Q => R_counter(27)
    );
\R_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[28]_i_1_n_0\,
      Q => R_counter(28)
    );
\R_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[29]_i_1_n_0\,
      Q => R_counter(29)
    );
\R_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[2]_i_1_n_0\,
      Q => R_counter(2)
    );
\R_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[30]_i_1_n_0\,
      Q => R_counter(30)
    );
\R_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[31]_i_1_n_0\,
      Q => R_counter(31)
    );
\R_counter_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[32]_i_1_n_0\,
      Q => R_counter(32)
    );
\R_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[3]_i_1_n_0\,
      Q => R_counter(3)
    );
\R_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[4]_i_1_n_0\,
      Q => R_counter(4)
    );
\R_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[5]_i_1_n_0\,
      Q => R_counter(5)
    );
\R_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[6]_i_1_n_0\,
      Q => R_counter(6)
    );
\R_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[7]_i_1_n_0\,
      Q => R_counter(7)
    );
\R_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[8]_i_1_n_0\,
      Q => R_counter(8)
    );
\R_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_counter[9]_i_1_n_0\,
      Q => R_counter(9)
    );
\R_dx_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => R_dx_temp11_out,
      I1 => R_temp,
      I2 => \^r_dx_temp_reg[0]_0\,
      O => \R_dx_temp[0]_i_1_n_0\
    );
\R_dx_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => R_dx_temp11_out,
      I1 => R_temp,
      I2 => \^r_dx_temp_reg[1]_0\,
      O => \R_dx_temp[1]_i_1_n_0\
    );
\R_dx_temp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^r_dx_temp_reg[1]_0\,
      I1 => \^r_dx_temp_reg[0]_0\,
      I2 => \R_temp[3]_P_i_5_n_0\,
      I3 => \R_temp[3]_P_i_4_n_0\,
      I4 => \R_temp[3]_P_i_3_n_0\,
      O => R_dx_temp11_out
    );
\R_dx_temp_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => '1',
      D => \R_dx_temp[0]_i_1_n_0\,
      PRE => I_rst_n,
      Q => \^r_dx_temp_reg[0]_0\
    );
\R_dx_temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_dx_temp[1]_i_1_n_0\,
      Q => \^r_dx_temp_reg[1]_0\
    );
\R_temp[0]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(4),
      I1 => R_dx_temp11_out,
      I2 => Q(0),
      I3 => R_temp,
      I4 => \R_temp_reg[0]_C_n_0\,
      O => \R_temp[0]_C_i_1_n_0\
    );
\R_temp[0]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => R_dx_temp11_out,
      I2 => Q(0),
      O => \R_temp[0]_P_i_1_n_0\
    );
\R_temp[1]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(5),
      I1 => R_dx_temp11_out,
      I2 => Q(1),
      I3 => R_temp,
      I4 => \R_temp_reg[1]_C_n_0\,
      O => \R_temp[1]_C_i_1_n_0\
    );
\R_temp[1]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => R_dx_temp11_out,
      I2 => Q(1),
      O => \R_temp[1]_P_i_1_n_0\
    );
\R_temp[2]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(6),
      I1 => R_dx_temp11_out,
      I2 => Q(2),
      I3 => R_temp,
      I4 => \R_temp_reg[2]_C_n_0\,
      O => \R_temp[2]_C_i_1_n_0\
    );
\R_temp[2]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => R_dx_temp11_out,
      I2 => Q(2),
      O => \R_temp[2]_P_i_1_n_0\
    );
\R_temp[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => Q(7),
      I1 => R_dx_temp11_out,
      I2 => Q(3),
      I3 => R_temp,
      I4 => \R_temp_reg[3]_C_n_0\,
      O => \R_temp[3]_C_i_1_n_0\
    );
\R_temp[3]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00808000"
    )
        port map (
      I0 => \R_temp[3]_P_i_3_n_0\,
      I1 => \R_temp[3]_P_i_4_n_0\,
      I2 => \R_temp[3]_P_i_5_n_0\,
      I3 => \^r_dx_temp_reg[0]_0\,
      I4 => \^r_dx_temp_reg[1]_0\,
      O => R_temp
    );
\R_temp[3]_P_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => R_counter(11),
      I1 => R_counter(12),
      I2 => R_counter(13),
      I3 => R_counter(14),
      I4 => R_counter(16),
      I5 => R_counter(15),
      O => \R_temp[3]_P_i_10_n_0\
    );
\R_temp[3]_P_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => R_dx_temp11_out,
      I2 => Q(3),
      O => \R_temp[3]_P_i_2_n_0\
    );
\R_temp[3]_P_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => R_counter(29),
      I1 => R_counter(30),
      I2 => R_counter(31),
      I3 => R_counter(32),
      I4 => \R_temp[3]_P_i_6_n_0\,
      O => \R_temp[3]_P_i_3_n_0\
    );
\R_temp[3]_P_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => R_counter(19),
      I1 => R_counter(20),
      I2 => R_counter(17),
      I3 => R_counter(18),
      I4 => \R_temp[3]_P_i_7_n_0\,
      O => \R_temp[3]_P_i_4_n_0\
    );
\R_temp[3]_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => R_counter(2),
      I1 => R_counter(1),
      I2 => R_counter(0),
      I3 => \R_temp[3]_P_i_8_n_0\,
      I4 => \R_temp[3]_P_i_9_n_0\,
      I5 => \R_temp[3]_P_i_10_n_0\,
      O => \R_temp[3]_P_i_5_n_0\
    );
\R_temp[3]_P_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => R_counter(28),
      I1 => R_counter(27),
      I2 => R_counter(26),
      I3 => R_counter(25),
      O => \R_temp[3]_P_i_6_n_0\
    );
\R_temp[3]_P_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => R_counter(24),
      I1 => R_counter(23),
      I2 => R_counter(22),
      I3 => R_counter(21),
      O => \R_temp[3]_P_i_7_n_0\
    );
\R_temp[3]_P_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => R_counter(6),
      I1 => R_counter(5),
      I2 => R_counter(4),
      I3 => R_counter(3),
      O => \R_temp[3]_P_i_8_n_0\
    );
\R_temp[3]_P_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => R_counter(10),
      I1 => R_counter(9),
      I2 => R_counter(8),
      I3 => R_counter(7),
      O => \R_temp[3]_P_i_9_n_0\
    );
\R_temp_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[0]_LDC_i_2_n_0\,
      D => \R_temp[0]_C_i_1_n_0\,
      Q => \R_temp_reg[0]_C_n_0\
    );
\R_temp_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[0]_LDC_n_0\
    );
\R_temp_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(0),
      O => \R_temp_reg[0]_LDC_i_1_n_0\
    );
\R_temp_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(0),
      O => \R_temp_reg[0]_LDC_i_2_n_0\
    );
\R_temp_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[0]_P_i_1_n_0\,
      PRE => \R_temp_reg[0]_LDC_i_1_n_0\,
      Q => \R_temp_reg[0]_P_n_0\
    );
\R_temp_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[1]_LDC_i_2_n_0\,
      D => \R_temp[1]_C_i_1_n_0\,
      Q => \R_temp_reg[1]_C_n_0\
    );
\R_temp_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[1]_LDC_n_0\
    );
\R_temp_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(1),
      O => \R_temp_reg[1]_LDC_i_1_n_0\
    );
\R_temp_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(1),
      O => \R_temp_reg[1]_LDC_i_2_n_0\
    );
\R_temp_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[1]_P_i_1_n_0\,
      PRE => \R_temp_reg[1]_LDC_i_1_n_0\,
      Q => \R_temp_reg[1]_P_n_0\
    );
\R_temp_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[2]_LDC_i_2_n_0\,
      D => \R_temp[2]_C_i_1_n_0\,
      Q => \R_temp_reg[2]_C_n_0\
    );
\R_temp_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[2]_LDC_n_0\
    );
\R_temp_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(2),
      O => \R_temp_reg[2]_LDC_i_1_n_0\
    );
\R_temp_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(2),
      O => \R_temp_reg[2]_LDC_i_2_n_0\
    );
\R_temp_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[2]_P_i_1_n_0\,
      PRE => \R_temp_reg[2]_LDC_i_1_n_0\,
      Q => \R_temp_reg[2]_P_n_0\
    );
\R_temp_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => \R_temp_reg[3]_LDC_i_2_n_0\,
      D => \R_temp[3]_C_i_1_n_0\,
      Q => \R_temp_reg[3]_C_n_0\
    );
\R_temp_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \R_temp_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \R_temp_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \R_temp_reg[3]_LDC_n_0\
    );
\R_temp_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(3),
      I1 => I_rst_n,
      O => \R_temp_reg[3]_LDC_i_1_n_0\
    );
\R_temp_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_rst_n,
      I1 => Q(3),
      O => \R_temp_reg[3]_LDC_i_2_n_0\
    );
\R_temp_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => I_clk,
      CE => R_temp,
      D => \R_temp[3]_P_i_2_n_0\,
      PRE => \R_temp_reg[3]_LDC_i_1_n_0\,
      Q => \R_temp_reg[3]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_display_ip_uart_rx is
  port (
    O_bps_rx_clk_en : out STD_LOGIC;
    W_rx_done : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \O_para_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    W_bps_rx_clk : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    \R_para_data_reg_reg[6]_0\ : in STD_LOGIC
  );
end uart_display_ip_uart_rx;

architecture STRUCTURE of uart_display_ip_uart_rx is
  signal \FSM_sequential_R_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_R_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \O_para_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \O_para_data[7]_i_2_n_0\ : STD_LOGIC;
  signal O_rx_done1 : STD_LOGIC;
  signal O_rx_done_i_1_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal R_para_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \R_para_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \R_para_data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal R_receiving_i_1_n_0 : STD_LOGIC;
  signal R_receiving_reg_n_0 : STD_LOGIC;
  signal R_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^w_rx_done\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_R_state[1]_i_1\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[0]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[1]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[2]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_R_state_reg[3]\ : label is "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101";
  attribute SOFT_HLUTNM of O_bps_rx_clk_en_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \R_para_data_reg[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \R_para_data_reg[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \R_para_data_reg[4]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \R_para_data_reg[6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \R_para_data_reg[6]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \R_para_data_reg[6]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \R_para_data_reg[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of R_receiving_i_1 : label is "soft_lutpair20";
begin
  Q(0) <= \^q\(0);
  W_rx_done <= \^w_rx_done\;
\FSM_sequential_R_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040404"
    )
        port map (
      I0 => R_state(0),
      I1 => R_receiving_reg_n_0,
      I2 => \^w_rx_done\,
      I3 => \^q\(0),
      I4 => R_state(1),
      I5 => R_state(2),
      O => \FSM_sequential_R_state[0]_i_1_n_0\
    );
\FSM_sequential_R_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => \^q\(0),
      I1 => R_receiving_reg_n_0,
      I2 => \^w_rx_done\,
      I3 => R_state(0),
      I4 => R_state(1),
      O => \FSM_sequential_R_state[1]_i_1_n_0\
    );
\FSM_sequential_R_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000800"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(0),
      I2 => \^q\(0),
      I3 => R_receiving_reg_n_0,
      I4 => \^w_rx_done\,
      I5 => R_state(2),
      O => \FSM_sequential_R_state[2]_i_1_n_0\
    );
\FSM_sequential_R_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => W_bps_rx_clk,
      I1 => \^w_rx_done\,
      I2 => R_receiving_reg_n_0,
      O => \FSM_sequential_R_state[3]_i_1_n_0\
    );
\FSM_sequential_R_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001800000"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(1),
      I2 => R_state(2),
      I3 => \^q\(0),
      I4 => R_receiving_reg_n_0,
      I5 => \^w_rx_done\,
      O => \FSM_sequential_R_state[3]_i_2_n_0\
    );
\FSM_sequential_R_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => I_rst_n,
      D => \FSM_sequential_R_state[0]_i_1_n_0\,
      Q => R_state(0)
    );
\FSM_sequential_R_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => I_rst_n,
      D => \FSM_sequential_R_state[1]_i_1_n_0\,
      Q => R_state(1)
    );
\FSM_sequential_R_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => I_rst_n,
      D => \FSM_sequential_R_state[2]_i_1_n_0\,
      Q => R_state(2)
    );
\FSM_sequential_R_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => \FSM_sequential_R_state[3]_i_1_n_0\,
      CLR => I_rst_n,
      D => \FSM_sequential_R_state[3]_i_2_n_0\,
      Q => \^q\(0)
    );
O_bps_rx_clk_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => R_receiving_reg_n_0,
      I1 => \^w_rx_done\,
      O => O_rx_done1
    );
O_bps_rx_clk_en_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => O_rx_done1,
      Q => O_bps_rx_clk_en
    );
\O_para_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => R_state(0),
      I2 => \O_para_data[7]_i_2_n_0\,
      I3 => O_rx_done1,
      I4 => I_rst_n,
      I5 => W_bps_rx_clk,
      O => \O_para_data[7]_i_1_n_0\
    );
\O_para_data[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(2),
      O => \O_para_data[7]_i_2_n_0\
    );
\O_para_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(0),
      Q => \O_para_data_reg[7]_0\(0),
      R => '0'
    );
\O_para_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(1),
      Q => \O_para_data_reg[7]_0\(1),
      R => '0'
    );
\O_para_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(2),
      Q => \O_para_data_reg[7]_0\(2),
      R => '0'
    );
\O_para_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(3),
      Q => \O_para_data_reg[7]_0\(3),
      R => '0'
    );
\O_para_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(4),
      Q => \O_para_data_reg[7]_0\(4),
      R => '0'
    );
\O_para_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(5),
      Q => \O_para_data_reg[7]_0\(5),
      R => '0'
    );
\O_para_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(6),
      Q => \O_para_data_reg[7]_0\(6),
      R => '0'
    );
\O_para_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk,
      CE => \O_para_data[7]_i_1_n_0\,
      D => R_para_data_reg(7),
      Q => \O_para_data_reg[7]_0\(7),
      R => '0'
    );
O_rx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => R_state(0),
      I1 => \O_para_data[7]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => W_bps_rx_clk,
      I4 => \^w_rx_done\,
      I5 => R_receiving_reg_n_0,
      O => O_rx_done_i_1_n_0
    );
O_rx_done_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => O_rx_done_i_1_n_0,
      Q => \^w_rx_done\
    );
\R_para_data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFAAAA0200AAAA"
    )
        port map (
      I0 => p_1_in(0),
      I1 => R_state(1),
      I2 => R_state(2),
      I3 => \R_para_data_reg_reg[6]_0\,
      I4 => O_rx_done1,
      I5 => R_para_data_reg(0),
      O => \R_para_data_reg[0]_i_1_n_0\
    );
\R_para_data_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => R_state(2),
      I1 => O_rx_done1,
      I2 => \^q\(0),
      I3 => R_state(0),
      I4 => I_rs232_rxd,
      I5 => R_state(1),
      O => p_1_in(0)
    );
\R_para_data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \R_para_data_reg[1]_i_2_n_0\,
      I1 => R_state(0),
      I2 => R_state(1),
      I3 => I_rs232_rxd,
      I4 => \R_para_data_reg[1]_i_3_n_0\,
      I5 => R_para_data_reg(1),
      O => \R_para_data_reg[1]_i_1_n_0\
    );
\R_para_data_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(0),
      I1 => R_receiving_reg_n_0,
      I2 => \^w_rx_done\,
      I3 => R_state(2),
      O => \R_para_data_reg[1]_i_2_n_0\
    );
\R_para_data_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0002FFFFFFFF"
    )
        port map (
      I0 => W_bps_rx_clk,
      I1 => R_state(0),
      I2 => \^q\(0),
      I3 => R_state(2),
      I4 => \^w_rx_done\,
      I5 => R_receiving_reg_n_0,
      O => \R_para_data_reg[1]_i_3_n_0\
    );
\R_para_data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFFFF08AA0000"
    )
        port map (
      I0 => p_1_in(2),
      I1 => \R_para_data_reg_reg[6]_0\,
      I2 => R_state(2),
      I3 => O_rx_done1,
      I4 => \R_para_data_reg[2]_i_3_n_0\,
      I5 => R_para_data_reg(2),
      O => \R_para_data_reg[2]_i_1_n_0\
    );
\R_para_data_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => R_state(2),
      I1 => O_rx_done1,
      I2 => \^q\(0),
      I3 => R_state(0),
      I4 => R_state(1),
      I5 => I_rs232_rxd,
      O => p_1_in(2)
    );
\R_para_data_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9FF"
    )
        port map (
      I0 => R_state(1),
      I1 => R_state(0),
      I2 => \^w_rx_done\,
      I3 => R_receiving_reg_n_0,
      O => \R_para_data_reg[2]_i_3_n_0\
    );
\R_para_data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => R_state(0),
      I1 => I_rs232_rxd,
      I2 => R_state(1),
      I3 => \R_para_data_reg[6]_i_2_n_0\,
      I4 => \R_para_data_reg[3]_i_2_n_0\,
      I5 => R_para_data_reg(3),
      O => \R_para_data_reg[3]_i_1_n_0\
    );
\R_para_data_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0002FFFFFFFF"
    )
        port map (
      I0 => W_bps_rx_clk,
      I1 => R_state(0),
      I2 => \^q\(0),
      I3 => R_state(1),
      I4 => \^w_rx_done\,
      I5 => R_receiving_reg_n_0,
      O => \R_para_data_reg[3]_i_2_n_0\
    );
\R_para_data_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFFFF08AA0000"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \R_para_data_reg_reg[6]_0\,
      I2 => R_state(1),
      I3 => O_rx_done1,
      I4 => \R_para_data_reg[4]_i_3_n_0\,
      I5 => R_para_data_reg(4),
      O => \R_para_data_reg[4]_i_1_n_0\
    );
\R_para_data_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => R_state(2),
      I1 => O_rx_done1,
      I2 => \^q\(0),
      I3 => R_state(0),
      I4 => I_rs232_rxd,
      I5 => R_state(1),
      O => p_1_in(4)
    );
\R_para_data_reg[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFDFF"
    )
        port map (
      I0 => R_receiving_reg_n_0,
      I1 => \^w_rx_done\,
      I2 => R_state(1),
      I3 => R_state(2),
      I4 => R_state(0),
      O => \R_para_data_reg[4]_i_3_n_0\
    );
\R_para_data_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \R_para_data_reg[6]_i_2_n_0\,
      I1 => R_state(0),
      I2 => R_state(1),
      I3 => I_rs232_rxd,
      I4 => \R_para_data_reg[5]_i_2_n_0\,
      I5 => R_para_data_reg(5),
      O => \R_para_data_reg[5]_i_1_n_0\
    );
\R_para_data_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000002FFFFFFFF"
    )
        port map (
      I0 => W_bps_rx_clk,
      I1 => R_state(0),
      I2 => \^q\(0),
      I3 => R_state(2),
      I4 => R_state(1),
      I5 => O_rx_done1,
      O => \R_para_data_reg[5]_i_2_n_0\
    );
\R_para_data_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF888880008888"
    )
        port map (
      I0 => \R_para_data_reg[6]_i_2_n_0\,
      I1 => \R_para_data_reg[6]_i_3_n_0\,
      I2 => \R_para_data_reg[6]_i_4_n_0\,
      I3 => \R_para_data_reg_reg[6]_0\,
      I4 => O_rx_done1,
      I5 => R_para_data_reg(6),
      O => \R_para_data_reg[6]_i_1_n_0\
    );
\R_para_data_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^q\(0),
      I1 => R_receiving_reg_n_0,
      I2 => \^w_rx_done\,
      I3 => R_state(2),
      O => \R_para_data_reg[6]_i_2_n_0\
    );
\R_para_data_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => I_rs232_rxd,
      I1 => R_state(1),
      I2 => R_state(0),
      O => \R_para_data_reg[6]_i_3_n_0\
    );
\R_para_data_reg[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => R_state(0),
      I1 => R_state(1),
      I2 => R_state(2),
      O => \R_para_data_reg[6]_i_4_n_0\
    );
\R_para_data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF000080000000"
    )
        port map (
      I0 => I_rs232_rxd,
      I1 => \^q\(0),
      I2 => W_bps_rx_clk,
      I3 => \R_para_data_reg[7]_i_2_n_0\,
      I4 => O_rx_done1,
      I5 => R_para_data_reg(7),
      O => \R_para_data_reg[7]_i_1_n_0\
    );
\R_para_data_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => R_state(2),
      I1 => R_state(1),
      I2 => R_state(0),
      O => \R_para_data_reg[7]_i_2_n_0\
    );
\R_para_data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[0]_i_1_n_0\,
      Q => R_para_data_reg(0)
    );
\R_para_data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[1]_i_1_n_0\,
      Q => R_para_data_reg(1)
    );
\R_para_data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[2]_i_1_n_0\,
      Q => R_para_data_reg(2)
    );
\R_para_data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[3]_i_1_n_0\,
      Q => R_para_data_reg(3)
    );
\R_para_data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[4]_i_1_n_0\,
      Q => R_para_data_reg(4)
    );
\R_para_data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[5]_i_1_n_0\,
      Q => R_para_data_reg(5)
    );
\R_para_data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[6]_i_1_n_0\,
      Q => R_para_data_reg(6)
    );
\R_para_data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => \R_para_data_reg[7]_i_1_n_0\,
      Q => R_para_data_reg(7)
    );
R_receiving_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"51"
    )
        port map (
      I0 => \^w_rx_done\,
      I1 => I_rs232_rxd,
      I2 => R_receiving_reg_n_0,
      O => R_receiving_i_1_n_0
    );
R_receiving_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => '1',
      CLR => I_rst_n,
      D => R_receiving_i_1_n_0,
      Q => R_receiving_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_display_ip_uart_top is
  port (
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O_px : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end uart_display_ip_uart_top;

architecture STRUCTURE of uart_display_ip_uart_top is
  signal \<const0>\ : STD_LOGIC;
  signal O_bps_rx_clk_en : STD_LOGIC;
  signal O_para_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal R_led_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal R_state : STD_LOGIC_VECTOR ( 3 to 3 );
  signal U_baudrate_gen_n_0 : STD_LOGIC;
  signal W_bps_rx_clk : STD_LOGIC;
  signal W_rx_done : STD_LOGIC;
begin
  O_rs232_txd <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\R_led_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(0),
      Q => R_led_reg(0)
    );
\R_led_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(1),
      Q => R_led_reg(1)
    );
\R_led_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(2),
      Q => R_led_reg(2)
    );
\R_led_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(3),
      Q => R_led_reg(3)
    );
\R_led_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(4),
      Q => R_led_reg(4)
    );
\R_led_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(5),
      Q => R_led_reg(5)
    );
\R_led_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(6),
      Q => R_led_reg(6)
    );
\R_led_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk,
      CE => W_rx_done,
      CLR => I_rst_n,
      D => O_para_data(7),
      Q => R_led_reg(7)
    );
U_baudrate_gen: entity work.uart_display_ip_baudrate_gen
     port map (
      \FSM_sequential_R_state_reg[3]\ => U_baudrate_gen_n_0,
      I_clk => I_clk,
      I_rst_n => I_rst_n,
      O_bps_rx_clk_en => O_bps_rx_clk_en,
      Q(0) => R_state(3),
      W_bps_rx_clk => W_bps_rx_clk
    );
U_light_show: entity work.uart_display_ip_light_show
     port map (
      I_clk => I_clk,
      I_rst_n => I_rst_n,
      O_led(6 downto 0) => O_led(6 downto 0),
      Q(7 downto 0) => R_led_reg(7 downto 0),
      \R_dx_temp_reg[0]_0\ => O_px(0),
      \R_dx_temp_reg[1]_0\ => O_px(1)
    );
U_uart_rxd: entity work.uart_display_ip_uart_rx
     port map (
      I_clk => I_clk,
      I_rs232_rxd => I_rs232_rxd,
      I_rst_n => I_rst_n,
      O_bps_rx_clk_en => O_bps_rx_clk_en,
      \O_para_data_reg[7]_0\(7 downto 0) => O_para_data(7 downto 0),
      Q(0) => R_state(3),
      \R_para_data_reg_reg[6]_0\ => U_baudrate_gen_n_0,
      W_bps_rx_clk => W_bps_rx_clk,
      W_rx_done => W_rx_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_display_ip is
  port (
    I_clk : in STD_LOGIC;
    I_rst_n : in STD_LOGIC;
    I_rs232_rxd : in STD_LOGIC;
    O_rs232_txd : out STD_LOGIC;
    O_led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O_px : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_display_ip : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_display_ip : entity is "uart_display_ip,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_display_ip : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uart_display_ip : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_display_ip : entity is "uart_top,Vivado 2019.2";
end uart_display_ip;

architecture STRUCTURE of uart_display_ip is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_clk : signal is "xilinx.com:signal:clock:1.0 I_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_clk : signal is "XIL_INTERFACENAME I_clk, ASSOCIATED_RESET I_rst_n, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_rst_n : signal is "xilinx.com:signal:reset:1.0 I_rst_n RST";
  attribute X_INTERFACE_PARAMETER of I_rst_n : signal is "XIL_INTERFACENAME I_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.uart_display_ip_uart_top
     port map (
      I_clk => I_clk,
      I_rs232_rxd => I_rs232_rxd,
      I_rst_n => I_rst_n,
      O_led(6 downto 0) => O_led(6 downto 0),
      O_px(1 downto 0) => O_px(1 downto 0),
      O_rs232_txd => O_rs232_txd
    );
end STRUCTURE;
