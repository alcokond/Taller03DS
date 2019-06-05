package AspectoBank;
import java.util.Scanner;

public aspect Login{
	pointcut callmyMoney(): call (* myMoney(..));
	before(): callmyMoney(){
		System.out.print("************LOGIN*********** ");
		System.out.print("Nombre: ");
		Scanner nomscan = new Scanner(System.in);
		String nom= nomscan.nextLine();
		System.out.print("Id: ");
		Scanner idscan = new Scanner(System.in);
		String id = idscan.nextLine();
	}
	
	pointcut callmakeTransaction(): call (* makeTransaction(..));
	before(): callmakeTransaction(){
		System.out.print("************LOGIN*********** ");
		System.out.print("Nombre: ");
		Scanner nomscan = new Scanner(System.in);
		String nom= nomscan.nextLine();
		System.out.print("Id: ");
		Scanner idscan = new Scanner(System.in);
		String id = idscan.nextLine();
	}
}