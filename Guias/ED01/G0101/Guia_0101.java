/*
	Guia_0101
	855947 - Antonio Drumond Cota de Sousa
*/
public class Guia_0101{
	public static byte[] dec2bin(int x){
		byte[] result = new byte[12];
		int buffer = x;
		for(int i=result.length; i>=0 && buffer>0; i--){
			if(buffer>=Math.pow(2, i)){
				buffer -= Math.pow(2, i);
				result[i] = 1;
			}
		}
		return result;
	}

	public static void main(String[] args){
		System.out.println("Guia_0101 - Questao 01c");

		System.out.printf("\na.) Decimal: %d\n    Binario: ", 26);
		byte[] result = dec2bin(26);
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}
		
		System.out.printf("\nb.) Decimal: %d\n    Binario: ", 53);
		result = dec2bin(53);
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}

		System.out.printf("\nc.) Decimal: %d\n    Binario: ", 713);
		result = dec2bin(713);
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}

		System.out.printf("\nd.) Decimal: %d\n    Binario: ", 213);
		result = dec2bin(213);
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}

		System.out.printf("\ne.) Decimal: %d\n    Binario: ", 365);
		result = dec2bin(365);
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}

	}
}
