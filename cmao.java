package aula7;

import aula7.dedo;

import aula7.mao;

public class cmao {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		dedo d = new dedo();
		d.pos = 1;
		mao m = new mao();
		m.lado = "direito";
		m.dedos.add(d);
	    d = new dedo();
		d.pos = 2;
		m.dedos.add(d);
		d = new dedo();
	    d.pos = 3;
	    
	    for(int i = 0; i< m.dedos.size(); i++) {
	    	System.out.println(m.dedos.get(i).pos);
	    	
	    }
		

	}

}
