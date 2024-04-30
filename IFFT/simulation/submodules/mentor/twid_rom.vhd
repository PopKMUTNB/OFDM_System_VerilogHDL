-- (C) 2001-2018 Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files from any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License Subscription 
-- Agreement, Intel FPGA IP License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Intel and sold by 
-- Intel or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.


----------------------------------------------------------------------------------------------
-- megafunction wizard: %ALTSYNCRAM%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altsyncram 

-- ============================================================
-- File Name: twid_rom.vhd
-- Megafunction Name(s):
-- 			altsyncram
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
-- ************************************************************


--Copyright (C) 1991-2002 Altera Corporation
--Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
--support information,  device programming or simulation file,  and any other
--associated  documentation or information  provided by  Altera  or a partner
--under  Altera's   Megafunction   Partnership   Program  may  be  used  only
--to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
--other  use  of such  megafunction  design,  netlist,  support  information,
--device programming or simulation file,  or any other  related documentation
--or information  is prohibited  for  any  other purpose,  including, but not
--limited to  modification,  reverse engineering,  de-compiling, or use  with
--any other  silicon devices,  unless such use is  explicitly  licensed under
--a separate agreement with  Altera  or a megafunction partner.  Title to the
--intellectual property,  including patents,  copyrights,  trademarks,  trade
--secrets,  or maskworks,  embodied in any such megafunction design, netlist,
--support  information,  device programming or simulation file,  or any other
--related documentation or information provided by  Altera  or a megafunction
--partner, remains with Altera, the megafunction partner, or their respective
--licensors. No other licenses, including any licenses needed under any third
--party's intellectual property, are provided herein.


LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.fft_pack.all;
library lpm;
use lpm.lpm_components.all;
library altera_mf;
use altera_mf.altera_mf_components.all;

ENTITY twid_rom IS
	GENERIC(
					device_family : string;
					twa : integer :=8;
					twr : integer :=16;
					m512 : integer :=0;				
					rf  : string  :="rom.hex"
	);
	PORT
	(
global_clock_enable : in std_logic;
		address		: IN STD_LOGIC_VECTOR (twa-1 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (twr-1 DOWNTO 0)
	);
END twid_rom;


ARCHITECTURE SYN OF twid_rom IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (twr-1 DOWNTO 0);
  constant  mem_string : string :="M512";

  component altera_fft_single_port_rom
   generic (
      selected_device_family : string;
      ram_block_type         : string := "AUTO";
      init_file              : string;
      numwords               : natural;
      addr_width             : natural;
      data_width             : natural
           );
   port (
        clocken0  : in std_logic;
        clock0    : in std_logic;
        address_a : in std_logic_vector(addr_width-1 downto 0);
        q_a       : out std_logic_vector(data_width-1 downto 0)
     );
  end component;
BEGIN
	q    <= sub_wire0(twr-1 DOWNTO 0);

	gen_auto : if(m512=0) generate
	
		rom_component : altera_fft_single_port_rom
		GENERIC MAP (
			data_width => twr,
			addr_width => twa,
			numwords => 2**twa,
			ram_block_type => "AUTO",
			init_file => rf,
         selected_device_family => device_family 
		)
		PORT MAP (
         clocken0 => global_clock_enable,
			clock0 => clock,
			address_a => address,
			q_a => sub_wire0
		);
		
	end generate gen_auto;	
		
	gen_m512 : if(m512=1) generate
	
		rom_component : altera_fft_single_port_rom
		GENERIC MAP (
			data_width => twr,
			addr_width => twa,
			numwords => 2**twa,
			ram_block_type => "M512",
			init_file => rf,
         selected_device_family => device_family 
		)
		PORT MAP (
clocken0 => global_clock_enable,
			clock0 => clock,
			address_a => address,
			q_a => sub_wire0
		);
		
	end generate gen_m512;


END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: VarWidth NUMERIC "0"
-- Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "8"
-- Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "8"
-- Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "8"
-- Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "8"
-- Retrieval info: PRIVATE: MEMSIZE NUMERIC "2048"
-- Retrieval info: PRIVATE: Clock NUMERIC "0"
-- Retrieval info: PRIVATE: rden NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
-- Retrieval info: PRIVATE: Clock_A NUMERIC "0"
-- Retrieval info: PRIVATE: Clock_B NUMERIC "0"
-- Retrieval info: PRIVATE: REGdata NUMERIC "1"
-- Retrieval info: PRIVATE: REGwraddress NUMERIC "1"
-- Retrieval info: PRIVATE: REGwren NUMERIC "1"
-- Retrieval info: PRIVATE: REGrdaddress NUMERIC "1"
-- Retrieval info: PRIVATE: REGrren NUMERIC "1"
-- Retrieval info: PRIVATE: REGq NUMERIC "1"
-- Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0"
-- Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0"
-- Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "0"
-- Retrieval info: PRIVATE: CLRdata NUMERIC "0"
-- Retrieval info: PRIVATE: CLRwren NUMERIC "0"
-- Retrieval info: PRIVATE: CLRwraddress NUMERIC "0"
-- Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0"
-- Retrieval info: PRIVATE: CLRrren NUMERIC "0"
-- Retrieval info: PRIVATE: CLRq NUMERIC "0"
-- Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0"
-- Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: enable NUMERIC "0"
-- Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2"
-- Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
-- Retrieval info: PRIVATE: MIFfilename STRING "twiddle.hex"
-- Retrieval info: PRIVATE: UseLCs NUMERIC "0"
-- Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
-- Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "256"
-- Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0"
-- Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "0"
-- Retrieval info: PRIVATE: UseDPRAM NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "ROM"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "8"
-- Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "256"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
-- Retrieval info: CONSTANT: OUTDATA_REG_A STRING "CLOCK0"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "NONE"
-- Retrieval info: CONSTANT: ADDRESS_ACLR_A STRING "NONE"
-- Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_MIXED_PORTS STRING "DONT_CARE"
-- Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "AUTO"
-- Retrieval info: CONSTANT: INIT_FILE STRING "twiddle.hex"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix"
-- Retrieval info: USED_PORT: q 0 0 8 0 OUTPUT NODEFVAL q[7..0]
-- Retrieval info: USED_PORT: address 0 0 8 0 INPUT NODEFVAL address[7..0]
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: CONNECT: q 0 0 8 0 @q_a 0 0 8 0
-- Retrieval info: CONNECT: @address_a 0 0 8 0 address 0 0 8 0
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
