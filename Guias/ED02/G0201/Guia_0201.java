/*
	Guia_0201
	855947 - Antonio Drumond Cota de Sousa
*/
public class Guia_0201{
	public static int indexOf(char[] arr, char target){
		int reps = arr.length;
		for(int i=0; i<reps; i++){
			if(arr[i]==target) return i;
		}
		return -1;
	}

	public static double bin2double(char[] bin){
		int comma = indexOf(bin, ',');
		if(comma == -1) comma = indexOf(bin, '.');
		double result = 0;
		int reps = bin.length,
			exp  = comma;
		for(int i=0; i<reps; i++){
			if(bin[i]=='1'){
				result += i<comma ? Math.pow(2,exp-1) : Math.pow(2, exp);
			}
			exp--;
		}
		return result;		
	}

	public static void main(String[] args){
		System.out.println("Guia_0201 - Questao 01c\n");

		char[] bin = "0,00011".toCharArray();
		System.out.println("a.) 0.00011 = " + bin2double(bin));

		bin = "0.01001".toCharArray();
		System.out.println("b.) 0.01001 = " + bin2double(bin));

		bin = "0.10101".toCharArray();
		System.out.println("b.) 0.10101 = " + bin2double(bin));

		bin = "1,11101".toCharArray();
		System.out.println("b.) 1.11101 = " + bin2double(bin));

		bin = "11.11001".toCharArray();
		System.out.println("b.) 11.11001 = " + bin2double(bin));

	}
}

// 1010,
