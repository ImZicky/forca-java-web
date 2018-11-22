package br.com.fiap.dao;

import java.util.Random;

import br.com.fiap.beans.Palavra;
import br.com.fiap.bo.TemaBO;

public class PalavraDAO {

	
	private static String[][] palavras = {
			{"bolo","pudim","geleia","sorvete","bombom","goiabada","pacoca","pirulito","beijinho","brigadeiro"},
			{"namorada","irmão","mãe","pai","padrasto","cunhado","esposa","marido","filho","neta"},
			{"teclado","guitarra","violão","bateria","violino","cello","saxofone","flauta","baixo","banjo"},
			{"olinda","los angeles","new york city","sidney","londres","berlim","moscow","acapulco","seattle","recife"},
			{"brasil","japão","coreia-do-sul","australia","estados-unidos","mexico","espanha","portugal","alemanha","russia"},
			{"neymar","douglas-costa","robinho","ronaldinho","roberto-carlos","rogerio-ceni","dudu","cristiano-ronaldo","messi","mbappe"},
	};

	
	public Palavra escolhePalavra() {
		Random r = new Random();
		Palavra escolhida = new Palavra();
		int temaEPos = r.nextInt(palavras.length);
		String nome = palavras[temaEPos][r.nextInt(palavras[0].length)];
		escolhida.setNome(nome);
		TemaBO temaBO = new TemaBO();
		escolhida.setTema(temaBO.escolheTema(temaEPos));
		
		return escolhida;
		
	}
	
	
	
}
