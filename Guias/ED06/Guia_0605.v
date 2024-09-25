// 855947 - Antonio Drumond Cota de Sousa

module OPERATION(output s, input x, input y, input z);
	assign s = ~x | (y & z);
endmodule

module Guia_0605;
	
	integer counter;
	reg x,y,z;
	wire s;
	OPERATION op(s,x,y,z);

	initial begin:main;
		x=0; y=0; z=0; counter = 0;
		$display("Tabela verdade exercicio 5:");
		$monitor("%0d | %b %b %b | %b", counter,x,y,z,s);
#1 z=1; counter++;
#1 z=0; y=1; counter++;
#1 z=1; y=1; counter++;
#1 z=0; y=0; x=1; counter++;
#1 z=1; y=0; counter++;
#1 z=0; y=1; counter++;
#1 z=1; counter++;
	end
endmodule
