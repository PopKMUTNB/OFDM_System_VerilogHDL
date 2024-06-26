module Reg8bits (
    clk,
    reset_n,
    Data,
    load_en,
    Q
);

input clk;
input reset_n;
input [7:0] Data;
input load_en;

output [7:0] Q;

reg [7:0] Register;

always @(posedge clk) begin
    if (!reset_n) begin
        Register <= 8'd0;
    end
    else begin
        if (load_en) begin
            Register <= Data;
        end
        else begin
            Register <= Register;
        end
    end        
end

assign Q = Register;

endmodule
