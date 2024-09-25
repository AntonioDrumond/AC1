/*
	Guia_0102
	855947 - Antonio Drumond Cota de Sousa
*/
public class Guia_0102{
	public static int bin2dec(byte[] x){
		int size = x.length;
		int result = 0;
		int j = size-1;
		for(int i=0; i<size; i++){
			if(x[i]==1){
				result += Math.pow(2,j);
			}
			j--;
		}
		return result;
	}

	public static void main(String[] args){
		System.out.println("Guia_0102 - Questao 02c");

		byte a[] = {1, 0, 1, 0, 1};
		System.out.println("\na.) Binario: 10101\n    Decimal: " + bin2dec(a));

		byte b[] = {1, 1, 0, 1, 1};
		System.out.println("\nb.) Binario: 11011\n    Decimal: " + bin2dec(b));

		byte c[] = {1, 0, 0, 1, 0};
		System.out.println("\nc.) Binario: 10010\n    Decimal: " + bin2dec(c));

		byte d[] = {1, 0, 1, 0, 1, 1};
		System.out.println("\nd.) Binario: 101011\n    Decimal: " + bin2dec(d));

		byte e[] = {1, 1, 0, 1, 1, 1};
		System.out.println("\ne.) Binario: 110111\n    Decimal: " + bin2dec(e));

	}
}
