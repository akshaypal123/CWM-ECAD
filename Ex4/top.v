//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name: Akshay Pal
// Date: 9th June 2020
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module electronic_dice(
	input clk,
	input rst,
	input button,
	output reg [2:0] throw
	);

	always @ (posedge clk or posedge rst) 
		if (rst) 
			throw <= 0;
		else 
			if (button)
				if (throw < 6)  
					throw <= throw + 1;
				else 
					throw <= 1;
			else 
				throw <= throw;

endmodule 
