package br.com.fiap.bo;

import br.com.fiap.beans.Palavra;
import br.com.fiap.dao.PalavraDAO;

public class PalavraBO {

	PalavraDAO palavraDAO = new PalavraDAO();
	
	public Palavra escolhePalavra() {
		return palavraDAO.escolhePalavra();
	}
	
}
