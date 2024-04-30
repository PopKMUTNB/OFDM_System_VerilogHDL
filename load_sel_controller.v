module load_sel_controller (
    clk,
    reset,
    load_sel
);
    
input clk;
input reset;
output [1:0] load_sel;
reg [1:0] load_sel_reg;
integer count;

initial begin
    count = 0;
    load_sel_reg = 2'd0;
end

assign load_sel = load_sel_reg;

always @(negedge clk) begin
    if (!reset) begin
        count = 0;
        load_sel_reg <= 2'd0;
    end
    else begin
        count = count + 1;
        if (count == 64) begin
            load_sel_reg <= 2'd1; 
        end
        if (count == 65) begin
            load_sel_reg <= 2'd2;
            count = 1;
        end
    end
end

endmodule
