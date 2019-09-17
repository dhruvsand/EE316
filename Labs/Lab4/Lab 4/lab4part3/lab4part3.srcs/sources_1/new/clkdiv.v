`timescale 1ns / 1ps


module clkdiv(
    input clk,
    input reset,
    output slow_clk
    );
    
    reg [25:0] COUNT;
    
    assign slow_clk = COUNT[25];
    always @(posedge clk) begin
        if(reset)
            COUNT = 0;
        else
            COUNT = COUNT + 1;
        end
endmodule
