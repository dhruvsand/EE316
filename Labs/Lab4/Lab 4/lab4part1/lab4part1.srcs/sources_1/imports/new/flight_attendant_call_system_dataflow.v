`timescale 1ns / 1ps

module flight_attendant_call_system_dataflow(
    input wire clk,
    input wire call_button,
    input wire cancel_button,
    output reg light_state
    );
        
    wire next_state;

    assign next_state= call_button|(~cancel_button&light_state);

    always@(posedge clk) begin   
        light_state<=next_state;
    end  
endmodule