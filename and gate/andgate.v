module and_dut1(input a,b, output y);
	assign y=a&b;
endmodule

module and_tb;
	reg A,B;
	wire Y;
	
	and_dut1 a1(.a(A), .b(B), .y(Y));
initial
begin
	$monitor("Inputs: A=%b, B=%b, Output: Y=%b",A,B,Y);

	   A=0;	B=0;
	#5 A=0; B=1;
	#5 A=1; B=0;
	#5 A=1; B=1;

	#5 $finish;
end
endmodule 
