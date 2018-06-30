`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:08 06/22/2018
// Design Name:   generate_tree
// Module Name:   C:/Users/magnifico/Desktop/FPGA/Huffman/Huffman/tree_test.v
// Project Name:  Huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generate_tree
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tree_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [129:0] frequent;
	reg count_over;

	// Outputs
	wire [27:0] node_1;
	wire [27:0] node_2;
	wire [27:0] node_3;
	wire [27:0] node_4;
	wire [27:0] node_5;
	wire [27:0] node_6;
	wire [27:0] node_7;
	wire [27:0] node_8;
	wire [27:0] node_9;
	wire [27:0] node_10;
	wire [27:0] node_11;
	wire [27:0] node_12;
	wire [27:0] node_13;
	wire [27:0] node_14;
	wire [27:0] node_15;
	wire [27:0] node_16;
	wire [27:0] node_17;
	wire [27:0] node_18;
	wire [27:0] node_19;
	wire tree_over;

	// Instantiate the Unit Under Test (UUT)
	generate_tree uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.frequent(frequent),
		.count_over(count_over),
		.node_1(node_1), 
		.node_2(node_2), 
		.node_3(node_3), 
		.node_4(node_4), 
		.node_5(node_5), 
		.node_6(node_6), 
		.node_7(node_7), 
		.node_8(node_8), 
		.node_9(node_9), 
		.node_10(node_10), 
		.node_11(node_11), 
		.node_12(node_12), 
		.node_13(node_13), 
		.node_14(node_14), 
		.node_15(node_15), 
		.node_16(node_16), 
		.node_17(node_17), 
		.node_18(node_18), 
		.node_19(node_19),
		.tree_over(tree_over)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		count_over = 1'b1;
		frequent = 130'h07923a81c38d9868a3241818b885822c0;

		// Wait 100 ns for global reset to finish
		#100;
      nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~ CLK;
      
endmodule

