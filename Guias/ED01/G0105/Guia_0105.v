/*
	Guia_0105.v
	855947 - Antonio Drumond Cota de Sousa
*/

module Guia_0105;

	//define data
	reg[0:7][7:0] a = "PUC-M.G.";
	reg[0:6][7:0] b = "2024-02";
	reg[0:13][7:0] c = "Belo Horizonte";
	reg[0:4][7:0] d = {8'o156, 8'o157, 8'o151, 8'o164, 8'o145};
	reg[0:4][7:0] e = {8'h4D, 8'h61, 8'h6E, 8'h68, 8'h61};

	//actions
	initial
		begin:main
		$diplay("Guia0105 - Questao 05b");

		$display("a.) %s = %x", a, a);

		$display("b.) %s = %x", b, b);

		$display("c.) %s = %14b", c, c);

		$display("d.) %o = %s", d, d);

		$display("e.) %X = %s", e, e);

		end
endmodule
