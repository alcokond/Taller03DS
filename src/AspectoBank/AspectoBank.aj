import java.util.Scanner;

public aspect AspectoBank{
	pointcut callmyMoney(): call (* myMoney(..));
	before(): callmyMoney(){
		System.out.println("Nombre: ");
		Scanner nombre = new Scanner(System.in);
		System.out.println("id: ");
		Scanner id = new Scanner(System.in);
	}
	
	pointcut callmakeTransaction(): call (* makeTransaction(..));
	before(): callmakeTransaction(){
		System.out.println("Nombre: ");
		Scanner nombre = new Scanner(System.in);
		System.out.println("id: ");
		Scanner id = new Scanner(System.in);
	}
}