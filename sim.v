`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/31 23:21:45
// Design Name: 
// Module Name: sim
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


module SIM;
    reg  [3:0] BIN;
    reg        c0IN; //�����������������������
    reg  [3:0] A;
    reg  [3:0] B;
    reg        c0;
    reg  [3:0] select;
    wire [3:0] S;
    wire       c4;
    adder u1(A,B,c0,c4,S);
    initial begin
        c0IN=0;
        
        //����Ϊ���������
        A=4'b1101;
        BIN=4'b0101;
        select=4'b1111;//1111Ϊ��������0000Ϊ�ӷ���
        //�����������
        
        
        B=BIN ^ select; //��������ʵ��
        c0=c0IN | select;
        
    end
endmodule

