import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;

public aspect Aspecto1 {
	pointcut callmyMoney(): call (* myMoney(..));
	after() throws Exception: callmyMoney(){
		System.out.println("**** Dinero Retirado ****");
		FileWriter j;
		try {
			j = new FileWriter(file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			j.write(cal.toString()+" , Dinero retirado \n");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
	
	
	pointcut callmakeTransaction(): call (* makeTransaction(..));
	after(): callmakeTransaction(){
		System.out.println("**** Transaccion Realizada ****");
		FileWriter j;
		try {
			j = new FileWriter(file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			j.write(cal.toString()+" , Transaccion realizada \n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
    File file = new File("log.txt");
    Calendar cal = Calendar.getInstance();
    
    
    pointcut success() : call(* create*(..) );
    after() : success() {
    	System.out.println("**** User created ****");
    }
}

