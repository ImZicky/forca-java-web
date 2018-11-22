package br.com.fiap.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.beans.Jogador;
import br.com.fiap.beans.Palavra;
import br.com.fiap.bo.JogadorBO;
import br.com.fiap.funcoes.Jogada;


/**
 * Servlet implementation class FuncoesForcaServlet
 */
@WebServlet("/FuncoesForcaServlet")
public class FuncoesForcaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Palavra palavra;
	public static String palavraEscondida;
	private static char[] comparador;
	

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FuncoesForcaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JogadorBO jogadorBO = new JogadorBO();		
		List<Jogador> lista = jogadorBO.mostraJogadores();
		int vez = Jogador.getVez();

		int oqFazer = Jogada.oqFazer;
		Jogada jogada = new Jogada();
	
		String retorno = "jogoForca.jsp";
		switch (oqFazer) {
		case 0:
			FuncoesForcaServlet.palavra = jogada.sorteiaPalavra();
			FuncoesForcaServlet.comparador = new char[palavra.getNome().length()]; 
			request.setAttribute("temaPalavra", palavra.getTema().getNomeTema());

			
			for (int i = 0; i < comparador.length; i++) {
				if (palavra.getNome().charAt(i) == '-') {
					comparador[i] = '-';
				} else {
					comparador[i] = '#';
				}
			}
			FuncoesForcaServlet.palavraEscondida = String.valueOf(comparador); 
			//			request.setAttribute("palavraHide", palavraEscondida);			
			break;
			
		case 1:
			request.setAttribute("temaPalavra", palavra.getTema().getNomeTema());
			char letraChute = request.getParameter("letraChute").charAt(0);
			String palavraChute = request.getParameter("palavraChute");

			boolean acertouLetra = false;
			if (palavraChute.isEmpty()) {
				for(int i = 0; i< palavra.getNome().length();i++) {
					if (palavra.getNome().charAt(i) == letraChute) {
						lista.get(vez).setVlPontuacao(lista.get(vez).getVlPontuacao()+50);
						acertouLetra = true;
						comparador[i] = letraChute;
						FuncoesForcaServlet.palavraEscondida = String.valueOf(comparador); 
						request.setAttribute("palavraHide", palavraEscondida);
					}
				}

				if (acertouLetra == false) {
					lista.get(vez).setErro(lista.get(vez).getErro()+ 1);
					retorno = "jogoForca.jsp";
					if (Jogador.getVez() == lista.size()-1) {
						Jogador.setVez(0);
					}else {
						Jogador.setVez(vez +=1);
					}
				}else{
					if (FuncoesForcaServlet.palavraEscondida.equals(palavra.getNome())) {
						retorno = "gameOver.jsp";

					}else {
						retorno = "jogoForca.jsp";

					}
					acertouLetra = false;
				}

			}else {
				if (palavraChute.equals(palavra.getNome())) {
					lista.get(vez).setVlPontuacao(lista.get(vez).getVlPontuacao()+1000);
					retorno = "gameOver.jsp";
				}else {
					retorno = "jogoForca.jsp";
					if (Jogador.getVez() == lista.size()-1) {
						Jogador.setVez(0);
					}else {
						lista.get(vez).setErro(lista.get(vez).getErro()+ 1);
						Jogador.setVez(vez +=1);
					}				
				}
			}
			
			
			break;
		case 2:
			Jogador.setVez(0);
			jogadorBO.reinicia();
			retorno = "index.jsp";
			request.getRequestDispatcher(retorno).forward(request, response);
			break;
		}
		
		Jogada.oqFazer = 1;
		request.getRequestDispatcher(retorno).forward(request, response);

	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	public static Palavra getPalavra() {
		return palavra;
	}

	public static void setPalavra(Palavra palavra) {
		FuncoesForcaServlet.palavra = palavra;
	}

}
