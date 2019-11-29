package sinregreso.Calculosmatematicos;

public class Calculos {
	
	private static int resultado;

	public static int metodoSuma(int num1, int num2){
		
		resultado = num1 + num2;
		
		return resultado;	
	}
	
	public static int metodoResta(int num1, int num2){
		
		resultado = num1 - num2;
		
		return resultado;	
	}
	
	public static int metodoProducto(int num1, int num2){
		
		resultado = num1 * num2;
		
		return resultado;	
	}
	
	public static int metodoCociente(int num1, int num2){
		
		resultado = num1 / num2;
		
		return resultado;	
	}

}
