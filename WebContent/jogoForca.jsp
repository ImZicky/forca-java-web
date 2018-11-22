<%@page import="br.com.fiap.servlet.FuncoesForcaServlet"%>
<%@page import="br.com.fiap.bo.JogadorBO"%>
<%@page import="br.com.fiap.beans.Jogador"%>
<%@page import="br.com.fiap.beans.Palavra"%>
<%@page import="br.com.fiap.servlet.FuncoesForcaServlet"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>



<html lang="pt-br">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/master.css">
<title>Forca</title>
</head>
<body>

<% 
	JogadorBO jogadorBO = new JogadorBO();
	List<Jogador> lista = jogadorBO.mostraJogadores();
	int vez = Jogador.getVez();

	Object temaPalavraObj = request.getAttribute("temaPalavra");
	String temaPalavra = String.valueOf(temaPalavraObj);
	
	String palavraHide = FuncoesForcaServlet.palavraEscondida;
	
%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-12 mt-5 mb-2">
				<h1>FORCA</h1>
			</div>
			<div class="col-12">
					<table class="table table-hover table-dark">
						<tbody>
							<tr>
								<%
								for(int i = 0 ; i < palavraHide.length() ; i++){
								%>
									<td><%=palavraHide.charAt(i)%></td>
								<%}%>
							</tr>
						</tbody>
					</table>
					<br>
					<div class="container">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-4">
								<div class="border h-100 pt-5 bg-light">
									<h2 class="pt-5">
										Jogador
										<%=lista.get(vez).getCdJogador()%></h2>
									<h2><%=lista.get(vez).getNmJogador()%></h2>
									<h2><%=lista.get(vez).getVlPontuacao() %> pts.</h2>
									<h2>Tema: <%=temaPalavra%></h2>
									
								</div>
							</div>

							<div class="col-12 col-md-12 col-lg-4">
								<div class="carde text-center bg-light" style="width: 18rem;">
									<div class="card-body">
									<form action="FuncoesForcaServlet" method="post">
										<input id="insereLetra" name="letraChute" type="text" maxlength="1"
											autofocus="autofocus" autocomplete="off">
										<p class="card-text mt-2 mb-2">Chute Uma Letra Acima.</p>
										<input id="inserePalavra" name="palavraChute" type="text" autocomplete="off">
										<p class="card-text mt-2 mb-2">Chute Uma Palavra Acima.</p>
										<button id="bb" type="submit" class="btn btn-primary w-100">Chutar</button>
									</form>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-12 col-lg-4">
								<img class="forca-bg"
									src="images/forca-bg-<%=lista.get(vez).getErro()%>.png">
							</div>

						</div>
					</div>
		
			</div>
		</div>
	</div>



	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

	<!-- Optional JavaScript -->
	<script type="text/javascript" src="js/jquery.js"></script>


</body>

</html>