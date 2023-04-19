	#include <stdlib.h> // funções auxiliares
	#include <conio.h> // tem as mesmas funções do stdio.h
	#include <math.h> // funções matemáticas
	#include <string.h> // funções para trabalharmos com strings
	#include <locale.h> // adequação do idioma local
	float desc_inss(float salario, float desc1, float desc2, float desc3, float desc4, float desc5)
	{
	 
	float desc;
	 
	 
	 
	 
	if(salario < 1212)
	{
	 
	desc = salario -(salario *0.075);
	 
	desc1= salario - desc;
	 
	return desc1;
	 
	}
	 
	if (salario >1213 && salario < 2427)
	{
	 
	desc = salario -(salario *0.09);
	 
	desc2= salario-desc;
	 
	return desc2;
	 
	}
	 
	if (salario > 2428 && salario < 3641)
	{
	 
	desc = salario -(salario *0.12);
	 
	desc3= salario-desc;
	 
	return desc3;
	 
	}
	 
	if (salario > 3642 && salario < 7087)
	{
	 
	desc = salario -(salario *0.14);
	 
	desc4= salario-desc;
	 
	return desc4;
	 
	}
	 
	if (salario > 7088)
	{
	 
	desc = salario -(salario *0.14);
	 
	desc5= salario-desc;
	 
	return desc5;
	 
	}
	 
	 
	}
	int main()
	{
	
	 
	float salario, desc1, desc, desc2, desc3, desc5, desc4;
	 
	setlocale(LC_ALL, "portuguese");
	 
	 
	printf("\n qual é o salario:");
	 
	scanf("%f", &salario);
	 
	 
	desc1 = desc_inss(salario, desc1, desc2, desc3, desc4, desc5);
	 
	printf("\n o salario é %.2f e o desconto é %.2f", salario, desc1, desc, desc3, desc4, desc5);
	}	
