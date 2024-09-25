// 855947 - Antonio Drumond Cota de Sousa

module OPERATION(output s, input w, input x, input y, input z);
	assign s = x & (~w + ~x + ~z);
endmodule

module Guia_0606;
	
	integer counter;
	reg w,x,y,z;
	wire s;
	OPERATION op(s,w,x,y,z);

	initial begin:main;
		w=0; x=0; y=0; z=0; counter = 0;
		$display("Tabela verdade exercicio 6:");
		$display("m | w x y z | s");
		$monitor("%1d | %b %b %b %b | %b", counter, w,x,y,z,s);
#1 z=1; counter++;
#1 z=0; y=1; counter++;
#1 z=1; y=1; counter++;
#1 z=0; y=0; x=1; counter++;
#1 z=1; y=0; x=1; counter++;
#1 z=0; y=1; x=1; counter++;
#1 z=1; y=1; x=1; counter++;
#1 z=0; y=0; x=0; w=1; counter++;
#1 z=1; y=0; x=0; counter++;
#1 z=0; y=1; x=0; counter++;
#1 z=1; y=1; x=0; counter++;
#1 z=0; y=0; x=1; counter++;
#1 z=1; y=0; counter++;
#1 z=0; y=1; counter++;
#1 z=1; counter++;
	end
endmodule
