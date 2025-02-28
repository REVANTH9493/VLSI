module mux4to1(
	input[1:0]s,
	input a,b,c,d,
	output y);
	always@(*) 
	begin
		case(s)
		2'b00=a;
		2'b01=b;
		2'b10=c;
		2'b11=d;
		default=0;
		endcase
	end
endmodule
