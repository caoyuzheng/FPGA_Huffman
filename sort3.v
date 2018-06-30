`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:55 06/21/2018 
// Design Name: 
// Module Name:    sort3 
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
module sort3(CLK,nRST,sort_begin,node1,node2,node3,new1,new2,new3,sort_over);
	input	CLK;
	input	nRST;
	input sort_begin;
	input [12:0] node1;
	input [12:0] node2;
	input [12:0] node3;
	output [12:0] new1;
	output [12:0] new2;
	output [12:0] new3;
	output sort_over;
	reg sort_over;
	
	reg [12:0] new1;
	reg [12:0] new2;
	reg [12:0] new3;
	
	reg [12:0] temp;

	wire [12:0] temp1;
	wire [12:0] temp2;
	wire sort2_over;
	
	sort2 s2_1(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(sort_begin),
		.node1(node1),
		.node2(node2),
		.new1(temp1),
		.new2(temp2),
		.sort_over(sort2_over)
	);
	
	always @(posedge CLK or negedge nRST)
	begin
		if(!nRST)
			begin
			new1 <= 13'b0;
			new2 <= 13'b0;
			new3 <= 13'b0;
			end
		else
			begin
			if(sort2_over) begin
			temp <= node3;
			if(temp[12:5] <= temp1[12:5])
				begin
				new1 <= temp;
				new2 <= temp1;
				new3 <= temp2;
				end
			else if(temp[12:5] > temp1[12:5] && temp[12:5] <= temp2[12:5])
				begin
				new1 <= temp1;
				new2 <= temp;
				new3 <= temp2;
				end
			else
				begin
				new1 <= temp1;
				new2 <= temp2;
				new3 <= temp;
				end
			sort_over <= #1 1'b1;
			end
			else ;
			end
	end
	
endmodule
