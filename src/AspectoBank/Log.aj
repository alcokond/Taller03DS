package AspectoBank;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;

public aspect Log 
{
	
	File file = new File("log.txt");
    Calendar cal = Calendar.getInstance();
	pointcut callmyMoney(): call (* myMoney(..));
	after() : callmyMoney(){
	
	FileWriter j = null; 
	try 
	{
		j = new FileWriter(file,true);
		j.write("Transaccion realizada  ,"+cal.getTime().toString()+ "\n");
		System.out.println("**** Dinero Retirado ****");
		j.close();
	} 
	catch (Exception e) 
	{
		System.out.println(e.toString());
	}
	} 
	
	
	pointcut callmakeTransaction(): call (* makeTransaction(..));
	after(): callmakeTransaction(){
		
		FileWriter j = null; 
		try 
		{
			j = new FileWriter(file,true);
			j.write("Transaccion realizada  ,"+cal.getTime().toString()+ "\n");
			System.out.println("**** Transaccion Realizada ****");
			j.close();
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
	} 
    
    
    
    pointcut success() : call(* create*(..) );
    after() : success() {
    	System.out.println("**** User created ****");
    }
}

