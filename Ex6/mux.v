//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name: Akshay Pal
// Date: 8th June 2020
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //define inputs here
	input clk,
	input sel,
    input [2:0] a,
    input [2:0] b,
    output reg [2:0] out
    );
    
    
    always @ (posedge clk) begin
		out = sel ? b:a;
	end             
endmodule
