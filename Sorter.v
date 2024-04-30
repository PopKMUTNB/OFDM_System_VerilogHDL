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
// CREATED		"Sun Jun 18 10:56:37 2023"

module Sorter(
	ShiftReg1_load_en,
	reset_n,
	clk,
	PLL_clk,
	Data,
	Data_Conj,
	load_sel,
	Serial_Out
);


input wire	ShiftReg1_load_en;
input wire	reset_n;
input wire	clk;
input wire	PLL_clk;
input wire	[7:0] Data;
input wire	[7:0] Data_Conj;
output wire	[1:0] load_sel;
output wire	[7:0] Serial_Out;

wire	[7:0] SYNTHESIZED_WIRE_254;
wire	[7:0] SYNTHESIZED_WIRE_255;
wire	[7:0] SYNTHESIZED_WIRE_256;
wire	[7:0] SYNTHESIZED_WIRE_257;
wire	[1:0] SYNTHESIZED_WIRE_258;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_259;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_260;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[7:0] SYNTHESIZED_WIRE_261;
wire	[7:0] SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_262;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	[7:0] SYNTHESIZED_WIRE_263;
wire	[7:0] SYNTHESIZED_WIRE_20;
wire	[7:0] SYNTHESIZED_WIRE_264;
wire	[7:0] SYNTHESIZED_WIRE_23;
wire	[7:0] SYNTHESIZED_WIRE_265;
wire	[7:0] SYNTHESIZED_WIRE_26;
wire	[7:0] SYNTHESIZED_WIRE_266;
wire	[7:0] SYNTHESIZED_WIRE_29;
wire	[7:0] SYNTHESIZED_WIRE_267;
wire	[7:0] SYNTHESIZED_WIRE_32;
wire	[7:0] SYNTHESIZED_WIRE_268;
wire	[7:0] SYNTHESIZED_WIRE_269;
wire	[7:0] SYNTHESIZED_WIRE_36;
wire	[7:0] SYNTHESIZED_WIRE_270;
wire	[7:0] SYNTHESIZED_WIRE_39;
wire	[7:0] SYNTHESIZED_WIRE_271;
wire	[7:0] SYNTHESIZED_WIRE_42;
wire	[7:0] SYNTHESIZED_WIRE_272;
wire	[7:0] SYNTHESIZED_WIRE_45;
wire	[7:0] SYNTHESIZED_WIRE_273;
wire	[7:0] SYNTHESIZED_WIRE_48;
wire	[7:0] SYNTHESIZED_WIRE_274;
wire	[7:0] SYNTHESIZED_WIRE_51;
wire	[7:0] SYNTHESIZED_WIRE_275;
wire	[7:0] SYNTHESIZED_WIRE_54;
wire	[7:0] SYNTHESIZED_WIRE_276;
wire	[7:0] SYNTHESIZED_WIRE_57;
wire	[7:0] SYNTHESIZED_WIRE_277;
wire	[7:0] SYNTHESIZED_WIRE_60;
wire	[7:0] SYNTHESIZED_WIRE_278;
wire	[7:0] SYNTHESIZED_WIRE_63;
wire	[7:0] SYNTHESIZED_WIRE_279;
wire	[7:0] SYNTHESIZED_WIRE_280;
wire	[7:0] SYNTHESIZED_WIRE_67;
wire	[7:0] SYNTHESIZED_WIRE_281;
wire	[7:0] SYNTHESIZED_WIRE_70;
wire	[7:0] SYNTHESIZED_WIRE_282;
wire	[7:0] SYNTHESIZED_WIRE_73;
wire	[7:0] SYNTHESIZED_WIRE_283;
wire	[7:0] SYNTHESIZED_WIRE_76;
wire	[7:0] SYNTHESIZED_WIRE_284;
wire	[7:0] SYNTHESIZED_WIRE_79;
wire	[7:0] SYNTHESIZED_WIRE_285;
wire	[7:0] SYNTHESIZED_WIRE_82;
wire	[7:0] SYNTHESIZED_WIRE_286;
wire	[7:0] SYNTHESIZED_WIRE_85;
wire	[7:0] SYNTHESIZED_WIRE_287;
wire	[7:0] SYNTHESIZED_WIRE_88;
wire	[7:0] SYNTHESIZED_WIRE_288;
wire	[7:0] SYNTHESIZED_WIRE_91;
wire	[7:0] SYNTHESIZED_WIRE_92;
wire	[7:0] SYNTHESIZED_WIRE_289;
wire	[7:0] SYNTHESIZED_WIRE_290;
wire	[7:0] SYNTHESIZED_WIRE_291;
wire	[7:0] SYNTHESIZED_WIRE_292;
wire	[7:0] SYNTHESIZED_WIRE_293;
wire	[7:0] SYNTHESIZED_WIRE_294;
wire	[7:0] SYNTHESIZED_WIRE_295;
wire	[7:0] SYNTHESIZED_WIRE_296;
wire	[7:0] SYNTHESIZED_WIRE_297;
wire	[7:0] SYNTHESIZED_WIRE_298;
wire	[7:0] SYNTHESIZED_WIRE_299;
wire	[7:0] SYNTHESIZED_WIRE_300;
wire	[7:0] SYNTHESIZED_WIRE_301;
wire	[7:0] SYNTHESIZED_WIRE_302;
wire	[7:0] SYNTHESIZED_WIRE_303;
wire	[7:0] SYNTHESIZED_WIRE_304;
wire	[7:0] SYNTHESIZED_WIRE_305;
wire	[7:0] SYNTHESIZED_WIRE_306;
wire	[7:0] SYNTHESIZED_WIRE_307;
wire	[7:0] SYNTHESIZED_WIRE_308;
wire	[7:0] SYNTHESIZED_WIRE_309;
wire	[7:0] SYNTHESIZED_WIRE_310;
wire	[7:0] SYNTHESIZED_WIRE_311;
wire	[7:0] SYNTHESIZED_WIRE_312;
wire	[7:0] SYNTHESIZED_WIRE_149;
wire	[7:0] SYNTHESIZED_WIRE_151;
wire	[7:0] SYNTHESIZED_WIRE_152;
wire	[7:0] SYNTHESIZED_WIRE_154;
wire	[7:0] SYNTHESIZED_WIRE_157;
wire	[7:0] SYNTHESIZED_WIRE_160;
wire	[7:0] SYNTHESIZED_WIRE_313;
wire	[7:0] SYNTHESIZED_WIRE_164;
wire	[7:0] SYNTHESIZED_WIRE_167;
wire	[7:0] SYNTHESIZED_WIRE_170;
wire	[7:0] SYNTHESIZED_WIRE_173;
wire	[7:0] SYNTHESIZED_WIRE_176;
wire	[7:0] SYNTHESIZED_WIRE_314;
wire	[7:0] SYNTHESIZED_WIRE_179;
wire	[7:0] SYNTHESIZED_WIRE_315;
wire	[7:0] SYNTHESIZED_WIRE_182;
wire	[7:0] SYNTHESIZED_WIRE_185;
wire	[7:0] SYNTHESIZED_WIRE_188;
wire	[7:0] SYNTHESIZED_WIRE_191;
wire	[7:0] SYNTHESIZED_WIRE_195;
wire	[7:0] SYNTHESIZED_WIRE_198;
wire	[7:0] SYNTHESIZED_WIRE_201;
wire	[7:0] SYNTHESIZED_WIRE_204;
wire	[7:0] SYNTHESIZED_WIRE_207;
wire	[7:0] SYNTHESIZED_WIRE_210;
wire	[7:0] SYNTHESIZED_WIRE_213;
wire	[7:0] SYNTHESIZED_WIRE_216;
wire	[7:0] SYNTHESIZED_WIRE_219;
wire	[7:0] SYNTHESIZED_WIRE_222;
wire	[7:0] SYNTHESIZED_WIRE_226;
wire	[7:0] SYNTHESIZED_WIRE_229;
wire	[7:0] SYNTHESIZED_WIRE_232;
wire	[7:0] SYNTHESIZED_WIRE_235;
wire	[7:0] SYNTHESIZED_WIRE_238;
wire	[7:0] SYNTHESIZED_WIRE_241;
wire	[7:0] SYNTHESIZED_WIRE_244;
wire	[7:0] SYNTHESIZED_WIRE_247;
wire	[7:0] SYNTHESIZED_WIRE_248;
wire	[7:0] SYNTHESIZED_WIRE_250;
wire	[7:0] SYNTHESIZED_WIRE_253;

assign	load_sel = SYNTHESIZED_WIRE_258;




Reg8bits	b2v_inst(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_254),
	.Q(SYNTHESIZED_WIRE_149));


Reg8bits	b2v_inst1(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_255),
	.Q(SYNTHESIZED_WIRE_152));


Reg8bits	b2v_inst10(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_256),
	.Q(SYNTHESIZED_WIRE_315));


RegLoadSel	b2v_inst100(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_257),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_5),
	.Q(SYNTHESIZED_WIRE_253));


RegLoadSel	b2v_inst101(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_259),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_8),
	.Q(SYNTHESIZED_WIRE_5));


RegLoadSel	b2v_inst102(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_260),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_11),
	.Q(SYNTHESIZED_WIRE_8));


RegLoadSel	b2v_inst103(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_261),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_14),
	.Q(SYNTHESIZED_WIRE_11));


RegLoadSel	b2v_inst104(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_262),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_17),
	.Q(SYNTHESIZED_WIRE_14));


RegLoadSel	b2v_inst105(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_263),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_20),
	.Q(SYNTHESIZED_WIRE_17));


RegLoadSel	b2v_inst106(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_264),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_23),
	.Q(SYNTHESIZED_WIRE_20));


RegLoadSel	b2v_inst107(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_265),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_26),
	.Q(SYNTHESIZED_WIRE_23));


RegLoadSel	b2v_inst108(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_266),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_29),
	.Q(SYNTHESIZED_WIRE_26));


RegLoadSel	b2v_inst109(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_267),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_32),
	.Q(SYNTHESIZED_WIRE_29));


Reg8bits	b2v_inst11(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_268),
	.Q(SYNTHESIZED_WIRE_256));


RegLoadSel	b2v_inst110(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_269),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_36),
	.Q(SYNTHESIZED_WIRE_32));


RegLoadSel	b2v_inst111(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_270),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_39),
	.Q(SYNTHESIZED_WIRE_36));


RegLoadSel	b2v_inst112(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_271),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_42),
	.Q(SYNTHESIZED_WIRE_39));


RegLoadSel	b2v_inst113(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_272),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_45),
	.Q(SYNTHESIZED_WIRE_42));


RegLoadSel	b2v_inst114(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_273),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_48),
	.Q(SYNTHESIZED_WIRE_45));


RegLoadSel	b2v_inst115(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_274),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_51),
	.Q(SYNTHESIZED_WIRE_48));


RegLoadSel	b2v_inst116(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_275),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_54),
	.Q(SYNTHESIZED_WIRE_51));


RegLoadSel	b2v_inst117(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_276),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_57),
	.Q(SYNTHESIZED_WIRE_54));


RegLoadSel	b2v_inst118(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_277),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_60),
	.Q(SYNTHESIZED_WIRE_57));


RegLoadSel	b2v_inst119(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_278),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_63),
	.Q(SYNTHESIZED_WIRE_60));


Reg8bits	b2v_inst12(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_279),
	.Q(SYNTHESIZED_WIRE_268));


RegLoadSel	b2v_inst120(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_280),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_67),
	.Q(SYNTHESIZED_WIRE_63));


RegLoadSel	b2v_inst121(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_281),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_70),
	.Q(SYNTHESIZED_WIRE_67));


RegLoadSel	b2v_inst122(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_282),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_73),
	.Q(SYNTHESIZED_WIRE_70));


RegLoadSel	b2v_inst123(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_283),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_76),
	.Q(SYNTHESIZED_WIRE_73));


RegLoadSel	b2v_inst124(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_284),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_79),
	.Q(SYNTHESIZED_WIRE_76));


RegLoadSel	b2v_inst125(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_285),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_82),
	.Q(SYNTHESIZED_WIRE_79));


RegLoadSel	b2v_inst126(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_286),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_85),
	.Q(SYNTHESIZED_WIRE_82));


RegLoadSel	b2v_inst127(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_287),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_88),
	.Q(SYNTHESIZED_WIRE_85));


RegLoadSel	b2v_inst128(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_288),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_91),
	.Q(SYNTHESIZED_WIRE_88));


RegLoadSel	b2v_inst129(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_92),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_254),
	.Q(SYNTHESIZED_WIRE_91));


Reg8bits	b2v_inst13(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_289),
	.Q(SYNTHESIZED_WIRE_279));


Reg8bits	b2v_inst14(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_290),
	.Q(SYNTHESIZED_WIRE_289));


Reg8bits	b2v_inst15(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_291),
	.Q(SYNTHESIZED_WIRE_290));


Reg8bits	b2v_inst16(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_292),
	.Q(SYNTHESIZED_WIRE_291));


Reg8bits	b2v_inst17(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_293),
	.Q(SYNTHESIZED_WIRE_292));


Reg8bits	b2v_inst18(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_294),
	.Q(SYNTHESIZED_WIRE_293));


Reg8bits	b2v_inst19(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_295),
	.Q(SYNTHESIZED_WIRE_294));


Reg8bits	b2v_inst2(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_296),
	.Q(SYNTHESIZED_WIRE_255));


Reg8bits	b2v_inst20(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_297),
	.Q(SYNTHESIZED_WIRE_295));


Reg8bits	b2v_inst21(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_298),
	.Q(SYNTHESIZED_WIRE_297));


Reg8bits	b2v_inst22(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_299),
	.Q(SYNTHESIZED_WIRE_298));


Reg8bits	b2v_inst23(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_300),
	.Q(SYNTHESIZED_WIRE_299));


Reg8bits	b2v_inst24(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_301),
	.Q(SYNTHESIZED_WIRE_300));


Reg8bits	b2v_inst25(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_302),
	.Q(SYNTHESIZED_WIRE_301));


Reg8bits	b2v_inst26(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_303),
	.Q(SYNTHESIZED_WIRE_302));


Reg8bits	b2v_inst27(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_304),
	.Q(SYNTHESIZED_WIRE_303));


Reg8bits	b2v_inst28(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_305),
	.Q(SYNTHESIZED_WIRE_304));


Reg8bits	b2v_inst29(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_306),
	.Q(SYNTHESIZED_WIRE_305));


Reg8bits	b2v_inst3(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_307),
	.Q(SYNTHESIZED_WIRE_296));


Reg8bits	b2v_inst30(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_308),
	.Q(SYNTHESIZED_WIRE_306));


Reg8bits	b2v_inst31(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(Data),
	.Q(SYNTHESIZED_WIRE_308));


Reg8bits	b2v_inst32(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_254),
	.Q(SYNTHESIZED_WIRE_248));


Reg8bits	b2v_inst33(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(Data_Conj),
	.Q(SYNTHESIZED_WIRE_309));


Reg8bits	b2v_inst34(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_309),
	.Q(SYNTHESIZED_WIRE_257));


Reg8bits	b2v_inst35(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_257),
	.Q(SYNTHESIZED_WIRE_259));


Reg8bits	b2v_inst36(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_259),
	.Q(SYNTHESIZED_WIRE_260));


Reg8bits	b2v_inst37(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_260),
	.Q(SYNTHESIZED_WIRE_261));


Reg8bits	b2v_inst38(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_261),
	.Q(SYNTHESIZED_WIRE_262));


Reg8bits	b2v_inst39(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_262),
	.Q(SYNTHESIZED_WIRE_263));


Reg8bits	b2v_inst4(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_310),
	.Q(SYNTHESIZED_WIRE_307));


Reg8bits	b2v_inst40(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_263),
	.Q(SYNTHESIZED_WIRE_264));


Reg8bits	b2v_inst41(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_264),
	.Q(SYNTHESIZED_WIRE_265));


Reg8bits	b2v_inst42(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_265),
	.Q(SYNTHESIZED_WIRE_266));


Reg8bits	b2v_inst43(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_266),
	.Q(SYNTHESIZED_WIRE_267));


Reg8bits	b2v_inst44(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_267),
	.Q(SYNTHESIZED_WIRE_269));


Reg8bits	b2v_inst45(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_269),
	.Q(SYNTHESIZED_WIRE_270));


Reg8bits	b2v_inst46(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_270),
	.Q(SYNTHESIZED_WIRE_271));


Reg8bits	b2v_inst47(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_271),
	.Q(SYNTHESIZED_WIRE_272));


Reg8bits	b2v_inst48(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_272),
	.Q(SYNTHESIZED_WIRE_273));


Reg8bits	b2v_inst49(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_273),
	.Q(SYNTHESIZED_WIRE_274));


Reg8bits	b2v_inst5(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_311),
	.Q(SYNTHESIZED_WIRE_310));


Reg8bits	b2v_inst50(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_274),
	.Q(SYNTHESIZED_WIRE_275));


Reg8bits	b2v_inst51(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_275),
	.Q(SYNTHESIZED_WIRE_276));


Reg8bits	b2v_inst52(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_276),
	.Q(SYNTHESIZED_WIRE_277));


Reg8bits	b2v_inst53(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_277),
	.Q(SYNTHESIZED_WIRE_278));


Reg8bits	b2v_inst54(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_278),
	.Q(SYNTHESIZED_WIRE_280));


Reg8bits	b2v_inst55(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_280),
	.Q(SYNTHESIZED_WIRE_281));


Reg8bits	b2v_inst56(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_281),
	.Q(SYNTHESIZED_WIRE_282));


Reg8bits	b2v_inst57(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_282),
	.Q(SYNTHESIZED_WIRE_283));


Reg8bits	b2v_inst58(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_283),
	.Q(SYNTHESIZED_WIRE_284));


Reg8bits	b2v_inst59(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_284),
	.Q(SYNTHESIZED_WIRE_285));


Reg8bits	b2v_inst6(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_312),
	.Q(SYNTHESIZED_WIRE_311));


Reg8bits	b2v_inst60(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_285),
	.Q(SYNTHESIZED_WIRE_286));


Reg8bits	b2v_inst61(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_286),
	.Q(SYNTHESIZED_WIRE_287));


Reg8bits	b2v_inst62(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_287),
	.Q(SYNTHESIZED_WIRE_288));


Reg8bits	b2v_inst63(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_288),
	.Q(SYNTHESIZED_WIRE_92));


load_sel_controller	b2v_inst64(
	.clk(PLL_clk),
	.reset(reset_n),
	.load_sel(SYNTHESIZED_WIRE_258));


RegLoadSel	b2v_inst66(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_149),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_151),
	.Q(Serial_Out));


RegLoadSel	b2v_inst67(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_152),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_154),
	.Q(SYNTHESIZED_WIRE_151));


RegLoadSel	b2v_inst68(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_255),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_157),
	.Q(SYNTHESIZED_WIRE_154));


RegLoadSel	b2v_inst69(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_296),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_160),
	.Q(SYNTHESIZED_WIRE_157));


Reg8bits	b2v_inst7(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_313),
	.Q(SYNTHESIZED_WIRE_312));


RegLoadSel	b2v_inst70(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_307),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_164),
	.Q(SYNTHESIZED_WIRE_160));


RegLoadSel	b2v_inst71(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_310),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_167),
	.Q(SYNTHESIZED_WIRE_164));


RegLoadSel	b2v_inst72(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_311),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_170),
	.Q(SYNTHESIZED_WIRE_167));


RegLoadSel	b2v_inst73(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_312),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_173),
	.Q(SYNTHESIZED_WIRE_170));


RegLoadSel	b2v_inst74(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_313),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_176),
	.Q(SYNTHESIZED_WIRE_173));


RegLoadSel	b2v_inst75(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_314),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_179),
	.Q(SYNTHESIZED_WIRE_176));


RegLoadSel	b2v_inst76(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_315),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_182),
	.Q(SYNTHESIZED_WIRE_179));


RegLoadSel	b2v_inst77(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_256),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_185),
	.Q(SYNTHESIZED_WIRE_182));


RegLoadSel	b2v_inst78(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_268),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_188),
	.Q(SYNTHESIZED_WIRE_185));


RegLoadSel	b2v_inst79(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_279),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_191),
	.Q(SYNTHESIZED_WIRE_188));


Reg8bits	b2v_inst8(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_314),
	.Q(SYNTHESIZED_WIRE_313));


RegLoadSel	b2v_inst80(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_289),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_195),
	.Q(SYNTHESIZED_WIRE_191));


RegLoadSel	b2v_inst81(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_290),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_198),
	.Q(SYNTHESIZED_WIRE_195));


RegLoadSel	b2v_inst82(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_291),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_201),
	.Q(SYNTHESIZED_WIRE_198));


RegLoadSel	b2v_inst83(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_292),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_204),
	.Q(SYNTHESIZED_WIRE_201));


RegLoadSel	b2v_inst84(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_293),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_207),
	.Q(SYNTHESIZED_WIRE_204));


RegLoadSel	b2v_inst85(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_294),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_210),
	.Q(SYNTHESIZED_WIRE_207));


RegLoadSel	b2v_inst86(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_295),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_213),
	.Q(SYNTHESIZED_WIRE_210));


RegLoadSel	b2v_inst87(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_297),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_216),
	.Q(SYNTHESIZED_WIRE_213));


RegLoadSel	b2v_inst88(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_298),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_219),
	.Q(SYNTHESIZED_WIRE_216));


RegLoadSel	b2v_inst89(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_299),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_222),
	.Q(SYNTHESIZED_WIRE_219));


Reg8bits	b2v_inst9(
	.clk(clk),
	.reset_n(reset_n),
	.load_en(ShiftReg1_load_en),
	.Data(SYNTHESIZED_WIRE_315),
	.Q(SYNTHESIZED_WIRE_314));


RegLoadSel	b2v_inst90(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_300),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_226),
	.Q(SYNTHESIZED_WIRE_222));


RegLoadSel	b2v_inst91(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_301),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_229),
	.Q(SYNTHESIZED_WIRE_226));


RegLoadSel	b2v_inst92(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_302),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_232),
	.Q(SYNTHESIZED_WIRE_229));


RegLoadSel	b2v_inst93(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_303),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_235),
	.Q(SYNTHESIZED_WIRE_232));


RegLoadSel	b2v_inst94(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_304),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_238),
	.Q(SYNTHESIZED_WIRE_235));


RegLoadSel	b2v_inst95(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_305),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_241),
	.Q(SYNTHESIZED_WIRE_238));


RegLoadSel	b2v_inst96(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_306),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_244),
	.Q(SYNTHESIZED_WIRE_241));


RegLoadSel	b2v_inst97(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_308),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_247),
	.Q(SYNTHESIZED_WIRE_244));


RegLoadSel	b2v_inst98(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_248),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_250),
	.Q(SYNTHESIZED_WIRE_247));


RegLoadSel	b2v_inst99(
	.clk(PLL_clk),
	.reset_n(reset_n),
	.Data(SYNTHESIZED_WIRE_309),
	.load_sel(SYNTHESIZED_WIRE_258),
	.Shift_Data(SYNTHESIZED_WIRE_253),
	.Q(SYNTHESIZED_WIRE_250));


lpm_constant_0	b2v_Zero_Constant1(
	.result(SYNTHESIZED_WIRE_254));


endmodule

module lpm_constant_0(result);
/* synthesis black_box */

output [7:0] result;
assign result = 8'd0;

endmodule
