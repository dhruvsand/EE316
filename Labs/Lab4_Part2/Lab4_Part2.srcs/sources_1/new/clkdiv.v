`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 09:27:44 PM
// Design Name: 
// Module Name: clkdiv
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module clkdiv(
    input clk,
    input reset,
    output clk_out
);
   
    reg [25:0] COUNT=0;
 
    assign clk_out=COUNT[25];
 
    always @(posedge clk)
    begin
    if(reset)
        COUNT = 0;
    else
        COUNT = COUNT + 1;
    end
 
    endmodule