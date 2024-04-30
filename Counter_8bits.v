module Counter_8bits (
    clk      ,  // clock input
    reset    ,  // reset input
    out_re   ,  // Output of the counter
    out_im   
);

input clk;
input reset;

output [7:0] out_re;
output [7:0] out_im;

reg [7:0] re_reg; 
reg [7:0] im_reg;

initial
begin
	re_reg = 8'd0;
	im_reg = 8'd63;
end

assign out_re = re_reg;
assign out_im = im_reg;

always @(negedge clk)
begin
    if (reset == 0) 
    begin // active high reset
        re_reg <= 8'd0 ;
        im_reg <= 8'd63 ;
    end 
    else
    begin
        if (re_reg < 8'd63) begin
            re_reg <= re_reg + 1;
            im_reg <= im_reg - 1;
        end
        else
        begin
            re_reg <= 8'd0;
            im_reg <= 8'd63;
        end
    end 
end

endmodule
