#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <string.h>
#include <locale.h>

int main () {

	int i;
	int  mes [31];
	int soma, media;

	printf(" Digite a temperatura dos dias de setembro: \n",i);

	for (int i = 0; i < 31; ++i)
	scanf("%i", &mes[i]);
	
	
	printf("\n Relatorio da temperatura media de cada dia: \n");
	
	for (int i = 0; i < 31; ++i)
	printf("\n Dia %i: %i Graus", i, mes[i]);
	
	
	for ( i = 0; i < 31; ++i)
	soma = soma + mes[i];
	
	media = soma / 31;
	
	printf("\n\n \A temperatura media do mes de setembro: %i Graus \n\n", media);
	

	
	
	
}
