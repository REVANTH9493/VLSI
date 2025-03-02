`include "design.v"
module tb;
	reg[2:0] B;
	wire Y;
//Instantiation
	parity_bit dut(.a(B[2]), .b(B[1]), .c(B[0]), .y(Y));
reg clk;
reg rst;

initial begin
	clk=0;
	rst=1;
	#20;
	rst=0;
end

always begin
	#10 clk=~clk;
end

reg[3:0]i;
always@(posedge clk, posedge rst) begin
	if (rst) begin
	i=0;
	end else begin 
	B<=i;
	#20;
	i=i+1;
	if (i==8) $finish;
end
	$monitor("%d, Input = %b, Output = %b ",$time,B,Y);
end
endmodule
