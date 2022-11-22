module multiplexer4x1(A,B,C);
	input [3:0] A;
	input [1:0] B;
	output C;
	
	assign C = A[B];
	
endmodule
