#include <stdio.h> // funções e operações básicas
#include <stdlib.h> // funções auxiliares
#include <conio.h> // tem as mesmas funções do stdio.h
#include <math.h> // funções matemáticas
#include <string.h> // funções para trabalharmos com strings
#include <locale.h> // adequação do idioma local

//

int main()
{
	setlocale(LC_ALL, "PORTUGUESE");
	
	int placa=0;
	
	
	printf("\n informe o ultimo numero da placa;");
	scanf("%i", &placa);
	
	switch (placa){
		case 1:
			placa = 1;
			printf("\n Janeiro");
			break;
			
			case 2:
				placa =2;
				printf("\n Fevereiro:");
				break;
				
				case 3:
					placa = 3;
					printf("\n Março");
					break;
					
					case 4:
						placa = 4;
						printf("\n Abril");
						break;
						
						case 5:
							placa = 5;
							printf("\n Maio");
			
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
