package org.endika.docker;
import java.util.Scanner;

public class App 
{
    public static void main( String[] args )
    {
	System.out.println("Introduce una palabra o exit para salir");
	Scanner sc = new Scanner(System.in);
	boolean exit = false;
	while (!exit) {
		String name = sc.nextLine();
		if(name.equals("exit")) {
			exit=true;
		}else {
			System.out.println("La palabra "+name+" tiene "+name.length()+" caracteres.");
			System.out.println("Introduce otra palabra o exit para salir");
		}
	}
	System.out.println("Saliendo...");
	sc.close();
    }
}
