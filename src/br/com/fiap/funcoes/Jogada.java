package br.com.fiap.funcoes;

import br.com.fiap.beans.Palavra;
import br.com.fiap.bo.PalavraBO;


public class Jogada{

	public static int oqFazer = 0;
	public static boolean gameOver = false;

	final public Palavra sorteiaPalavra() {
		Palavra palavra = new Palavra();
		PalavraBO palavraBO = new PalavraBO();
		palavra = palavraBO.escolhePalavra();
		return palavra;
	}
	
	
}
