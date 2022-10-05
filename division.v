module division(D,V,Q,R,Z);

	input [2:0] D; 
	input [1:0] V;
	output [2:0] Q;
	output [1:0] R;
	output Z;
	// QUOTIENT
	assign Q[2] = D[2]&&(!V[1])&&V[0];
	assign Q[1] = (D[2]&&V[1]&&(!V[0]))||(D[2]&&D[1]&&V[0])||(D[1]&&(!V[1])&&V[0]);
	assign Q[0] = (D[1]&&V[1]&&(!V[0])) || (D[0]&&V[0]&&(!V[1])) || (D[0]&&V[0]&&(!D[1])&&D[2]) || 
	(D[0]&&V[0]&&D[1]&&(!D[2])) || (D[0]&&V[0]&&V[1]&&D[2]&&(!D[1]));
	// REMAINDER
	assign R[1] = ((!D[2])&&D[1]&&(!D[0])&&V[1]&&V[0]) || (D[2]&&(!D[1])&&D[0]&&V[1]&&V[0]);
	assign R[0] = (D[0]&&V[1]&&(!V[0])) || (D[2]&&D[1]&&D[0]&&V[1]) || (D[2]&&D[1]&&V[1]&&V[0]);
	// FLAG
	assign Z = (!V[0])&&(!V[1]);
endmodule
