module RegLoadSel (
    clk,
    reset_n,
    Data,
    Shift_Data,
    load_sel,
    Q
);
    
input clk;
input reset_n;
input [7:0] Data;
input [7:0] Shift_Data;
input [1:0] load_sel;

output [7:0] Q;

reg [7:0] Register;

always @(posedge clk) begin
    if (!reset_n) begin
        Register <= 8'd0;
    end
    else begin

        // _____________________________
        // |             |             |
        // | Load Select |   Output    |
        // |-------------|-------------|
        // |      00     |  No Change  |
        // |      01     |  Data In    |
        // |      10     |  Shift Data |
        // |      11     |  High Imp.  |
        // |_____________|_____________|

        if (load_sel == 2'd0) begin
            Register <= Register;
        end
        if (load_sel == 2'd1) begin
            Register <= Data;
        end
        if (load_sel == 2'd2) begin
            Register <= Shift_Data;
        end
        if (load_sel == 2'd3) begin
            Register <= 8'bz;
        end
    end        
end

assign Q = Register;

endmodule