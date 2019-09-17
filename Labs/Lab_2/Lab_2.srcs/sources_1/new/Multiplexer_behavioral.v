`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 06:59:02 AM
// Design Name: 
// Module Name: Multiplexer_behavioral
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


module Multiplexer_behavioral(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output reg d
    );
    
    always@(i0,i1,i2,i3,s0,s1)
    begin
    
        case({s1,s0})
        2'b00:d=i0;
        2'b01:d=i1;
        2'b10:d=i2;
        2'b11:d=i3;
        endcase
        
    
    
    
    
    end
    
    
    
endmodule
