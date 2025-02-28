module or_dut1(input a,b, output y);
	assign y=a||b;
endmodule

module or_tb;
	reg A,B;
	wire Y;
	
	or_dut1 a1(.a(A), .b(B), .y(Y));
initial
begin
	$monitor("Inputs: A=%d, B=%d, Y=%d", A,B,Y);

	A=0;	B=0;
	#5 A=0; B=1;
	#5 A=1; B=0;
	#5 A=1; B=1;
	#5 $finish;
end
endmodule
