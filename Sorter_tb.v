`timescale 10ns/100ps
module Sorter_tb;

    reg clk;
    reg reset_n;
    reg [4:0] count;

    wire [7:0] input_wire1,input_wire2;
    wire [7:0] input_conj_wire1, input_conj_wire2;
	wire [7:0] Re_Serial_Out_sig, Im_Serial_Out_sig;
	wire [1:0] Re_load_sel_sig, Im_load_sel_sig;
    //wire [7:0] real_PSD, imag_PSD, real_power, imag_power;
    //wire [5:0] fft_exp_power_sig;
    //wire [5:0] ifft_exp_power_sig;
    //wire [1:0] source_error_sig;
    //wire valid_wire;
    //wire ready_wire; // Be careful of this!!!!!!!!!!!!
    //wire sop_wire;
    //wire eop_wire;
    wire PLL_clk_wire;

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

    Counter_8bits Counter_8bits_inst (
    	.clk(clk) ,							    // input  clk_sig
    	.reset(reset_n) ,						// input  reset_sig
    	.out_re(input_wire1) ,				    // output [7:0] out_re_sig
    	.out_im(input_wire2) 				    // output [7:0] out_im_sig
    );

    PLL_Block PLL_Block_inst (
		.clk(clk) ,					            // input  clk_sig
		.reset_n(reset_n) ,	                    // input  reset_n_sig
		.PLL_clk(PLL_clk_wire) 	                // output  PLL_clk_sig
	 );

    Complex_Conj Complex_Conj_inst (
	    .re_in(input_wire1) ,	                // input [7:0] re_in_sig
	    .im_in(input_wire2) ,	                // input [7:0] im_in_sig
	    .re_conj(input_conj_wire1) ,	        // output [7:0] re_conj_sig
	    .im_conj(input_conj_wire2) 	            // output [7:0] im_conj_sig
    );

    Sorter Sorter_inst (
	    .ShiftReg1_load_en(1'b1) ,	            // input  ShiftReg1_load_en_sig
	    .reset_n(reset_n) , 	                // input  reset_n_sig
	    .clk(clk) , 	                        // input  clk_sig
        .PLL_clk(PLL_clk_wire) ,	            // input  PLL_clk_sig
	    .Data(input_wire1) ,	                // input [7:0] Data_sig
	    .Data_Conj(input_conj_wire1) ,	        // input [7:0] Data_Conj_sig
	    .load_sel(Re_load_sel_sig) ,	        // output [1:0] load_sel_sig
	    .Serial_Out(Re_Serial_Out_sig) 	        // output [7:0] Serial_Out_sig
    );

    Sorter Sorter_inst2 (
	    .ShiftReg1_load_en(1'b1) ,	            // input  ShiftReg1_load_en_sig
	    .reset_n(reset_n) , 	                // input  reset_n_sig
	    .clk(clk) , 	                        // input  clk_sig
        .PLL_clk(PLL_clk_wire) ,	            // input  PLL_clk_sig
	    .Data(input_wire2) ,	                // input [7:0] Data_sig
	    .Data_Conj(input_conj_wire2) ,	        // input [7:0] Data_Conj_sig
	    .load_sel(Im_load_sel_sig) ,	        // output [1:0] load_sel_sig
	    .Serial_Out(Im_Serial_Out_sig) 	        // output [7:0] Serial_Out_sig
    );

endmodule