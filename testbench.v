`timescale 10ns/100ps
module testbench;

	reg clk;
	reg reset_n;
    reg [4:0] count;

	wire [7:0] input_wire1,input_wire2;
    wire [7:0] input_conj_wire1, input_conj_wire2;
	wire [7:0] Re_Serial_Out_sig, Im_Serial_Out_sig;
	wire [1:0] Re_load_sel_sig, Im_load_sel_sig;
	wire [7:0] IFFT_to_FFT_Re, IFFT_to_FFT_Im, real_power, imag_power;
	wire [5:0] IFFT_exp_power_sig;
	wire [5:0] FFT_exp_power_sig;
	wire [1:0] IFFT_source_error_sig;
	wire IFFT_source_valid_wire;
	wire IFFT_source_ready_wire; // Be careful of this!!!!!!!!!!!!
	wire IFFT_source_sop_wire;
	wire IFFT_source_eop_wire;
    wire PLL_clk_wire;

    initial
    begin
        clk = 0;
        reset_n = 0;
        count = 5'd0;
    end

    always
    begin
        #1000 clk = !clk;
    end

    always @(posedge clk)
    begin
    	count = count+5'd1;
    	if (count == 5'd10)
    	begin
    		reset_n = 1;
    	end
    end

	//NCO u0 (
	//	.clk       (clk),       			// clk.clk
	//	.reset_n   (reset_n),   			// rst.reset_n
	//	.clken     (1'b1),     				//  in.clken
	//	.phi_inc_i (32'd41943040), 			//    .phi_inc_i
	//	.fsin_o    (input_wire1),    		// out.fsin_o
	//	.fcos_o    (input_wire2),    		//    .fcos_o
	//	.out_valid (out_valid)  			//    .out_valid
	//);

	Counter_8bits Counter_8bits_inst
	(
		.clk(clk) ,								// input  clk_sig
		.reset(reset_n) ,						// input  reset_sig
		.out_re(input_wire1) ,					// output [7:0] out_re_sig
		.out_im(input_wire2) 					// output [7:0] out_im_sig
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

	FFT_Module FFT_Module_inst
	(	
		.clk(PLL_clk_wire) ,					// input  clk_sig
		.in_signal_re(Re_Serial_Out_sig) ,		// input [7:0] in_signal_re_sig
		.in_signal_im(Im_Serial_Out_sig) ,		// input [7:0] in_signal_im_sig
		.real_power(IFFT_to_FFT_Re) ,			// output [7:0] IFFT_to_FFT_Re
		.imag_power(IFFT_to_FFT_Im) ,			// output [7:0] IFFT_to_FFT_Im
		.exp_power(IFFT_exp_power_sig),			// output [5:0] exp_power
		.fft_source_sop(IFFT_source_sop_wire) ,	// output  fft_source_sop_sig
		.fft_source_eop(IFFT_source_eop_wire) ,	// output  fft_source_eop_sig
		.sink_sop(IFFT_sink_sop_sig) ,			// output  IFFT_sink_sop_sig
		.sink_eop(IFFT_sink_eop_sig) ,			// output  IFFT_sink_eop_sig
		.sink_valid(IFFT_sink_valid_sig) ,		// output  IFFT_sink_valid_sig
		.source_valid(IFFT_source_valid_wire) ,	// output  source_valid_sig
		.source_ready(IFFT_source_ready_wire) ,	// input  source_ready_sig 
		.source_error(IFFT_source_error_sig) ,	// output [1:0] IFFT_source_error_sig
		.reset_n(reset_n) 						// input  reset_n_sig
	);	

	IFFT IFFT_inst (	
		.clk          (PLL_clk_wire),          	//    clk.clk
		.reset_n      (reset_n),      			//    rst.reset_n
		.sink_valid   (IFFT_source_valid_wire), //   sink.sink_valid
		.sink_ready   (IFFT_source_ready_wire), //       .sink_ready 
		.sink_error   (IFFT_source_error_sig),  //       .sink_error
		.sink_sop     (IFFT_source_sop_wire),   //       .sink_sop
		.sink_eop     (IFFT_source_eop_wire),   //       .sink_eop
		.sink_real    (IFFT_to_FFT_Re),    		//       .sink_real
		.sink_imag    (IFFT_to_FFT_Im),    		//       .sink_imag
		.inverse      (1'b0),      				//       .inverse
		.source_valid (source_valid), 			// source.source_valid
		.source_ready (1'b1), 					//       .source_ready
		.source_error (source_error), 			//       .source_error
		.source_sop   (fft_source_sop),   		//       .source_sop
		.source_eop   (fft_source_eop),   		//       .source_eop
		.source_real  (real_power),  			//       .source_real
		.source_imag  (imag_power),  			//       .source_imag
		.source_exp   (FFT_exp_power_sig)		//		 .source_exp
	);	

endmodule
