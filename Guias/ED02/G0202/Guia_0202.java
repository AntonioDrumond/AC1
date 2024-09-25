/*
	Guia_0202
	855947 - Antonio Drumond Cota de Sousa
*/
public class Guia_0202{
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

	public static char[] double2bin(double x){
		char
		int maxP = 0;
		while(Math.pow(2, maxP) < )
	}

	public static void main(String[] args){
		System.out.println("Guia_0202 - Questao 02c\n");

	}
}
