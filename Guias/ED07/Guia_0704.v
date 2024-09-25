// Antonio Drumond Cota de Sousa - 855947

module mux2x1 (output s4, input a3, input b3, input c1);
	wire and1, and2, not1;
	not NOT1(not1, c1);
	and AND1(and1, a3, not1);
	and AND2(and2, b3, c1);
	or OR1(s4, and1, and2);
endmodule

module mux4x1 (output s3, input a4, input b4, input c4, input d4, input se1, input se2);
	wire m1, m2;
	mux2x1 MUX01(m1, a4, b4, se1);
	mux2x1 MUX02(m2, c4, d4, se1);
	mux2x1 MUX03(s3, m1, m2, se2);
endmodule

module xorxnorornor(output s1, input a1, input b1, input c2, input c3);
	wire xor2, xnor1, or2, nor2;
	xor XOR2(xor2, a1, b1);
	xnor XNOR2(xnor1, a1, b1);
	or OR2(or2, a1, b1);
	nor NOR2(nor2, a1, b1);
	mux4x1 MUX4X1(s1, nor2, xor2, or2, xnor1, c2, c3);
endmodule

module testes;

	integer counter;
	reg a,b;
	reg sel1, sel2;
	wire s;
	xorxnorornor ANON(s, a, b, sel1, sel2);

	initial begin:main;
		a=0; b=0;
		sel1=0; sel2=0;
		counter=0;
		$display("Guia_07 - Questao 4");
		$display(" m | sel1 sel2 | a b | s");
		$monitor("%2d |  %b     %b  | %b %b | %b", counter, sel1, sel2, a, b, s);
		//sels 0 0
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;
		//sels 0 1;
#1 sel1=0; sel2=1; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 1 0;
#1 sel1=1; sel2=0; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 1 1;
#1 sel1=1; sel2=1; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

	end
endmodule
