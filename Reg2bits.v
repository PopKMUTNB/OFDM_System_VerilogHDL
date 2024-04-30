module Reg2bits (
        clk,
        data,
        data_out
    );

    input clk;
    input [1:0] data;
    reg [1:0] register;
    output [1:0] data_out;

    initial begin
        register = 2'd0;
    end
    
    always @(posedge clk) begin
        register <= data;
    end

    assign data_out = register; 

endmodule
