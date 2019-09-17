`timescale 1ns / 1ps

module tb_time_multiplexing_main;   

    reg clk;
    reg reset;
    reg [15:0]sw;
    
    wire [3:0] an;
    wire [6:0] sseg;
        
time_multiplexing_main u1(
    .clk(clk),
    .reset(reset),
    .sw(sw),
    .an(an),
    .sseg(sseg)
);    

initial begin
    

sw = 16'h0000;
clk = 0;
reset = 0;

#30
reset = 0;    
sw = 16'h0008;  

#30;
reset = 0;
sw = 16'h4321;

#30;
reset = 0;
sw = 16'h0002;

#30;
reset = 0;
sw = 16'h0302;
end


always 
#5 clk = ~clk;

endmodule
