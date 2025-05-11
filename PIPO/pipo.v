module pipo(input [3:0]pi, input clk,rst, output reg [3:0]po);
always@(posedge clk or posedge rst)
begin
	if(rst) begin
		po<=4'b0000;
	end
	else begin
		po<=pi;
	end
end
endmodule

module pipo_tb;
reg [3:0]pi;
reg clk = 0, rst;
wire [3:0]po;
pipo dut(pi,clk,rst,po);
always #5 clk=~clk;
initial begin
	rst = 1;
	#3 rst = 0;
end
initial begin
	$monitor("Inputs: pi = %b, Outputs: po = %b", pi,po);
end
initial begin
	pi <= 4'b1010;
	#50 $finish;
end
endmodule

