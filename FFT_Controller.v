module FFT_Controller(clk, insignal_re, insignal_im, inverse, sink_valid, sink_sop, sink_eop, outreal, outimag, sink_error, sink_ready);

input clk;
input [7:0] insignal_re;
input [7:0] insignal_im;

output reg sink_valid, sink_sop, sink_eop, inverse, sink_ready;
output reg [1:0] sink_error;

output [7:0] outreal, outimag;
reg    [5:0]  count;

initial
begin
	count 	   = 6'd1;
	inverse    = 1;
	sink_valid = 0;
	sink_ready = 1;
	sink_error = 2'b00;
end

assign outreal = insignal_re;
assign outimag = insignal_im;

always @(posedge clk)
begin
	begin
		count <= count + 1'b1;
	end
	if (count == 6'd63)
	begin
		sink_eop <= 1;
	end
	if (count == 6'd0)
	begin
		sink_eop   <= 0;
		sink_sop   <= 1;
		sink_valid <= 1;
	end
	if (count == 6'd1)
	begin
		sink_sop <= 0;
	end
end

endmodule 