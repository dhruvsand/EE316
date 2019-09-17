`timescale 1ns / 1ps

module tb_rising_edge_detector;

reg clk;
reg signal;
reg reset;

wire outedge;

rising_edge_detector u1(
    .clk(clk),
    .signal(signal),
    .reset(reset),
    .outedge(outedge)
);

clkdiv u2(
    .clk(clk)
);
    
initial 
begin
    
clk = 0;
signal = 0;
reset = 1;

#10

signal = 0;
reset = 0;

#30

signal = 1;
reset = 0;

#40

signal = 1;
reset = 0;
#40

signal = 0;
reset = 0;

end

always 
#5 clk = ~clk;
    
endmodule
