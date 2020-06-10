//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name: Akshay Pal
// Date: 9th June 2020
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module lights (
	input clk,
	output reg red,
	output reg amber,
	output reg green
	);

	always @ (posedge clk) begin
		case({red,amber,green})
			3'b100: begin //if red light then move to red + amber 
				amber = 1;
			end 
			3'b110: begin //if red and amber then move to only green
				red = 0;
				amber = 0; 
				green = 1; 
			end 
			3'b001: begin //if only green move to only amber 
				amber = 1;
				green = 0; 
			end 
			3'b010: begin //if only amber move to only red 
				red = 1;
				amber = 0; 
			end 
			default: begin //default covers any other combination and sets it to red 
				red = 1;
				amber = 0;
				green = 0; 
			end 
		endcase
	end 
endmodule
			 
				
 


	



