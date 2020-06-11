//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name: Akshay Pal
// Date: 11th June 2020
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory.
//
//  inputs:
//           clk, a[2:0], b[2:0], read
//
//  outputs:
//           result[4:0]
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module multiplier (
	input clk,	
	input [2:0] a,
	input [2:0] b, 
	input read,
	output [4:0] result
	);


