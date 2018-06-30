`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:19 06/21/2018 
// Design Name: 
// Module Name:    sort2 
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
module sort2(CLK,nRST,sort_begin,node1,node2,new1,new2,sort_over);
	input CLK;
	input nRST;
	input sort_begin;
	input [12:0] node1;
	input [12:0] node2;
	output [12:0] new1;
	output [12:0] new2;
	output sort_over;
	reg sort_over;
	
	reg [12:0] new1;
	reg [12:0] new2;
	
	reg [12:0] temp1;
	reg [12:0] temp2;
	
	always @ (posedge CLK or negedge nRST)
	begin 
		if(!nRST)
			begin
			new1 <= 13'b0;
			new2 <= 13'b0;
			temp1 <= 13'b0;
			temp2 <= 13'b0;
			end
		else
			begin
			if(sort_begin) begin
			temp1 <= node1;
			temp2 <= node2;
			if(temp1[12:5] > temp2[12:5])
				begin
				new1 <= node2;
				new2 <= node1;
				end
			else
				begin
				new2 <= node2;
				new1 <= node1;
				end
			sort_over <= #1 1'b1;
			end
			else ;
			end
	end
	
endmodule
