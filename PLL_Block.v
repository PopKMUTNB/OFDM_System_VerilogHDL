module PLL_Block(
	clk,
	reset_n,
	PLL_clk
);

	 input clk;
    input reset_n;

	 output PLL_clk;
	 
	 wire PLL_clk_wire;
	 wire PLL_clk_wire2;
	 wire PLL_clk_wire3;
	 wire PLL_clk_wire4;
	 wire PLL_clk_wire5;
	 wire PLL_clk_wire6;
	 wire PLL_clk_wire7;

    PLL PLL_inst (
    	.refclk(clk) ,	                        // input  refclk_sig
    	.rst(!reset_n) ,	                    // input  rst_sig
    	.outclk_0(PLL_clk_wire) 	            // output  outclk_0_sig
    );
	 
	 PLL2 PLL2_inst (
		.refclk(PLL_clk_wire) ,	// input  refclk_sig
		.rst(!reset_n) ,	// input  rst_sig
		.outclk_0(PLL_clk_wire2) 	// output  outclk_0_sig
	 );
	 PLL2 PLL2_inst2 (
		.refclk(PLL_clk_wire2) ,	// input  refclk_sig
		.rst(!reset_n) ,	// input  rst_sig
		.outclk_0(PLL_clk_wire3) 	// output  outclk_0_sig
	 );
	 PLL2 PLL2_inst3 (
		.refclk(PLL_clk_wire3) ,	// input  refclk_sig
		.rst(!reset_n) ,	// input  rst_sig
		.outclk_0(PLL_clk_wire4) 	// output  outclk_0_sig
	 );
	 PLL2 PLL2_inst4 (
		.refclk(PLL_clk_wire4) ,	// input  refclk_sig
		.rst(!reset_n) ,	// input  rst_sig
		.outclk_0(PLL_clk_wire5) 	// output  outclk_0_sig
	 );
	 PLL2 PLL2_inst5 (
		.refclk(PLL_clk_wire5) ,	// input  refclk_sig
		.rst(!reset_n) ,	// input  rst_sig
		.outclk_0(PLL_clk_wire6) 	// output  outclk_0_sig
	 );
	 PLL2 PLL2_inst6 (
		.refclk(PLL_clk_wire6) ,	// input  refclk_sig
		.rst(!reset_n) ,	// input  rst_sig
		.outclk_0(PLL_clk_wire7) 	// output  outclk_0_sig
	 );
	 
	 assign PLL_clk = PLL_clk_wire7;

endmodule
