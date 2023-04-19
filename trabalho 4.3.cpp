#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <string.h>
#include <locale.h>

int main () {
	
	int nump, i;
	float kgp=45.00, valor, tot;
	
	

	int pdia[7];
		tot = valor * 7;
	for (i = 1; i < 7; i++ ){
		printf("quantos paes foram vendidos no dia");
		scanf("%i", &pdia[i]);
		
		valor = kgp / 0.30 * (pdia[i]);
		tot = valor * 7;
	}
				
				
	 

	

		printf("total dia = %.2f\n", valor);
		printf("total da semana %.2f", tot);
	}
		
		
		
	
	
	
	
	
	

	
	
