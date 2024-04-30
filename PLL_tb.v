`timescale 10ns/100ps
module PLL_tb;

    reg clk;
    reg reset_n;
    reg [4:0] count;

     wire clk_out;
    //wire [7:0] real_PSD, imag_PSD, real_power, imag_power;
    //wire [5:0] fft_exp_power_sig;
    //wire [5:0] ifft_exp_power_sig;
    //wire [1:0] source_error_sig;
    //wire valid_wire;
    //wire ready_wire; // Be careful of this!!!!!!!!!!!!
    //wire sop_wire;
    //wire eop_wire;
	 wire PLL_clk_wire;
	 wire PLL_clk_wire2;
	 wire PLL_clk_wire3;
	 wire PLL_clk_wire4;
	 wire PLL_clk_wire5;
	 wire PLL_clk_wire6;
	 wire PLL_clk_wire7;
	 
    initial
    begin
        clk = 0;
        reset_n = 0;
        count = 5'd0;
    end

    always
    begin
        #10 clk = !clk;
    end

    always @(posedge clk)
    begin
        count = count+5'd1;
        if (count == 5'd10)
        begin
            reset_n = 1;
        end
    end

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

endmodule