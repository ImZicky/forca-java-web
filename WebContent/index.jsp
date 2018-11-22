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

<title>Jogo Da Forca</title>
</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-12">
				<h1>JOGO DA FORCA</h1>
					<form action="cadastraJogador.jsp" method="post">
					<div class="cardi bg-light">
					<div class="capa">
					
					</div>
						<div class="card-body">
							<h2>escolha um modo de jogo</h2>
								<select class="form-control" name="modoJogo" id="modoJogo" required>
									<option value="1">Single-Player > [1 Jogador]</option>
									<option value="2" >Multi-Player > [2 Jogadores]</option>
									<option value="3">Multi-Player > [3 Jogadores]</option>
									<option value="4">Multi-Player > [4 Jogadores]</option>
								</select>
						</div>
					<button class="btn btn-primary w-100" type="submit" >Enviar</button>
					</div>
				</form>
			</div>
		</div>
	</div>



	<!-- Optional JavaScript -->
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
</body>
</html>