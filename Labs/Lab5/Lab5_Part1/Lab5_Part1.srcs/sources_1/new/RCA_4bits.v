`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2018 02:57:29 PM
// Design Name: 
// Module Name: RCA_4bits
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


module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [4:0]Q
    );
    
    wire cout0, cout1, cout2;
        wire [4:0] Data;
        full_adder f0 (.A(A[0]), .B(B[0]), .Cin(Cin),   .S(Data[0]), .Cout(cout0));
        full_adder f1 (.A(A[1]), .B(B[1]), .Cin(cout0), .S(Data[1]), .Cout(cout1)); 
        full_adder f2 (.A(A[2]), .B(B[2]), .Cin(cout1), .S(Data[2]), .Cout(cout2)); 
        full_adder f3 (.A(A[3]), .B(B[3]), .Cin(cout2), .S(Data[3]), .Cout(Data[4])); 
        
        register_logic r0 (.clk(clk), .enable(enable), .Data(Data), .Q(Q));
    
    
    
endmodule
