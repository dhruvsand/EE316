`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2018 02:36:04 PM
// Design Name: 
// Module Name: tb_BCD
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


module tb_BCD;

    reg s0;
    reg s1;
    reg s2;
    reg s3;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire an0;
    
    BCD uut(
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .an0(an0),
    .an1(an1),
    .an2(an2),
    .an3(an3)
    
    );
    
    initial begin
    s0=0;
    s1=0;
    s2=0;
    s3=0;
    
    #50;
    $display("TC00");
    if((a!=0)||(b!=0)||(c!=0)||(d!=0)||(e!=0)||(f!=0)||(g!=1)||(an0!=0))$display("Test failed");
    
    
    s0=1;
    s1=0;
    s2=0;
    s3=0;
    
    #50;
    $display("TC01");
    if((a!=1)||(b!=0)||(c!=0)||(d!=1)||(e!=1)||(f!=1)||(g!=1)||(an0!=0))$display("Test failed");
    
    
     s0=0;
    s1=1;
    s2=0;
    s3=0;
    
    #50;
    $display("TC02");
    if((a!=0)||(b!=0)||(c!=1)||(d!=0)||(e!=0)||(f!=1)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=1;
    s1=1;
    s2=0;
    s3=0;
    
    #50;
    $display("TC03");
    if((a!=0)||(b!=0)||(c!=0)||(d!=0)||(e!=1)||(f!=1)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=0;
    s1=0;
    s2=1;
    s3=0;
    
    #50;
    $display("TC04");
    if((a!=1)||(b!=0)||(c!=0)||(d!=1)||(e!=1)||(f!=0)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=1;
    s1=0;
    s2=1;
    s3=0;
    
    #50;
    $display("TC05");
    if((a!=0)||(b!=1)||(c!=0)||(d!=0)||(e!=1)||(f!=0)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=0;
    s1=1;
    s2=1;
    s3=0;
    
    #50;
    $display("TC05");
    if((a!=0)||(b!=1)||(c!=0)||(d!=0)||(e!=0)||(f!=0)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=1;
    s1=1;
    s2=1;
    s3=0;
    
    #50;
    $display("TC07");
    if((a!=0)||(b!=0)||(c!=0)||(d!=1)||(e!=1)||(f!=1)||(g!=1)||(an0!=0))$display("Test failed");
    
    
     s0=0;
    s1=0;
    s2=0;
    s3=1;
    
    #50;
    $display("TC08");
    if((a!=0)||(b!=0)||(c!=0)||(d!=0)||(e!=0)||(f!=0)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=1;
    s1=0;
    s2=0;
    s3=1;
    
    #50;
    $display("TC09");
    if((a!=0)||(b!=0)||(c!=0)||(d!=0)||(e!=1)||(f!=0)||(g!=0)||(an0!=0))$display("Test failed");
    
    
     s0=0;
    s1=1;
    s2=0;
    s3=1;
    
    #50;
    $display("TC10");
    if((an0!=1))$display("Test failed");
    
    
     s0=1;
    s1=1;
    s2=0;
    s3=1;
    
    #50;
    $display("TC11");
    if((an0!=1))$display("Test failed");
    
    
     s0=0;
    s1=0;
    s2=1;
    s3=1;
    
    #50;
    $display("TC12");
    if((an0!=1))$display("Test failed");
    
    
     s0=1;
    s1=0;
    s2=1;
    s3=1;
    
    #50;
    $display("TC13");
    if((an0!=1))$display("Test failed");
    
    
     s0=0;
    s1=1;
    s2=1;
    s3=1;
    
    #50;
    $display("TC14");
    if((an0!=1))$display("Test failed");
    
    
     s0=1;
    s1=1;
    s2=1;
    s3=1;
    
    #50;
    $display("TC15");
    if((an0!=1))$display("Test failed");
    
    
     
    
    
    
    
    
    
    
    end
    
    
endmodule
