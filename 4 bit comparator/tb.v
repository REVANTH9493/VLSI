`include "design.v"
module tb;
	reg [3:0]a;
	reg [3:0]b;
	wire E,G,L;
comparator dut(.A(a), .B(b), .AeB(E), .AgB(G), .AlB(L));

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

reg[3:0] i;
always@(posedge clk, posedge rst) begin
	if (rst) begin
	i=0;
	end
	else begin
	a<=$random%16;
	b<=$random%16;
	#20;
	i=i+1;
	if (i==10) $finish;
	end
$monitor("%d: a=%b, b=%b, E=%b, G=%b, L=%b", $time,a,b,E,G,L);
end
endmodule
