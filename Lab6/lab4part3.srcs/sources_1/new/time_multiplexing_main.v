`timescale 1ns / 1ps


module time_multiplexing_main(
    input clk,
    input reset,
    input play,
    input [15:0] sw,
    output [3:0] an,
    output [6:0] sseg,
    output dp
    );
    
    wire [6:0] in0, in1, in2, in3 ;
    
    wire slow_clk;


reg [25:0] FastCounter;
reg [25:0]Counter;
integer digit1, digit2, digit3, digit4;

reg running;
//initial running=0; 

integer state;
integer increment;

always @(posedge clk) begin
     
     if(play)begin
         
     if(running)
         running =0;
     else
         running=1;    
         
         state = sw[15:14];
 end
 
 

 
 
 
    if(reset) begin    
    running=0;
    Counter=0;
    
     case(sw[7:4])
     4'b0000 :   Counter=0;
     4'b0001 :   Counter=1;
     4'b0010 :   Counter=2;
     4'b0011 :   Counter=3;
     4'b0100 :   Counter=4;
     4'b0101 :   Counter=5;
     4'b0110 :   Counter=6;
     4'b0111 :   Counter=7;
     4'b1000 :   Counter=8;
     4'b1001 :   Counter=9;
     4'b1010 :   Counter=9;
     4'b1011 :   Counter=9;
     4'b1100 :   Counter=9;
     4'b1101 :   Counter=9;
     4'b1110 :   Counter=9;
     4'b1111 :   Counter=9;
     endcase
      case(sw[3:0])
     4'b0000 :   Counter=10*Counter+0;
     4'b0001 :   Counter=10*Counter+1;
     4'b0010 :   Counter=10*Counter+2;
     4'b0011 :   Counter=10*Counter+3;
     4'b0100 :   Counter=10*Counter+4;
     4'b0101 :   Counter=10*Counter+5;
     4'b0110 :   Counter=10*Counter+6;
     4'b0111 :   Counter=10*Counter+7;
     4'b1000 :   Counter=10*Counter+8;
     4'b1001 :   Counter=10*Counter+9;
     4'b1010 :   Counter=10*Counter+9;
     4'b1011 :   Counter=10*Counter+9;
     4'b1100 :   Counter=10*Counter+9;
     4'b1101 :   Counter=10*Counter+9;
     4'b1110 :   Counter=10*Counter+9;
     4'b1111 :   Counter=10*Counter+9;
     endcase
     
    
    
    
    case(sw[15:14])
    2'b00 :begin
        increment=1;
       Counter=0;
       end
    2'b01 :begin
       increment=1;
       Counter=Counter*100;
       end
    2'b10 :begin
       increment=0;
       Counter=9900;
       end
    2'b11 :begin
       increment=0;
       Counter=Counter*100;
       end
    endcase
    
     digit1= Counter/1000;
     digit2= (Counter%1000)/100;
     digit3= (Counter%100)/10;
     digit4= (Counter%10)/1;
    
    
    
    
    

end










    if(running)begin
        FastCounter= FastCounter+1;
        if(FastCounter>1000000)begin
            if(increment)
              Counter=Counter+1;
            else
              Counter=Counter-1; 
           digit1= Counter/1000;
            digit2= (Counter%1000)/100;
            digit3= (Counter%100)/10;
            digit4= (Counter%10)/1;
            FastCounter=0;
           if(((Counter==9999)&&(increment==1))||((Counter==0)&&(increment==0)))
              running=0;
              end
              end
             
    

end


     hexto7segment c1 (.x(digit4), .r(in0));
     hexto7segment c2 (.x(digit3), .r(in1));
     hexto7segment c3 (.x(digit2), .r(in2));
     hexto7segment c4 (.x(digit1), .r(in3));

    
    clkdiv c5 (.clk(clk), .reset(reset), .slow_clk(slow_clk));
    
    time_mux_state_machine c6(
        .clk (slow_clk),
        .reset (reset),
        .in0 (in0),
        .in1 (in1),
        .in2 (in2),
        .in3 (in3),
        .an (an),
        .sseg (sseg),
        .dp(dp));    
    
endmodule
