module siso(input clk,rst, si, output so);
reg [3:0]d = 0;
always@(posedge clk or posedge rst)
begin
	if (rst) begin
		d[0] <=0;
	end
	else
		begin
		d[3] <= si;
		d[2] <= d[3];
		d[1] <= d[2];
		d[0] <= d[1];
	end

end
assign so = d[0];
endmodule

module siso_tb;
reg clk=0, rst=0, si;
wire so;
siso dut(clk, rst, si, so);

initial begin
	$monitor("Inputs: si = %b, Outputs: so = %b", si, so);
end

initial begin	
	si = 1;
	#5 si = 0;
	#5 si = 0;
	#5 si = 1;
end
initial begin
	clk = 0;
	forever #5 clk = ~clk;
end


initial begin
	#100 $finish;
end

endmodule

