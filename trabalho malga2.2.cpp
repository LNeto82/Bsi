#include<stdio.h>
#include<stdlib.h>

int main(){
float i,p,med1,med2,med3,med4,soma,y;
int x;
soma=0;
y=0;
for(x=1;x<=15;x++){
        printf("\nDigite a idade da %d pessoa: ",x);
        scanf("%f",&i);
        printf("Digite o peso da %d pessoa: ",x);
        scanf("%f",&p);
        printf("\n_____________________________________________\n");
        if(i>=1&&i<=10){
                y=y+1;
                soma=soma+p;
                med1=soma/y;

        }
        if(i>=11&&i<=20){
                y=y+1;
                soma=soma+p;
                med2=soma/y;

        }
        if(i>=21&&i<=30){
                y=y+1;
                soma=soma+p;
                med3=soma/y;

        }
        if(i>=31){
                y=y+1;
                soma=soma+p;
                med4=soma/y;

        }

}
printf("\nA media dos pesos das pessoas entre 1 e 10 anos   = %.2f\n",med1);
printf("\nA media dos pesos das pessoas entre 11 e 20 anos  = %.2f\n",med2);
printf("\nA media dos pesos das pessoas entre 21 e 30 anos  = %.2f\n",med3);
printf("\nA media dos pesos das pessoas maiores ou iguais 31 anos = %.2f\n",med4);


}

