`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2018 02:59:43 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,B,Cin,
    output reg S,Cout
    );
    
    reg [1:0]out;
    always@(*)begin
    out = A+B+Cin;
     S<= out[0];
    Cout<= out[1];
    
    //{Cout,S}= A+B+Cin;
    
    
    
    end
    
endmodule
