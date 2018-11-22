package br.com.fiap.dao;


import br.com.fiap.beans.Tema;

public class TemaDAO {

	private static String nm_tema[] = {"doce","relacionamento","instrumento","cidade","país","jogador de futebol"};

	public Tema escolheTema(int posicao) {
		Tema tema = new Tema();
		String nomeTema = nm_tema[posicao]; 
		tema.setNomeTema(nomeTema);
		
		return tema;
	}
	
	
}
