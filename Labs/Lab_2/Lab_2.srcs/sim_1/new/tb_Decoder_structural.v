`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 05:34:52 AM
// Design Name: 
// Module Name: tb_Decoder_structural
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
`timescale 1ns/1ps

module tb_Decoder_structural(

    );
    
    //inputs
    reg e;
    reg a;
    reg b;
    reg c;
    
    //outputs
    wire d0;
    wire d1;
    wire d2;
    wire d3;
    wire d4;
    wire d5;
    wire d6;
    wire d7;
    
    //initialize the uut
    
    Decoder_structural uut(
    .e(e),
    .a(a),
    .b(b),
    .c(c),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .d4(d4),
    .d5(d5),
    .d6(d6),
    .d7(d7)
   
    );
    
    
    initial begin
    //inital inputs
    
    e=0;
    a=0;
    b=0;
    c=0;
    
    //50 ns for reset to finish
    
    #50;
    
     e=0;
     a=0;
     b=0;
     c=0;
     $display("TC01");
     if(d0!=1'b0 )$display("Result is wrong");
     
     
     e=0;
     a=0;
     b=0;
     c=1;
     #50;
     $display("TC02");
     if(d1!=1'b0 )$display("Result is wrong");
    
    
     e=0;
     a=0;
     b=1;
     c=0;
     #50;
     $display("TC03");
     if(d2!=1'b0 )$display("Result is wrong");
    
    
     e=0;
     a=0;
     b=1;
     c=1;
     #50;
     $display("TC04");
     if(d3!=1'b0 )$display("Result is wrong");
    
    
     e=0;
     a=1;
     b=0;
     c=0;
     #50;
     $display("TC05");
     if(d4!=1'b0 )$display("Result is wrong");
    
    
     e=0;
     a=1;
     b=0;
     c=1;
     #50;
     $display("TC06");
     if(d5!=1'b0 )$display("Result is wrong");
    
    
     e=0;
     a=1;
     b=1;
     c=0;
     #50;
     $display("TC07");
     if(d6!=1'b0 )$display("Result is wrong");
    
    
     e=0;
     a=1;
     b=1;
     c=1;
     #50;
     $display("TC08");
     if(d7!=1'b0 )$display("Result is wrong");
    
    
     e=1;
     a=0;
     b=0;
     c=0;
     #50;
     $display("TC09");
     if(d0!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=0;
     b=0;
     c=1;
     #50;
     $display("TC10");
     if(d1!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=0;
     b=1;
     c=0;
     #50;
     $display("TC11");
     if(d2!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=0;
     b=1;
     c=1;
     #50;
     $display("TC12");
     if(d3!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=1;
     b=0;
     c=0;
     #50;
     $display("TC13");
     if(d4!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=1;
     b=0;
     c=1;
     #50;
     $display("TC14");
     if(d5!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=1;
     b=1;
     c=0;
     #50;
     $display("TC15");
     if(d6!=1'b1 )$display("Result is wrong");
    
    
     e=1;
     a=1;
     b=1;
     c=1;
     #50;
     $display("TC16");
     if(d7!=1'b1 )$display("Result is wrong");
    
    
    end  
    
endmodule
