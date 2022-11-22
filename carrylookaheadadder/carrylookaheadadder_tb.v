`timescale 1ns / 1ns
`include "carrylookaheadadder.v"

module carrylookaheadadder_tb;
	
reg [3:0] A;
reg [3:0] B;
wire [3:0] S;

carrylookaheadadder uut(A,B,S);

initial
	$monitor($time,"ns  A = %d ,B = %d , SUM = %d " , A,B,S);
initial begin
	$dumpfile("carrylookaheadadder_tb.vcd");
	$dumpvars(0,carrylookaheadadder_tb);
	
	A = 0; B = 0; #20;
	A = 0; B = 1; #20;
	A = 0; B = 2; #20;
	A = 0; B = 3; #20;
	A = 0; B = 4; #20;
	A = 0; B = 5; #20;
	A = 0; B = 6; #20;
	A = 0; B = 7; #20;
	A = 1; B = 0; #20;
	A = 1; B = 1; #20;
	A = 1; B = 2; #20;
	A = 1; B = 3; #20;
	A = 1; B = 4; #20;
	A = 1; B = 5; #20;
	A = 1; B = 6; #20;
	A = 1; B = 7; #20;
	A = 2; B = 0; #20;
	A = 2; B = 1; #20;
	A = 2; B = 2; #20;
	A = 2; B = 3; #20;
	A = 2; B = 4; #20;
	A = 2; B = 5; #20;
	A = 2; B = 6; #20;
	A = 2; B = 7; #20;
	A = 3; B = 0; #20;
	A = 3; B = 1; #20;
	A = 3; B = 2; #20;
	A = 3; B = 3; #20;
	A = 3; B = 4; #20;
	A = 3; B = 5; #20;
	A = 3; B = 6; #20;
	A = 3; B = 7; #20;
	A = 4; B = 0; #20;
	A = 4; B = 1; #20;
	A = 4; B = 2; #20;
	A = 4; B = 3; #20;
	A = 4; B = 4; #20;
	A = 4; B = 5; #20;
	A = 4; B = 6; #20;
	A = 4; B = 7; #20;
	A = 5; B = 0; #20;
	A = 5; B = 1; #20;
	A = 5; B = 2; #20;
	A = 5; B = 3; #20;
	A = 5; B = 4; #20;
	A = 5; B = 5; #20;
	A = 5; B = 6; #20;
	A = 5; B = 7; #20;
	A = 6; B = 0; #20;
	A = 6; B = 1; #20;
	A = 6; B = 2; #20;
	A = 6; B = 3; #20;
	A = 6; B = 4; #20;
	A = 6; B = 5; #20;
	A = 6; B = 6; #20;
	A = 6; B = 7; #20;
	A = 7; B = 0; #20;
	A = 7; B = 1; #20;
	A = 7; B = 2; #20;
	A = 7; B = 3; #20;
	A = 7; B = 4; #20;
	A = 7; B = 5; #20;
	A = 7; B = 6; #20;
	A = 7; B = 7; #20;
	
	
	$display("Test completed ");	
end
endmodule