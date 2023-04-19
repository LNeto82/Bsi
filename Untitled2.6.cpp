
#include <conio.h> // tem as mesmas funções do stdio.h
#include <math.h> // funções matemáticas
#include <string.h> // funções para trabalharmos com strings
#include <locale.h> // adequação do idioma local
int main(){
	setlocale(LC_ALL, "portuguese");
	int idade=0;
	
	printf("\n quantos anos acha que tenho?");
	scanf("%i", &idade);
	if (idade >= 38){
		printf("\n muito alto!");
	}
	if (idade <= 36){
		printf("\n muito baixo");
	}
	if (idade == 37){
	printf("\n idade correta");
}


}
