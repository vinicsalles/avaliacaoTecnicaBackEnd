package AvaliacaoTecnica;


//Desafio 1 - Somar o Indice
public class Desafio1{
    public static void main(String[] args){
        int Indice = 13;
        int Soma = 0;
        int K = 0;
        while(K < Indice){
            K = K + 1;
            Soma = Soma + K;
        }
        System.out.println("O valor da variável soma é: " + Soma);
    }
}



