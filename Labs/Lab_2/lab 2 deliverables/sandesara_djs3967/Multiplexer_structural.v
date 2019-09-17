`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 06:25:10 AM
// Design Name: 
// Module Name: Multiplexer_structural
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


module Multiplexer_structural(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output d
    );
    //defining the not values
    
    wire s0_not, s1_not;
    
    not n0(s0_not, s0);
    not n1(s1_not, s1);
    
    // intializing the and wires
    
    wire d0_and, d1_and, d2_and, d3_and;
    //intialize and gates
    and g0(d0_and, i0, s1_not, s0_not);
    and g1(d1_and, i1, s1_not, s0);
    and g2(d2_and, i2, s1, s0_not);
    and g3(d3_and, i3, s1, s0);
    
    //final or gate
    
    or o0(d,d0_and, d1_and, d2_and, d3_and);
    
    
    
endmodule
