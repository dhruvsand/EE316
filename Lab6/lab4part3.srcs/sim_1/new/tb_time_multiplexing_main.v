`timescale 1s / 1ps

module tb_time_multiplexing_main;
reg clk;
reg reset;
reg play;
reg [7:0] sw;
wire [3:0] an;
wire [6:0] sseg;
wire dp;

time_multiplexing_main uut (
    .clk(clk),
    .reset(reset),
    .play(play),
    .sw(sw),
    .an(an),
    .sseg(sseg),
    .dp(dp)
);

initial begin

clk = 0;
reset = 0;
sw = 8'b00000000;
play = 0;
reset=0;

#30;

reset = 1;
#30;
reset = 0;

#30;
play = 1;

#100;
play = 1;

end

always
#5 clk = ~clk;
endmodule
