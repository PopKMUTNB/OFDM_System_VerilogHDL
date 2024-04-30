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


// Generated by Quartus Prime Version 18.1 (Build Build 625 09/12/2018)
// Created on Sun Jun 11 10:38:22 2023

FFT_Controller FFT_Controller_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.insignal_re(insignal_re_sig) ,	// input [7:0] insignal_re_sig
	.insignal_im(insignal_im_sig) ,	// input [7:0] insignal_im_sig
	.inverse(inverse_sig) ,	// output  inverse_sig
	.sink_valid(sink_valid_sig) ,	// output  sink_valid_sig
	.sink_sop(sink_sop_sig) ,	// output  sink_sop_sig
	.sink_eop(sink_eop_sig) ,	// output  sink_eop_sig
	.outreal(outreal_sig) ,	// output [7:0] outreal_sig
	.outimag(outimag_sig) ,	// output [7:0] outimag_sig
	.sink_error(sink_error_sig) ,	// output [1:0] sink_error_sig
	.sink_ready(sink_ready_sig) 	// output  sink_ready_sig
);
