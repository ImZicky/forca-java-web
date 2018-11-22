package br.com.fiap.beans;

public class Palavra {
	
	private String nome;
	private Tema tema;
	
	
	public Palavra() {
		super();
	}

	

	public Palavra(String nome, Tema tema) {
		super();
		this.nome = nome;
		this.tema = tema;
	}



	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public Tema getTema() {
		return tema;
	}


	public void setTema(Tema tema) {
		this.tema = tema;
	}



	
	
	
	
}
