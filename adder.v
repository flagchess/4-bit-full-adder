`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/31 23:16:35
// Design Name: 
// Module Name: adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder(a,b,c0,c4,sum);  
 
	input [3:0] a,b;   //a，b为4位输入
	input c0;   //c0为进位输入
	
	output c4; 
	output [3:0] sum;
 
	assign {c4,sum} = a+b+c0;   //a+b+c0 加法操作
	//使用拼接运算符将c4、sum拼接，sum取结果中的低四位
 
endmodule
