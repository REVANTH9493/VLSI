`include "all_gates.v"
module tb;
	reg p,q;
	wire A,B,C,D,E,F,G;
	all_gates a1(.a(p), .b(q), .not_y(A), .and_y(B), .or_y(C), .nand_y(D), .nor_y(E), .xor_y(F), .xnor_y(G));

initial begin	
	$monitor("Inputs: a=%b,b=%b Outputs: not=%b, and=%b, or=%b, nand=%b, nor=%b, xor=%b, xnor=%b",p,q,A,B,C,D,E,F,G);
	#1 p=0;	q=0;
	#5 p=0;	q=1;
	#5 p=1; q=0;
	#5 p=1; q=1;
	#5 $finish;
end
endmodule
