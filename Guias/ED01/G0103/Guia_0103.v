/*
  Guia_0103.v
  855947 - Antonio Drumond Cota de Sousa
*/

module Guia_0103;

 //define data
 integer x = 61;
 reg [9:0] b = 0;

 //actions
 initial
  begin:main
	 $display("Guia0103 - Questao 03b");

   b = x;
   $display("%d = %8b (4)", x, b);

   x = 53;
   b = x;
   $display("%d = %o (8)", x, b);

   x = 77;
   b = x;
   $display("%d = %h (16)", x, b);

   x = 153;
   b = x;
   $display("%d = %h (16)", x, b);

   x = 753;
   b = x;
   $display("%d = %X (16)", x, b);

   end
endmodule
