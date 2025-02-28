module all_gates(input a,b, output not_y,and_y,or_y,nand_y,nor_y,xor_y,xnor_y);
	assign not_y=~a;
	assign and_y=a&b;
	assign or_y=a|b;
	assign nand_y=~(a&b);
	assign nor_y=~(a|b);
	assign xor_y=a^b;
	assign xnor_y=~(a^b);
endmodule
