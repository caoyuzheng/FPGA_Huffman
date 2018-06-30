`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:08 06/21/2018 
// Design Name: 
// Module Name:    bubble_sort 
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
module bubble_sort(CLK,nRST,sort_begin,node0,node1,node2,node3,node4,node5,node6,node7,node8,node9,sort_over,SORT_RESULT);
	input	CLK;
	input	nRST;
	input sort_begin;
	input [12:0] node0;
	input [12:0] node1;
	input [12:0] node2;
	input [12:0] node3;
	input [12:0] node4;
	input [12:0] node5;
	input [12:0] node6;
	input [12:0] node7;
	input [12:0] node8;
	input [12:0] node9;
	
	output sort_over;
	output [129:0] SORT_RESULT;
	reg sort_over;
	
	reg [12:0] temp;
	wire [12:0] temp1;
	wire [12:0] temp2;
	wire [12:0] temp3;
	wire [12:0] temp4;
	wire [12:0] temp5;
	wire [12:0] temp6;
	wire [12:0] temp7;
	wire [12:0] temp8;
	wire [12:0] temp9;
	wire sort9_over;
	
	reg [12:0] new1;
	reg [12:0] new2;
	reg [12:0] new3;
	reg [12:0] new4;
	reg [12:0] new5;
	reg [12:0] new6;
	reg [12:0] new7;
	reg [12:0] new8;
	reg [12:0] new9;
	reg [12:0] new10;
	
	sort9 s9_1(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(sort_begin),
		.node0(node0),
		.node1(node1),
		.node2(node2),
		.node3(node3),
		.node4(node4),
		.node5(node5),
		.node6(node6),
		.node7(node7),
		.node8(node8),
		.new1(temp1),
		.new2(temp2),
		.new3(temp3),
		.new4(temp4),
		.new5(temp5),
		.new6(temp6),
		.new7(temp7),
		.new8(temp8),
		.new9(temp9),
		.sort_over(sort9_over)
	);
	always @(posedge CLK or negedge nRST)
	begin
		if(!nRST)
			begin
			new1 <= 13'b0;
			new2 <= 13'b0;
			new3 <= 13'b0;
			new4 <= 13'b0;
			new5 <= 13'b0;
			new6 <= 13'b0;
			new7 <= 13'b0;
			new8 <= 13'b0;
			new9 <= 13'b0;
			new10 <= 13'b0;
			end
		else
			begin
			if(sort9_over) begin
			temp <= node9;
			if(temp[12:5] <= temp1[12:5])
				begin
				new1 <= temp;
				new2 <= temp1;
				new3 <= temp2;
				new4 <= temp3;
				new5 <= temp4;
				new6 <= temp5;
				new7 <= temp6;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp1[12:5] && temp[12:5] <= temp2[12:5])
				begin
				new1 <= temp1;
				new2 <= temp;
				new3 <= temp2;
				new4 <= temp3;
				new5 <= temp4;
				new6 <= temp5;
				new7 <= temp6;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp2[12:5] && temp[12:5] <= temp3[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp;
				new4 <= temp3;
				new5 <= temp4;
				new6 <= temp5;
				new7 <= temp6;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp3[12:5] && temp[12:5] <= temp4[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp;
				new5 <= temp4;
				new6 <= temp5;
				new7 <= temp6;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp4[12:5] && temp[12:5] <= temp5[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp4;
				new5 <= temp;
				new6 <= temp5;
				new7 <= temp6;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp5[12:5] && temp[12:5] <= temp6[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp4;
				new5 <= temp5;
				new6 <= temp;
				new7 <= temp6;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp6[12:5] && temp[12:5] <= temp7[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp4;
				new5 <= temp5;
				new6 <= temp6;
				new7 <= temp;
				new8 <= temp7;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp7[12:5] && temp[12:5] <= temp8[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp4;
				new5 <= temp5;
				new6 <= temp6;
				new7 <= temp7;
				new8 <= temp;
				new9 <= temp8;
				new10 <= temp9;
				end
			else if(temp[12:5] > temp8[12:5] && temp[12:5] <= temp9[12:5])
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp4;
				new5 <= temp5;
				new6 <= temp6;
				new7 <= temp7;
				new8 <= temp8;
				new9 <= temp;
				new10 <= temp9;
				end
			else
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp3;
				new4 <= temp4;
				new5 <= temp5;
				new6 <= temp6;
				new7 <= temp7;
				new8 <= temp8;
				new9 <= temp9;
				new10 <= temp;
				end
			sort_over <= #1 1'b1;
			end
			else ;
			end
	end
	assign SORT_RESULT = {new10,new9,new8,new7,new6,new5,new4,new3,new2,new1};

endmodule
