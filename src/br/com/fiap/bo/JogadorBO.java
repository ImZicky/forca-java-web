package br.com.fiap.bo;

import java.util.List;

import br.com.fiap.beans.Jogador;
import br.com.fiap.dao.JogadorDAO;

public class JogadorBO {

		JogadorDAO dao = new JogadorDAO();
		
		public void addJogador(Jogador jogador) {
			dao.addJogador(jogador);
		}
		
		public List<Jogador> mostraJogadores(){
			return dao.mostraJogadores();
		}
	
		public void reinicia() {
			dao.reinicia();
		}
	
}
