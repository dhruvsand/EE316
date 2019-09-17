`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2018 03:51:09 PM
// Design Name: 
// Module Name: CLA_4bits
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


module CLA_4bits(
    input clk,
input enable,
input [3:0] A,
input [3:0] B,
input Cin,
output [4:0]Q
    );
    wire [4:0] Data;
    wire [3:0] P;
    wire [3:0] G;
    wire [4:0] C;
    
    assign P=A^B;
    assign G=A&B;
    
    assign C[0]= Cin;
    assign C[1]= G[0]| P[0]&Cin;
    assign C[2]= G[1]| P[1]&G[0]| P[1]&P[0]&Cin   ;
    assign C[3]= G[2]| P[2]&G[1]| P[2]&P[1]&G[0]| P[2]&P[1]&P[0]&Cin ;
    assign C[4]= G[3]| P[3]&G[2]| P[3]&P[2]&G[1]| P[3]&P[2]&P[1]&G[0]| P[3]&P[2]&P[1]&P[0]&Cin;
    
    assign Data[0]= P[0]^C[0];
    assign Data[1]= P[1]^C[1];
    assign Data[2]= P[2]^C[2];
    assign Data[3]= P[3]^C[3]; 
    assign Data[4]= C[4];
    
    
    
     register_logic r0 (.clk(clk), .enable(enable), .Data(Data), .Q(Q));
endmodule
