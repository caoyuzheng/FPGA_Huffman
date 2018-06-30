`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:31 06/20/2018 
// Design Name: 
// Module Name:    sort 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sort(CLK,nRST,sort_begin,FREQUENT_IN,sort_over,FREQUENT_OUT);

	input CLK;
	input nRST;
	input sort_begin;
	input [129:0] FREQUENT_IN;
	output sort_over;
	output [129:0] FREQUENT_OUT;
	
	wire [12:0] weight_0;
	wire [12:0] weight_1;
	wire [12:0] weight_2;
	wire [12:0] weight_3;
	wire [12:0] weight_4;
	wire [12:0] weight_5;
	wire [12:0] weight_6;
	wire [12:0] weight_7;
	wire [12:0] weight_8;
	wire [12:0] weight_9;
	
	assign weight_0[12:0] = FREQUENT_IN[12:0];
	assign weight_1[12:0] = FREQUENT_IN[25:13];
	assign weight_2[12:0] = FREQUENT_IN[38:26];
	assign weight_3[12:0] = FREQUENT_IN[51:39];
	assign weight_4[12:0] = FREQUENT_IN[64:52];
	assign weight_5[12:0] = FREQUENT_IN[77:65];
	assign weight_6[12:0] = FREQUENT_IN[90:78];
	assign weight_7[12:0] = FREQUENT_IN[103:91];
	assign weight_8[12:0] = FREQUENT_IN[116:104];
	assign weight_9[12:0] = FREQUENT_IN[129:117];
	
	bubble_sort sort(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(sort_begin),
		.node0(weight_0),
		.node1(weight_1),
		.node2(weight_2),
		.node3(weight_3),
		.node4(weight_4),
		.node5(weight_5),
		.node6(weight_6),
		.node7(weight_7),
		.node8(weight_8),
		.node9(weight_9),
		.sort_over(sort_over),
		.SORT_RESULT(FREQUENT_OUT[129:0])
	);
endmodule
