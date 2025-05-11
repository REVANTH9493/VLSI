module piso(input [3:0]pi, input clk,mode,output so);
reg [3:0]q;
always@(posedge clk) 
begin
	if(mode) begin
		q <= pi;
	end
	else begin
		q[3] <= 1'bx;
		q[2] <= q[3];
		q[1] <= q[2];
		q[0] <= q[1];
		end
end
assign so=q[0];
endmodule

module piso_tb;
reg [3:0]pi;
reg mode,clk;
wire so;
piso dut(pi,clk,mode,so);
always #5 clk = ~clk;
initial begin
	$monitor("Inputs: pi = %b, mode = %b, Outputs: so = %b", pi,mode,so);
end

initial begin
	pi = 4'b1010;
	mode = 1;
	#5;
	mode = 0;
	#50 $finish;
end
endmodule


