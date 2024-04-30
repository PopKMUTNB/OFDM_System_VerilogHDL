module Complex_Conj(
    re_in,
    im_in,
    re_conj,
    im_conj
);

input [7:0] re_in, im_in;
output [7:0] re_conj, im_conj;

wire [7:0] wire_re;
wire [7:0] wire_im;

assign wire_re = re_in;
assign wire_im = {(1'b1)^(im_in[7]), im_in[6:0]};
assign re_conj = wire_re;
assign im_conj = wire_im;

endmodule
