package br.com.fiap.beans;

public class Jogador implements Comparable<Jogador>{
	static int vez=0;
	
	private int cdJogador, vlPontuacao, erro;
	private String nmJogador;
	private boolean status;
	private int posicao;
	
	
	@Override
	public int compareTo(Jogador outroJ) {
		if (this.getVlPontuacao() < outroJ.getVlPontuacao()) {
			return -1;
		}else if(this.getVlPontuacao() > outroJ.getVlPontuacao()) {
			return 1;
		}else {
			return 0;
		}
	}

	
	
	public Jogador() {
		super();
	}
	


	public Jogador(int cdJogador, int vlPontuacao, int erro, String nmJogador, boolean status, int posicao) {
		super();
		this.cdJogador = cdJogador;
		this.vlPontuacao = vlPontuacao;
		this.erro = erro;
		this.nmJogador = nmJogador;
		this.status = status;
		this.posicao = posicao;
	}



	public static int getVez() {
		return vez;
	}
	public static void setVez(int vez) {
		Jogador.vez = vez;
	}
	public int getCdJogador() {
		return cdJogador;
	}
	public void setCdJogador(int cdJogador) {
		this.cdJogador = cdJogador;
	}
	public int getVlPontuacao() {
		return vlPontuacao;
	}
	public void setVlPontuacao(int vlPontuacao) {
		this.vlPontuacao = vlPontuacao;
	}
	public int getErro() {
		return erro;
	}
	public void setErro(int erro) {
		this.erro = erro;
	}
	public String getNmJogador() {
		return nmJogador;
	}
	public void setNmJogador(String nmJogador) {
		this.nmJogador = nmJogador;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getPosicao() {
		return posicao;
	}

	public void setPosicao(int posicao) {
		this.posicao = posicao;
	}



	
	
	
	
	
	
	
	
	
	
	
}
