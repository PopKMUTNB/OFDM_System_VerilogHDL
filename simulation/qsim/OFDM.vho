-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "06/15/2023 11:18:58"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Delay_Reg IS
    PORT (
	clk : IN std_logic;
	Data : IN std_logic_vector(1 DOWNTO 0);
	Data_Out : OUT std_logic_vector(1 DOWNTO 0)
	);
END Delay_Reg;

-- Design Ports Information
-- Data_Out[0]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Delay_Reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Data : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Data_Out : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \b2v_inst4|register[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~1_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~2\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~5_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~6\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~9_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~10\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~13_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~14\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|op_1~17_sumout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|register[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|register[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0~portbdataout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a1\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|dffe3a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst33|register\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst4|register\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst|register\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_dffe3a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \b2v_inst|ALT_INV_register\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Data[1]~input_o\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita4~1_sumout\ : std_logic;
SIGNAL \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_Data <= Data;
Data_Out <= ww_Data_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \b2v_inst4|register\(1) & \b2v_inst4|register\(0));

\b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTAADDR_bus\ <= (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBADDR_bus\ <= (\b2v_inst5|register_rtl_0|auto_generated|dffe3a\(4) & \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(3) & \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(2) & 
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(0));

\b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0~portbdataout\ <= \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(0);
\b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a1\ <= \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\(1);
\b2v_inst5|register_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\ <= NOT \b2v_inst5|register_rtl_0|auto_generated|op_1~5_sumout\;
\b2v_inst5|register_rtl_0|auto_generated|ALT_INV_dffe3a\(1) <= NOT \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(1);
\b2v_inst|ALT_INV_register\(0) <= NOT \b2v_inst|register\(0);
\b2v_inst|ALT_INV_register\(1) <= NOT \b2v_inst|register\(1);
\b2v_inst5|register_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\ <= NOT \b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\;
\b2v_inst5|register_rtl_0|auto_generated|ALT_INV_op_2~0_combout\ <= NOT \b2v_inst5|register_rtl_0|auto_generated|op_2~0_combout\;
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\ <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\;
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[3]~DUPLICATE_q\ <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\;
\ALT_INV_Data[1]~input_o\ <= NOT \Data[1]~input_o\;
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita4~1_sumout\ <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\;
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4) <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4);
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3) <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3);
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2) <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2);
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1) <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(1);
\b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0) <= NOT \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0);

-- Location: IOOBUF_X70_Y0_N2
\Data_Out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst33|register\(0),
	devoe => ww_devoe,
	o => ww_Data_Out(0));

-- Location: IOOBUF_X70_Y0_N19
\Data_Out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst33|register\(1),
	devoe => ww_devoe,
	o => ww_Data_Out(1));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X72_Y0_N18
\Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

-- Location: FF_X72_Y4_N28
\b2v_inst|register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Data[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|register\(0));

-- Location: MLABCELL_X72_Y4_N24
\b2v_inst4|register[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|register[0]~feeder_combout\ = ( \b2v_inst|register\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst|ALT_INV_register\(0),
	combout => \b2v_inst4|register[0]~feeder_combout\);

-- Location: FF_X72_Y4_N25
\b2v_inst4|register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst4|register[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|register\(0));

-- Location: LABCELL_X70_Y6_N0
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LABCELL_X70_Y6_N3
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(1),
	cin => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: FF_X70_Y6_N4
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LABCELL_X70_Y6_N6
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	cin => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: FF_X70_Y6_N8
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: LABCELL_X70_Y6_N9
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	cin => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: FF_X70_Y6_N10
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3));

-- Location: LABCELL_X70_Y6_N12
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: FF_X70_Y6_N13
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4));

-- Location: FF_X70_Y6_N5
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita1~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y6_N15
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\ = SUM(( GND ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\);

-- Location: LABCELL_X70_Y6_N24
\b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\ = ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\ ) ) # ( 
-- !\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\ ) ) # ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & ( 
-- !\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita4~1_sumout\ & ( (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & (!\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
-- (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	datab => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datac => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	datae => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	dataf => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_comb_bita4~1_sumout\,
	combout => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: FF_X70_Y6_N2
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita0~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LABCELL_X70_Y6_N30
\b2v_inst5|register_rtl_0|auto_generated|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~1_sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~2\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|op_1~1_sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|op_1~2\);

-- Location: FF_X70_Y6_N31
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|op_1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(0));

-- Location: LABCELL_X70_Y6_N33
\b2v_inst5|register_rtl_0|auto_generated|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~5_sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ ) + ( VCC ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~2\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~6\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ ) + ( VCC ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	cin => \b2v_inst5|register_rtl_0|auto_generated|op_1~2\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|op_1~5_sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|op_1~6\);

-- Location: LABCELL_X70_Y6_N48
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~0_combout\ = ( !\b2v_inst5|register_rtl_0|auto_generated|op_1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_op_1~5_sumout\,
	combout => \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X70_Y6_N50
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(1));

-- Location: LABCELL_X70_Y6_N51
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = ( !\b2v_inst5|register_rtl_0|auto_generated|dffe3a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_dffe3a\(1),
	combout => \b2v_inst5|register_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: FF_X70_Y6_N11
\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_comb_bita3~sumout\,
	sclr => \b2v_inst5|register_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y6_N21
\b2v_inst5|register_rtl_0|auto_generated|op_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|op_2~0_combout\ = ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( 
-- (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\ & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4)) ) ) ) # ( !\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & ( 
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\ & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4)) ) ) ) # ( 
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & ( !\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\ & 
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[3]~DUPLICATE_q\,
	datac => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	datae => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	dataf => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	combout => \b2v_inst5|register_rtl_0|auto_generated|op_2~0_combout\);

-- Location: LABCELL_X70_Y6_N54
\b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\ = ( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & ( !\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & ( 
-- (!\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~DUPLICATE_q\ & (\b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	datab => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	datac => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(0),
	datae => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(3),
	dataf => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	combout => \b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\);

-- Location: LABCELL_X70_Y6_N36
\b2v_inst5|register_rtl_0|auto_generated|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~9_sumout\ = SUM(( (\b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\) # (\b2v_inst5|register_rtl_0|auto_generated|op_2~0_combout\) ) + ( 
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~6\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~10\ = CARRY(( (\b2v_inst5|register_rtl_0|auto_generated|cmpr4_aeb_int~0_combout\) # (\b2v_inst5|register_rtl_0|auto_generated|op_2~0_combout\) ) + ( 
-- \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(2),
	datac => \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \b2v_inst5|register_rtl_0|auto_generated|ALT_INV_cmpr4_aeb_int~0_combout\,
	cin => \b2v_inst5|register_rtl_0|auto_generated|op_1~6\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|op_1~9_sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|op_1~10\);

-- Location: FF_X70_Y6_N37
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|op_1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(2));

-- Location: LABCELL_X70_Y6_N39
\b2v_inst5|register_rtl_0|auto_generated|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~13_sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~10\ ))
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~14\ = CARRY(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit[3]~DUPLICATE_q\,
	cin => \b2v_inst5|register_rtl_0|auto_generated|op_1~10\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|op_1~13_sumout\,
	cout => \b2v_inst5|register_rtl_0|auto_generated|op_1~14\);

-- Location: FF_X70_Y6_N40
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|op_1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(3));

-- Location: LABCELL_X70_Y6_N42
\b2v_inst5|register_rtl_0|auto_generated|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst5|register_rtl_0|auto_generated|op_1~17_sumout\ = SUM(( \b2v_inst5|register_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) ) + ( GND ) + ( \b2v_inst5|register_rtl_0|auto_generated|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|register_rtl_0|auto_generated|cntr1|ALT_INV_counter_reg_bit\(4),
	cin => \b2v_inst5|register_rtl_0|auto_generated|op_1~14\,
	sumout => \b2v_inst5|register_rtl_0|auto_generated|op_1~17_sumout\);

-- Location: FF_X70_Y6_N43
\b2v_inst5|register_rtl_0|auto_generated|dffe3a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst5|register_rtl_0|auto_generated|op_1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|register_rtl_0|auto_generated|dffe3a\(4));

-- Location: IOIBUF_X89_Y6_N4
\Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

-- Location: LABCELL_X88_Y6_N51
\b2v_inst|register[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|register[1]~feeder_combout\ = ( \Data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Data[1]~input_o\,
	combout => \b2v_inst|register[1]~feeder_combout\);

-- Location: FF_X88_Y6_N53
\b2v_inst|register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst|register[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|register\(1));

-- Location: LABCELL_X81_Y6_N30
\b2v_inst4|register[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|register[1]~feeder_combout\ = ( \b2v_inst|register\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst|ALT_INV_register\(1),
	combout => \b2v_inst4|register[1]~feeder_combout\);

-- Location: FF_X81_Y6_N32
\b2v_inst4|register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \b2v_inst4|register[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|register\(1));

-- Location: M10K_X69_Y6_N0
\b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Reg2bits:b2v_inst5|altshift_taps:register_rtl_0|shift_taps_vuu:auto_generated|altsyncram_tr91:altsyncram5|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 28,
	port_a_logical_ram_width => 2,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 28,
	port_b_logical_ram_width => 2,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => VCC,
	ena1 => VCC,
	portadatain => \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTADATAIN_bus\,
	portaaddr => \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTAADDR_bus\,
	portbaddr => \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0_PORTBDATAOUT_bus\);

-- Location: FF_X70_Y6_N20
\b2v_inst33|register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst33|register\(0));

-- Location: FF_X70_Y6_N58
\b2v_inst33|register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \b2v_inst5|register_rtl_0|auto_generated|altsyncram5|ram_block6a1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst33|register\(1));

-- Location: MLABCELL_X82_Y2_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


