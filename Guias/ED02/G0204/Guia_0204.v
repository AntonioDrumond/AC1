// 855947 - Antonio Drumond Cota de Sousa

module Guia_0204;

	reg[7:0] i;
	reg[7:0] r;
	reg[8:0] oc;
	reg[11:0] hx;

	initial
		begin:main
			$display("Guia_0204 - Questao 04b\n");

			i = 0;
			r = 8'b11100100;
			$display("a.) 0.321 = %b", r);

			i = 0;
			hx = 12'h3d2;
			$display("b.) 0.%x = 0.%d%d%d%d%d%d", hx, hx[11:10], hx[9:8], hx[7:6], hx[5:4], hx[3:2], hx[1:0]);

			i = 0;
			oc = 9'o751;
			$display("c.) 0.%o = 0.%9b", oc, oc);

			i = 8'hF;
			hx = 12'hA5E;
			$display("e.) %x,%x = %d%d%d%d.%d%d%d%d%d%d", i, hx, i[7:6], i[5:4], i[3:2], i[1:0], hx[11:10], hx[9:8], hx[7:6], hx[5:4], hx[3:2], hx[1:0]);

		end
endmodule
