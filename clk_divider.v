module clk_divider (
    clk,
	 clk_out,
    clk_div
);

input clk;
output clk_out;
output clk_div;
reg temp;
integer count;

initial begin
    temp = 0;
    count = 0;
end

always @(posedge clk) begin
    count = count + 1;
    if (count == 2) begin
        temp = ~temp;
        count = 0;
    end
end

assign clk_out = clk;
assign clk_div = temp;

endmodule
