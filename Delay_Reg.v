// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Thu Jun 15 11:14:01 2023"

module Delay_Reg(
	clk,
	Data,
	Data_Out
);


input wire	clk;
input wire	[1:0] Data;
output wire	[1:0] Data_Out;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	[1:0] SYNTHESIZED_WIRE_8;
wire	[1:0] SYNTHESIZED_WIRE_9;
wire	[1:0] SYNTHESIZED_WIRE_10;
wire	[1:0] SYNTHESIZED_WIRE_11;
wire	[1:0] SYNTHESIZED_WIRE_12;
wire	[1:0] SYNTHESIZED_WIRE_13;
wire	[1:0] SYNTHESIZED_WIRE_14;
wire	[1:0] SYNTHESIZED_WIRE_15;
wire	[1:0] SYNTHESIZED_WIRE_16;
wire	[1:0] SYNTHESIZED_WIRE_17;
wire	[1:0] SYNTHESIZED_WIRE_18;
wire	[1:0] SYNTHESIZED_WIRE_19;
wire	[1:0] SYNTHESIZED_WIRE_20;
wire	[1:0] SYNTHESIZED_WIRE_21;
wire	[1:0] SYNTHESIZED_WIRE_22;
wire	[1:0] SYNTHESIZED_WIRE_23;
wire	[1:0] SYNTHESIZED_WIRE_24;
wire	[1:0] SYNTHESIZED_WIRE_25;
wire	[1:0] SYNTHESIZED_WIRE_26;
wire	[1:0] SYNTHESIZED_WIRE_27;
wire	[1:0] SYNTHESIZED_WIRE_28;
wire	[1:0] SYNTHESIZED_WIRE_29;





Reg2bits	b2v_inst(
	.clk(clk),
	.data(Data),
	.data_out(SYNTHESIZED_WIRE_24));


Reg2bits	b2v_inst10(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_0),
	.data_out(SYNTHESIZED_WIRE_1));


Reg2bits	b2v_inst11(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_1),
	.data_out(SYNTHESIZED_WIRE_2));


Reg2bits	b2v_inst12(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_2),
	.data_out(SYNTHESIZED_WIRE_3));


Reg2bits	b2v_inst13(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_3),
	.data_out(SYNTHESIZED_WIRE_4));


Reg2bits	b2v_inst14(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_4),
	.data_out(SYNTHESIZED_WIRE_5));


Reg2bits	b2v_inst15(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_5),
	.data_out(SYNTHESIZED_WIRE_6));


Reg2bits	b2v_inst16(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_6),
	.data_out(SYNTHESIZED_WIRE_7));


Reg2bits	b2v_inst17(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_7),
	.data_out(SYNTHESIZED_WIRE_8));


Reg2bits	b2v_inst18(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_8),
	.data_out(SYNTHESIZED_WIRE_9));


Reg2bits	b2v_inst19(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_9),
	.data_out(SYNTHESIZED_WIRE_10));


Reg2bits	b2v_inst20(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_10),
	.data_out(SYNTHESIZED_WIRE_11));


Reg2bits	b2v_inst21(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_11),
	.data_out(SYNTHESIZED_WIRE_12));


Reg2bits	b2v_inst22(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_12),
	.data_out(SYNTHESIZED_WIRE_13));


Reg2bits	b2v_inst23(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_13),
	.data_out(SYNTHESIZED_WIRE_14));


Reg2bits	b2v_inst24(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_14),
	.data_out(SYNTHESIZED_WIRE_15));


Reg2bits	b2v_inst25(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_15),
	.data_out(SYNTHESIZED_WIRE_16));


Reg2bits	b2v_inst26(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_16),
	.data_out(SYNTHESIZED_WIRE_17));


Reg2bits	b2v_inst27(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_17),
	.data_out(SYNTHESIZED_WIRE_18));


Reg2bits	b2v_inst28(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_18),
	.data_out(SYNTHESIZED_WIRE_19));


Reg2bits	b2v_inst29(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_19),
	.data_out(SYNTHESIZED_WIRE_20));


Reg2bits	b2v_inst30(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_20),
	.data_out(SYNTHESIZED_WIRE_21));


Reg2bits	b2v_inst31(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_21),
	.data_out(SYNTHESIZED_WIRE_22));


Reg2bits	b2v_inst32(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_22),
	.data_out(SYNTHESIZED_WIRE_23));


Reg2bits	b2v_inst33(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_23),
	.data_out(Data_Out));


Reg2bits	b2v_inst4(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_24),
	.data_out(SYNTHESIZED_WIRE_25));


Reg2bits	b2v_inst5(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_25),
	.data_out(SYNTHESIZED_WIRE_26));


Reg2bits	b2v_inst6(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_26),
	.data_out(SYNTHESIZED_WIRE_27));


Reg2bits	b2v_inst7(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_27),
	.data_out(SYNTHESIZED_WIRE_28));


Reg2bits	b2v_inst8(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_28),
	.data_out(SYNTHESIZED_WIRE_29));


Reg2bits	b2v_inst9(
	.clk(clk),
	.data(SYNTHESIZED_WIRE_29),
	.data_out(SYNTHESIZED_WIRE_0));


endmodule
