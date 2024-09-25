module EXTRA7(output s2, input x1, input y1, input z1);
	assign s2 = (~x1 & ~y1 & z1) | (x1 & y1 & ~z1);
endmodule

module extra7;
	
	integer counter;
	reg x1,y1,z1;
	wire s2;
	EXTRA7 fxyz_2(s2,x1,y1,z1);

	initial begin:main;
		x1=0; y1=0; z1=0; counter = 0;
		$display("Tabela verdade exercicio 7:");
		$monitor("%0d | %b %b %b | %b", counter,x1,y1,z1,s2);
#1 z1=1; counter++;
#1 z1=0; y1=1; counter++;
#1 z1=1; y1=1; counter++;
#1 z1=0; y1=0; x1=1; counter++;
#1 z1=1; y1=0; counter++;
#1 z1=0; y1=1; counter++;
#1 z1=1; counter++;
	end
endmodule
