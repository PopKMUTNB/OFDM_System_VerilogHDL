module FFT_Module(clk,in_signal_re,in_signal_im,real_power,imag_power,exp_power,fft_source_sop,fft_source_eop,sink_sop,sink_eop,sink_valid,source_valid,source_ready,source_error,reset_n);

input clk;
input reset_n;
input wire [7:0] in_signal_re;
input wire [7:0] in_signal_im;
input wire source_ready;

output wire [7:0] real_power;
output wire [7:0] imag_power;
output wire [5:0] exp_power;

output wire sink_valid;
output wire sink_sop;
output wire sink_eop;
output wire fft_source_sop;
output wire fft_source_eop;
output wire source_valid;
output wire [1:0] source_error;

wire sink_ready;
wire [7:0] real_to_fft_p;
wire [7:0] imag_to_fft_p;

FFT_Controller FFT_Controller_inst
(
	.clk(clk) ,							// input  clk_sig
	.insignal_re(in_signal_re) ,		// input [7:0] insignal_re_sig
	.insignal_im(in_signal_im) ,		// input [7:0] insignal_im_sig
	.inverse(inverse) ,					// output  inverse_sig
	.sink_valid(sink_valid) ,			// output  sink_valid_sig
	.sink_sop(sink_sop) ,				// output  sink_sop_sig
	.sink_eop(sink_eop) ,				// output  sink_eop_sig
	.outreal(real_to_fft_p) ,			// output [7:0] outreal_sig
	.outimag(imag_to_fft_p) ,			// output [7:0] outimag_sig
	.sink_error(sink_error) ,			// output [1:0] sink_error_sig
	.sink_ready(sink_ready) 			// output  sink_ready_sig
);

FFT u0 (
	.clk          (clk),          		//    clk.clk
	.reset_n      (reset_n),      		//    rst.reset_n
	.sink_valid   (sink_valid),   		//   sink.sink_valid
	.sink_ready   (sink_ready),   		//       .sink_ready
	.sink_error   (2'b00),   			//       .sink_error
	.sink_sop     (sink_sop),     		//       .sink_sop
	.sink_eop     (sink_eop),     		//       .sink_eop
	.sink_real    (real_to_fft_p),  	//       .sink_real
	.sink_imag    (imag_to_fft_p),  	//       .sink_imag
	.inverse      (1'b1),      			//       .inverse
	.source_valid (source_valid), 		// source.source_valid
	.source_ready (source_ready), 		//       .source_ready
	.source_error (source_error), 		//       .source_error
	.source_sop   (fft_source_sop), 	//       .source_sop
	.source_eop   (fft_source_eop), 	//       .source_eop
	.source_real  (real_power),  		//       .source_real
	.source_imag  (imag_power),  		//       .source_imag
	.source_exp   (exp_power)
);

endmodule
