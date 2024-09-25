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
	mux2x1 MUX01(m1, a4, b4, se2);
	mux2x1 MUX02(m2, c4, d4, se2);
	mux2x1 MUX03(s3, m1, m2, se1);
endmodule

module mux8x1 (output s2, input i0, input i1, input i2, input i3, input i4, input i5, input i6, input i7, input ch1, input ch2, input ch3);
	wire mu1, mu2;
	mux4x1 MUX04(mu1, i0, i1, i2, i3, ch2, ch3);
	mux4x1 MUX05(mu2, i4, i5, i6, i7, ch2, ch3);
	mux2x1 MUX06(s2, mu1, mu2, ch1);
endmodule

module lu (output s1, input a1, input b1, input cho1, input cho2, input cho3);
	wire op0, op1, op2, op3, op4, op5, op6, op7;
	not NOT2(op0, a1);
	not NOT3(op1, b1);
	or OR2(op2, a1, b1);
	nor NOR1(op3, a1, b1);
	and AND3(op4, a1, b1);
	nand NAND1(op5, a1, b1);
	xor XOR1(op6, a1, b1);
	xnor XNOR1(op7, a1, b1);
	mux8x1 MUX7(s1, op0, op1, op2, op3, op4, op5, op6, op7, cho1, cho2, cho3);
endmodule

module testes;

	integer counter;
	reg a,b;
	reg sel1, sel2, sel3;
	wire s;
	lu LU(s, a, b, sel1, sel2, sel3);

	initial begin:main;
		a=0; b=0;
		sel1=0; sel2=0; sel3=0;
		counter=0;
		$display("Guia_07 - Questao 5");
		$display(" m | sel1 sel2 sel3 | a b | s");
		$monitor("%2d |  %b     %b     %b | %b %b | %b", counter, sel1, sel2, sel3, a, b, s);
		//sels 0 0 0
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;
		//sels 0 0 1;
#1 sel1=0; sel2=0; sel3=1; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 0 1 0;
#1 sel1=0; sel2=1; sel3=0; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 0 1 1;
#1 sel1=0; sel2=1; sel3=1; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 1 0 0
#1 sel1=1; sel2=0; sel3=0; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;
		//sels 1 0 1;
#1 sel1=1; sel2=0; sel3=1; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 1 1 0;
#1 sel1=1; sel2=1; sel3=0; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

		//sels 1 1 1;
#1 sel1=1; sel2=1; sel3=1; a=0; b=0; counter++;
#1 a=0; b=1; counter++;
#1 a=1; b=0; counter++;
#1 a=1; b=1; counter++;

	end
endmodule
