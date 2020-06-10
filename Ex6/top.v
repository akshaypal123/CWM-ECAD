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

