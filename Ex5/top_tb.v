//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name: Akshay Pal 
// Date: 9th June 2020
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps 

module top_tb (
	);

	parameter CLK_PERIOD = 10; 

	// Define registers and wires 
	reg clk;
	reg err;
	wire red;
	wire amber;
	wire green; 

	// Generate clock
	initial
	begin
		clk = 1'b0; 
		forever 
			#(CLK_PERIOD/2) clk = ~clk;
	end 

	// Tests
	initial begin
		err = 0; 
		#CLK_PERIOD
		if ({red, amber, green} != 3'b100) begin
			$display("*** TEST FAILED! Failed at first stage.***");
			err = 1;
		end 
		#CLK_PERIOD
		if ({red, amber, green} != 3'b110) begin
			$display("*** TEST FAILED! Failed at second stage.***");
			err = 1;
		end 
		#CLK_PERIOD
		if ({red, amber, green} != 3'b001) begin
			$display("*** TEST FAILED! Failed at third stage.***");
			err = 1;
		end 
		#CLK_PERIOD
		if ({red, amber, green} != 3'b010) begin
			$display("*** TEST FAILED! Failed at fourth stage.***");
			err = 1;
		end 
		#CLK_PERIOD
		if ({red, amber, green} != 3'b100) begin
			$display("TEST FAILED! Failed at fifth stage.***");
			err = 1; 
		end 
	end 

	// Finish criteria 
	initial begin
		#160
		if (err == 0)
			$display("***TEST PASSED! :) ***");
		$finish;
	end 

	// Instantiate Traffic Lights Module
	
	lights top (
		.clk (clk),
		.red (red),
		.amber (amber),
		.green (green)
	); 

endmodule
