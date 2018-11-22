package br.com.fiap.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fiap.beans.Jogador;

public class JogadorDAO {

	static List<Jogador> lista = new ArrayList<Jogador>();
	
	public void addJogador(Jogador jogador) {
		lista.add(jogador);
	}
	
	
	public List<Jogador> mostraJogadores(){
		return lista;
	}
	
	
	public void reinicia() {
		for (Jogador jogador : lista) {
			lista.remove(jogador);			
		}
	}
	
	
}
