module Sort_Reg(
    clk,
    clk_div,
    reset_n,
    re_in,
    re_in_conj,
    im_in,
    im_in_conj,
    re_out,
    im_out
);

input clk;
input clk_div;
input reset_n;
input [7:0] re_in, re_in_conj;
input [7:0] im_in, im_in_conj;
output [7:0] re_out, im_out;

reg [7:0] re_shift1 [30:0];
reg [7:0] im_shift1 [30:0];
reg [7:0] re_conj_shift1 [0:30];
reg [7:0] im_conj_shift1 [0:30];
reg [7:0] re_shift2 [0:63];
reg [7:0] im_shift2 [0:63];
integer i, n, k, load_en, out_en;

initial begin
    i = 0;
    n = 0;
    k = 0;
    load_en = 0;
    out_en = 0;
end

always @(posedge clk_div)
begin
    if (reset_n == 0) begin
		i = 0;
        n = 0;
        k = 0;
        load_en = 0;
        out_en = 0;
    end    
    else begin
        if (i == 31) begin
            load_en = 1;
        end
        if (load_en == 1) begin
            i = 0;
            re_shift2[0:63] <= {8'd0, re_shift1[30:0], 8'd0, re_conj_shift1[0:30]};
            im_shift2[0:63] <= {8'd0, im_shift1[30:0], 8'd0, im_conj_shift1[0:30]};
            out_en = 1;
            load_en = 0;
        end
        for (n = 0; n < 30; n = n + 1) begin
            re_shift1[n+1] <= re_shift1[n]; 
            re_conj_shift1[n+1] <= re_conj_shift1[n];
            im_shift1[n+1] <= im_shift1[n];
            im_conj_shift1[n+1] <= im_conj_shift1[n];
        end
        re_shift1[0]   <= re_in;
        re_conj_shift1[0]   <= re_in_conj;
        im_shift1[0]   <= im_in;
        im_conj_shift1[0]   <= im_in_conj;
        i = i + 1;
    end
end

always @(posedge clk) begin
    if (out_en == 1) begin
        for (k = 63; k > 0; k = k - 1) begin
            re_shift2[k-1] <= re_shift2[k]; 
            im_shift2[k-1] <= im_shift2[k];
        end
        if (k == 0) begin
            out_en = 0;
        end       
    end
end

assign re_out = re_shift2[0];
assign im_out = im_shift2[0];

endmodule
