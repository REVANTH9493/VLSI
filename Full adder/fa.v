module fa(input a,b,c, output sum,cout);
	assign sum=a^b^c;
	assign cout=(a&b)|(b&c)|(a&c);
endmodule

module fa_tb;
	reg A,B,C;
	wire S,Z;
	integer i;

	fa a1(.a(A), .b(B), .c(C), .sum(S), .cout(Z));
initial begin
	$monitor("Inputs: A=%d, B=%d, C=%d, Outputs: S=%d, Z=&d",A,B,C,S,Z);
	for (i=0;i<8;i=i+1)
begin
	{A,B,C}=i;
	#5;
end
end
endmodule

