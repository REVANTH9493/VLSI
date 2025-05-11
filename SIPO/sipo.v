module sipo(input clk,rst,si, output reg [3:0]po);

always @ (posedge clk or posedge rst)
begin
	if(rst)
	begin
		po = 0;
	end
	else begin
	po[3] <= si;
	po[2] <= po[3];
	po[1] <= po[2];
	po[0] <= po[1];
end
end
endmodule


module sipo_tb;
reg clk=0, rst = 0, si;
wire [3:0]po;
sipo dut(clk,rst,si,po);

initial begin
	$monitor("Inputs: si = %b, Outputs: po = %b",si,po);
end

always #5 clk = ~clk;

initial begin
	rst = 1;
	#3 rst = 0;
end

initial begin
	si = 1;
	#10 si = 0;
	#10 si = 1;
	#10 si = 0;
	#10 $finish;
end
endmodule

