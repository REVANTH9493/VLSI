`include "mux4x1.v"
module tb;
	reg[1:0]sel;
	reg e,f,g,h;
	wire Y;
	mux4to1 a1(.s(sel), .a(e), .b(f), .c(g), .d(h), .y(Y));
initial begin
	$monitor("Inputs: a=%b, b=%b, c=%b, d=%b, Outputs: y=%b",e,f,g,h,Y);
	e=1; f=1; g=1; h=1;
	
 	sel= 2'b00; #10;
	sel= 2'b01; #10;
	sel= 2'b10; #10;
	sel= 2'b11; #10;

	#5 $finish;
end
endmodule

