`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:04 06/21/2018 
// Design Name: 
// Module Name:    add 
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
module add(CLK,nRST,add_begin,ADD_1,ADD_2,SUM,add_over);
	input	CLK;
	input nRST;
	input add_begin;
	input [7:0] ADD_1;
	input	[7:0] ADD_2;
	output [7:0] SUM;	
	output add_over;
	reg add_over;

	reg [7:0]sum_r ;
	always@(posedge CLK or negedge nRST)
	begin
		if(!nRST)
			sum_r <= 8'b0;
		else begin
			if(add_begin) begin
				sum_r <= ADD_1 + ADD_2;
				add_over <= #1 1'b1;
			end
			else ;
		end
	end
	
	assign  SUM = (sum_r > 9'd255)? (sum_r - 8'd255):sum_r[7:0];
endmodule
