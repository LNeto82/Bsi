#include <stdio.h> // fun��es e opera��es b�sicas
#include <stdlib.h> // fun��es auxiliares
#include <conio.h> // tem as mesmas fun��es do stdio.h
#include <math.h> // fun��es matem�ticas
#include <string.h> // fun��es para trabalharmos com strings
#include <locale.h> // adequa��o do idioma local

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
					printf("\n Mar�o");
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
