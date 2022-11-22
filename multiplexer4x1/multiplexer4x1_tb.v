`timescale 1ns / 1ns
`include "multiplexer4x1.v"

module multiplexer4x1_tb;
	
reg [3:0] A;
reg [1:0] B;
wire  C;

multiplexer4x1 uut(A,B,C);

initial
	$monitor($time,"ns  INPUT = %b , SELECTION = %b , OUTPUT = %b " , A,B,C);
initial begin
	$dumpfile("multiplexer4x1_tb.vcd");
	$dumpvars(0,multiplexer4x1_tb);
	
	A = 0; B = 0 ; #10;
	A = 0; B = 1 ; #10;
	A = 0; B = 2 ; #10;
	A = 0; B = 3 ; #10;
	A = 1; B = 0 ; #10;
	A = 1; B = 1 ; #10;
	A = 1; B = 2 ; #10;
	A = 1; B = 3 ; #10;
	A = 2; B = 0 ; #10;
	A = 2; B = 1 ; #10;
	A = 2; B = 2 ; #10;
	A = 2; B = 3 ; #10;
	A = 3; B = 0 ; #10;
	A = 3; B = 1 ; #10;
	A = 3; B = 2 ; #10;
	A = 3; B = 3 ; #10;
	A = 4; B = 0 ; #10;
	A = 4; B = 1 ; #10;
	A = 4; B = 2 ; #10;
	A = 4; B = 3 ; #10;
	A = 5; B = 0 ; #10;
	A = 5; B = 1 ; #10;
	A = 5; B = 2 ; #10;
	A = 5; B = 3 ; #10;
	A = 6; B = 0 ; #10;
	A = 6; B = 1 ; #10;
	A = 6; B = 2 ; #10;
	A = 6; B = 3 ; #10;
	A = 7; B = 0 ; #10;
	A = 7; B = 1 ; #10;
	A = 7; B = 2 ; #10;
	A = 7; B = 3 ; #10;
	A = 8; B = 0 ; #10;
	A = 8; B = 1 ; #10;
	A = 8; B = 2 ; #10;
	A = 8; B = 3 ; #10;
	A = 9; B = 0 ; #10;
	A = 9; B = 1 ; #10;
	A = 9; B = 2 ; #10;
	A = 9; B = 3 ; #10;
	A = 10; B = 0 ; #10;
	A = 10; B = 1 ; #10;
	A = 10; B = 2 ; #10;
	A = 10; B = 3 ; #10;
	A = 11; B = 0 ; #10;
	A = 11; B = 1 ; #10;
	A = 11; B = 2 ; #10;
	A = 11; B = 3 ; #10;
	A = 12; B = 0 ; #10;
	A = 12; B = 1 ; #10;
	A = 12; B = 2 ; #10;
	A = 12; B = 3 ; #10;
	A = 13; B = 0 ; #10;
	A = 13; B = 1 ; #10;
	A = 13; B = 2 ; #10;
	A = 13; B = 3 ; #10;
	A = 14; B = 0 ; #10;
	A = 14; B = 1 ; #10;
	A = 14; B = 2 ; #10;
	A = 14; B = 3 ; #10;
	A = 15; B = 0 ; #10;
	A = 15; B = 1 ; #10;
	A = 15; B = 2 ; #10;
	A = 15; B = 3 ; #10;
	
	$display("Test completed ");	
end
endmodule