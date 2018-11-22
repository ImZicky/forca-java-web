<%@page import="java.util.Collection"%>
<%@page import="br.com.fiap.bo.JogadorBO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page import="br.com.fiap.beans.Jogador"%>
<%@page import="br.com.fiap.funcoes.Jogada"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/master.css">

    <title>GAME OVER!</title>
  </head>
  <body>

	<%
	 	JogadorBO jogadorBO = new JogadorBO();
		List<Jogador> lista = jogadorBO.mostraJogadores();
		
		Collections.sort(lista);
		
	for(Jogador j : lista){
		j.setPosicao(lista.size()-lista.indexOf(j));
	}
		Jogada.oqFazer = 2;
		
	%>
	
  <div class="container">
 	<div class="row">
 		<div class="col-12"><h1>GAME OVER</h1></div>
	    <div class="col-12 border pt-5 pb-5">
		<%for(Jogador j : lista){%>
			<ul class="float-left ml-5 p-5 bg-light border">
				<li><h2 class="mb-5"><%=j.getPosicao() %></h2></li>
				<li>jogador:<%=j.getCdJogador() %></li>
				<li><%=j.getNmJogador()%></li>
				<li><%=j.getVlPontuacao() %>pts</li>
				<li><%=j.getErro() %> erros</li>
			</ul>
			<%} %>
			<form action="FuncoesForcaServlet">
				<input type="submit" class="btn btn-primary w-100" value="Jogar Novamente">
			</form>
	    </div>
 	</div>
  </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>