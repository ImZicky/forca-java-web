package br.com.fiap.bo;

import br.com.fiap.beans.Tema;
import br.com.fiap.dao.TemaDAO;

public class TemaBO {

	TemaDAO temaDAO = new TemaDAO();
	
	public Tema escolheTema(int posicao) {
		return temaDAO.escolheTema(posicao);	
		
	}
	
}
