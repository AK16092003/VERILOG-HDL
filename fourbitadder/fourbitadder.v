module halfadder(A,B,S,C);
	input A;
	input B;
	output S;
	output C;
	
	assign S = A^B;
	assign C = A&B;
endmodule

module fulladder(A,B,C,S,c);
	input A;
	input B;
	input C;
	output S;
	output c;
	
	assign S = A^B^C;
	assign c = A&B | B&C | A&C;
endmodule


module fourbitadder(A,B,C);

	input [3:0] A; 
	input [3:0] B;
	output [3:0] C;
	
	wire c1 , c2 , c3 , c4;
	
	halfadder HA1(A[0] , B[0] , C[0] , c1);
	fulladder FA1(A[1] , B[1] , c1 , C[1] , c2);
	fulladder FA2(A[2] , B[2] , c2 , C[2] , c3);
	fulladder FA3(A[3] , B[3] , c3 , C[3] , c4);
	
	
endmodule
