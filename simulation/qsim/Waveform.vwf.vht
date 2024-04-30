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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/14/2023 10:50:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Sorter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Sorter_vhd_vec_tst IS
END Sorter_vhd_vec_tst;
ARCHITECTURE Sorter_arch OF Sorter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_Conj : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PLL_clk : STD_LOGIC;
SIGNAL Serial_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ShiftReg1_load_en : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL load_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
COMPONENT Sorter
	PORT (
	Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_Conj : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	PLL_clk : IN STD_LOGIC;
	Serial_Out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ShiftReg1_load_en : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	load_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Sorter
	PORT MAP (
-- list connections between master ports and signals
	Data => Data,
	Data_Conj => Data_Conj,
	PLL_clk => PLL_clk,
	Serial_Out => Serial_Out,
	ShiftReg1_load_en => ShiftReg1_load_en,
	clk => clk,
	load_sel => load_sel,
	reset_n => reset_n
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- PLL_clk
t_prcs_PLL_clk: PROCESS
BEGIN
	FOR i IN 1 TO 826
	LOOP
		PLL_clk <= '0';
		WAIT FOR 1211 ps;
		PLL_clk <= '1';
		WAIT FOR 1210 ps;
	END LOOP;
	PLL_clk <= '0';
WAIT;
END PROCESS t_prcs_PLL_clk;

-- reset_n
t_prcs_reset_n: PROCESS
BEGIN
	reset_n <= '0';
	WAIT FOR 80000 ps;
	reset_n <= '1';
WAIT;
END PROCESS t_prcs_reset_n;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
	WAIT FOR 640000 ps;
	Data(7) <= '1';
	WAIT FOR 640000 ps;
	Data(7) <= '0';
	WAIT FOR 640000 ps;
	Data(7) <= '1';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Data(6) <= '0';
		WAIT FOR 320000 ps;
		Data(6) <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	Data(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Data(5) <= '0';
		WAIT FOR 160000 ps;
		Data(5) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Data(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Data(4) <= '0';
		WAIT FOR 80000 ps;
		Data(4) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Data(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
LOOP
	Data(3) <= '0';
	WAIT FOR 40000 ps;
	Data(3) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
LOOP
	Data(2) <= '0';
	WAIT FOR 20000 ps;
	Data(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
LOOP
	Data(1) <= '0';
	WAIT FOR 10000 ps;
	Data(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
LOOP
	Data(0) <= '0';
	WAIT FOR 5000 ps;
	Data(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_0;
-- Data_Conj[7]
t_prcs_Data_Conj_7: PROCESS
BEGIN
	Data_Conj(7) <= '0';
	WAIT FOR 640000 ps;
	Data_Conj(7) <= '1';
	WAIT FOR 640000 ps;
	Data_Conj(7) <= '0';
	WAIT FOR 640000 ps;
	Data_Conj(7) <= '1';
WAIT;
END PROCESS t_prcs_Data_Conj_7;
-- Data_Conj[6]
t_prcs_Data_Conj_6: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Data_Conj(6) <= '0';
		WAIT FOR 320000 ps;
		Data_Conj(6) <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	Data_Conj(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_Conj_6;
-- Data_Conj[5]
t_prcs_Data_Conj_5: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Data_Conj(5) <= '0';
		WAIT FOR 160000 ps;
		Data_Conj(5) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Data_Conj(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_Conj_5;
-- Data_Conj[4]
t_prcs_Data_Conj_4: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Data_Conj(4) <= '0';
		WAIT FOR 80000 ps;
		Data_Conj(4) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Data_Conj(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_Conj_4;
-- Data_Conj[3]
t_prcs_Data_Conj_3: PROCESS
BEGIN
LOOP
	Data_Conj(3) <= '0';
	WAIT FOR 40000 ps;
	Data_Conj(3) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_Conj_3;
-- Data_Conj[2]
t_prcs_Data_Conj_2: PROCESS
BEGIN
LOOP
	Data_Conj(2) <= '0';
	WAIT FOR 20000 ps;
	Data_Conj(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_Conj_2;
-- Data_Conj[1]
t_prcs_Data_Conj_1: PROCESS
BEGIN
LOOP
	Data_Conj(1) <= '0';
	WAIT FOR 10000 ps;
	Data_Conj(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_Conj_1;
-- Data_Conj[0]
t_prcs_Data_Conj_0: PROCESS
BEGIN
LOOP
	Data_Conj(0) <= '0';
	WAIT FOR 5000 ps;
	Data_Conj(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Data_Conj_0;

-- ShiftReg1_load_en
t_prcs_ShiftReg1_load_en: PROCESS
BEGIN
	ShiftReg1_load_en <= '1';
WAIT;
END PROCESS t_prcs_ShiftReg1_load_en;
END Sorter_arch;
