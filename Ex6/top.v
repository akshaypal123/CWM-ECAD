//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name: Akshay Pal
// Date: 10th June 2020
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module multiplexer (
	input rst,
	input clk,
	input button,
	input sel,
	output wire [2:0] result
	);

	// Registers and wires
	wire red;
	wire amber;
	wire green;
	wire [2:0] throw;

	// Instantiate Dice Module 
	electronic_dice dice (
		.clk (clk),
		.rst (rst),
		.button (button),
		.throw (throw [2:0])
		);
	// Instantiate Traffic Lights
	lights lights (
		.clk (clk),
		.red (red),
		.amber (amber),
		.green (green)
		);

	// Instantiate Multiplexer
	mux multiplexer (
		.a (throw[2:0]),
		.b ({red, amber, green}),
		.sel (sel),
		.out (result [2:0])
		);

endmodule

