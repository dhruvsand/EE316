`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2018 02:03:48 PM
// Design Name: 
// Module Name: BCD
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


module BCD(
    input s0,
    input s1,
    input s2,
    input s3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output an0
    );
    
    wire s0_not, s1_not,s2_not,s3_not,a0,a1,b0,b1,d0,d1,d2,e0,e1,e2,f0,f1,f2,g00,g01,an00;
    
    not n0(s0_not,s0);
    not n1(s1_not,s1);
    not n2(s2_not,s2);
    not n3(s3_not,s3);
    
    and g1(a0,s0,s1_not,s2_not,s3_not);
    and g2(a1,s0_not,s1_not,s2,s3_not);
    or  o1(a,a0,a1);
    
    and g3(b0,s0,s1_not,s2,s3_not);
    and g4(b1,s0_not,s1,s2,s3_not);
    or  o2(b,b0,b1);
    
    and(c,s0_not,s1,s2_not,s3_not);
    
    and g5(d0,s0,s1_not,s2_not,s3_not);
    and g6(d1,s0_not,s1_not,s2,s3_not);
    and g7(d2,s0,s1,s2,s3_not);
    or  o3(d,d0,d1,d2);
    
    and g8(e0,s0,s3_not);
    and g9(e1,s1_not,s2,s3_not);
    and g10(e2,s0,s1_not,s2_not);
    or  o4(e,e0,e1,e2);
    
    and g11(f0,s0,s1_not,s2_not,s3_not);
    and g12(f1,s1,s2_not,s3_not);
    and g13(f2,s0,s1,s3_not);
    or  o5(f,f0,f1,f2);
    
    and g14(g00,s1_not,s2_not,s3_not);
    and g15(g01,s0,s1,s2,s3_not);
    or  o6(g,g00,g01);
    
    or  o7(an00,s2,s1);
    and g16(an0,s3,an00);
    
    
    
    
    
    
    
    
endmodule
