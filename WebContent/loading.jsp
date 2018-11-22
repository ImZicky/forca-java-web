<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="br.com.fiap.servlet.FuncoesForcaServlet"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.ForeachStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="br.com.fiap.beans.Jogador"%>
<%@page import="br.com.fiap.beans.Palavra"%>
<%@page import="br.com.fiap.bo.JogadorBO"%>
<%@page import="br.com.fiap.bo.PalavraBO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>




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

<title>LOADING</title>
</head>
<body>

	<%
		int qtdJogadores = Integer.parseInt(request.getParameter("qtdJogadores"));

		String nomes[] = new String[qtdJogadores];
		int h = 0;

		for (int i = 1; i <= qtdJogadores; i++) {
			nomes[h] = request.getParameter("nome" + i);
			h++;
		}

		JogadorBO bo = new JogadorBO();

		for (int i = 0; i < nomes.length; i++) {
			Jogador jog = new Jogador();
			jog.setCdJogador(i + 1);
			jog.setNmJogador(nomes[i]);
			bo.addJogador(jog);
		}

	%>


	<div class="container  mt-5">
		<div class="row border mt-5 mb-5">
			<div class="col-12 mt-5">
				<h1>CARREGANDO...</h1>
			</div>
			<div class="col-12 pb-5">
				<div class="progress">
					<div id="barrinha"
						class="progress-bar progress-bar-striped bg-info"
						role="progressbar" style="width: 0%" aria-valuenow="0"
						aria-valuemin="0" aria-valuemax="100"></div>
				</div>
				<form action="FuncoesForcaServlet" method="post">
					<input	id="btn" style="display: none;" value="iniciar jogo"
						class="btn btn-primary w-100 mt-2" type="button">

				</form>

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
	<script type="text/javascript">
		$('document').ready(function() {

			var tempo = 0;

			setInterval(function() {
				tempo += 2;
				$('#barrinha').css('width', tempo);
				if (tempo == 1750) {
					$('#btn').css('display', 'block');					
					$('#btn').attr('type', 'submit');
				}
			}, 10);

		});
	</script>

</body>
</html>