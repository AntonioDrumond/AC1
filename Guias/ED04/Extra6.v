module EXTRA6(output s1, input x, input y, input z);
	assign s1 = (~x|y|~z) & (x|~y|~z);
endmodule

module extra6;

	integer counter;
	reg x,y,z;
	wire s1;
	EXTRA6 fxyz_1(s1,x,y,z);

	initial begin:main;
		x=0; y=0; z=0; counter = 0;
		$display("Tabela verdade exercicio 6:");
		$monitor("%0d | %b %b %b | %b", counter,x,y,z,s1);
#1 z=1; counter++;
#1 z=0; y=1; counter++;
#1 z=1; y=1; counter++;
#1 z=0; y=0; x=1; counter++;
#1 z=1; y=0; counter++;
#1 z=0; y=1; counter++;
#1 z=1; counter++;
	end
endmodule
