package aula7;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Cliente {

		public String cpf = "";
		public String nome = "";
		public String email = "";
		public String telefone ="";
		
		public void salvar() {
			try {
				String separador = ";";
				FileWriter arquivo = new FileWriter("C:\\Users\\llcn1\\Documents\\luiz\\clientes.csv", true);
				String linha = 	this.cpf+ separador +
								this.nome+ separador + 
								this.email + System.lineSeparator();
				arquivo.write(linha);
				arquivo.flush();
				arquivo.close();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	
public void find_one(String cpf) {
    try {
        BufferedReader br = new BufferedReader(new FileReader("clientes.txt"));
        String line;
        while ((line = br.readLine()) != null) {
            String[] values = line.split(",");
            if (values[1].equals(cpf)) {
                this.nome = values[0];
                this.cpf = values[1];
                this.email = values[2];
                this.telefone = values[3];
                break;
            }
        }
        br.close();
    } catch (IOException e) {
        e.printStackTrace();
    }
}



public static List<Cliente> find_all() {
    List<Cliente> clientes = new ArrayList<>();
    try {
        BufferedReader br = new BufferedReader(new FileReader("clientes.txt"));
        String line;
        while ((line = br.readLine()) != null) {
            String[] values = line.split(",");
            Cliente cliente = new Cliente();
            cliente.setnome(values[0]);
            cliente.setCpf(values[1]);
            cliente.setemail(values[2]);
            cliente.setTelefone(values[3]);
            clientes.add(cliente);
        }
        br.close();
    } catch (IOException e) {
        e.printStackTrace();
    }
    return clientes;
}


	
}


}



