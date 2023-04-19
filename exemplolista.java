package aula7;

import java.util.ArrayList;

public class exemplolista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<String> lista = new ArrayList <String>();
		lista.add("1");
		lista.add("2");
		lista.add("3");
		System.out.println(lista.size());
		System.out.println(lista.get(1));
		
		ArrayList<String> lista2 = new ArrayList<String>();
		lista2.add("1");
		lista2.add("2");
		System.out.println(lista2.size());
		System.out.println(lista2.get(1));
		
		ArrayList<Float> salario = new ArrayList<Float>();
		salario.add((float)150);
		salario.add((float)200);
		salario.add((float)400);
		salario.add((float)500);
		System.out.println(salario.size());
		System.out.println(salario.get(0));
		
			for (int i = 0; i<salario.size(); i++) {
				System.out.println(salario.get(i));
			}
	}

}
