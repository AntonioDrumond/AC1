/*
	Guia_0104
	855947 - Antonio Drumond Cota de Sousa
*/
public class Guia_0104{

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

	public static char[] dec2qua(int x){
		int buffer = x;
		char[] result = new char[8];
		for(int i=result.length-1; i>=0; i--){
			int p = (int)Math.pow(4,i);
			if(buffer >= p*3){
				buffer -= p*3;
				result[i] = '3';
			}
			else if(buffer >= p*2){
				buffer -= p*2;
				result[i] = '2';
			}
			else if(buffer >= p){
				buffer -= p;
				result[i] = '1';
			}
			else result [i] = '0';
		}
		return result;
	}

	public static char[] dec2oct(int x){
		int buffer = x;
		char[] result = new char[8];
		for(int i=result.length-1; i>=0; i--){
			int p = (int)Math.pow(8,i);
			if(buffer >= p*7){
				buffer -= p*7;
				result[i] = '7';
			}
			else if(buffer >= p*6){
				buffer -= p*6;
				result[i] = '6';
			}
			else if(buffer >= p*5){
				buffer -= p*5;
				result[i] = '5';
			}
			else if(buffer >= p*4){
				buffer -= p*4;
				result[i] = '4';
			}
			else if(buffer >= p*3){
				buffer -= p*3;
				result[i] = '3';
			}
			else if(buffer >= p*2){
				buffer -= p*2;
				result[i] = '2';
			}
			else if(buffer >= p*1){
				buffer -= p*1;
				result[i] = '1';
			}
			else result[i] = '0';
		}
		return result;
	}

	public static char[] dec2hex(int x){
		int buffer = x;
		char[] result = new char[4];
		for(int i=result.length-1; i>=0; i--){
			int p = (int)Math.pow(16,i);
			if(buffer >= p*15){
				buffer -= p*15;
				result[i] = 'F';
			}
			else if(buffer >= p*14){
				buffer -= p*14;
				result[i] = 'E';
			}
			else if(buffer >= p*13){
				buffer -= p*13;
				result[i] = 'D';
			}
			else if(buffer >= p*12){
				buffer -= p*12;
				result[i] = 'C';
			}
			else if(buffer >= p*11){
				buffer -= p*11;
				result[i] = 'B';
			}
			else if(buffer >= p*10){
				buffer -= p*10;
				result[i] = 'A';
			}
			else if(buffer >= p*9){
				buffer -= p*9;
				result[i] = '9';
			}
			else if(buffer >= p*8){
				buffer -= p*8;
				result[i] = '8';
			}
			else if(buffer >= p*7){
				buffer -= p*7;
				result[i] = '7';
			}
			else if(buffer >= p*6){
				buffer -= p*6;
				result[i] = '6';
			}
			else if(buffer >= p*5){
				buffer -= p*5;
				result[i] = '5';
			}
			else if(buffer >= p*4){
				buffer -= p*4;
				result[i] = '4';
			}
			else if(buffer >= p*3){
				buffer -= p*3;
				result[i] = '3';
			}
			else if(buffer >= p*2){
				buffer -= p*2;
				result[i] = '2';
			}
			else if(buffer >= p*1){
				buffer -= p*1;
				result[i] = '1';
			}
			else result[i] = '0';
		}
		return result;
	}

	public static void main(String[] args){
		System.out.println("Guia_0104 - Questao 04c");

		System.out.printf("\na.) 10100(2) = ");
		byte ay[] = {1,0,1,0,0};
		char[] result = dec2qua(bin2dec(ay));
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}
		System.out.print("(4)");

		System.out.printf("\nb.) 11010(2) = ");
		byte by[] = {1,1,0,1,0};
		result = dec2oct(bin2dec(by));
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}
		System.out.print("(8)");

		System.out.printf("\nc.) 100111(2) = ");
		byte cy[] = {1,0,0,1,1,1};
		result = dec2hex(bin2dec(cy));
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}
		System.out.print("(16)");

		System.out.printf("\nd.) 100101(2) = ");
		byte dy[] = {1,0,0,1,0,1};
		result = dec2oct(bin2dec(dy));
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}
		System.out.print("(8)");

		System.out.printf("\ne.) 101101(2) = ");
		byte ey[] = {1,0,1,1,0,1};
		result = dec2qua(bin2dec(ey));
		for(int i=result.length-1; i>=0; i--){
			System.out.print(result[i]);
		}
		System.out.print("(4)");

	}
}
