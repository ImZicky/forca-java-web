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

<title>Forca Cadastro</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12 mb-2">
				<h1>CADASTRO DE JOGADORES</h1>
			</div>

			<%
				int jogadores = Integer.parseInt(request.getParameter("modoJogo"));
			%>
			<p style="display: none;" id="jogs"><%=jogadores%></p>
			
			<div class="col-12">
				<form method="post" action="loading.jsp">
	
					<input style="display: none;" type="text" value="" name="qtdJogadores" id="qtdJogadores">
					<ul style="display: none;">
							<%
								for (int i = 1; i <= jogadores; i++) {
							%>
									<li class="listinha"><input style="display: none;" type="text" class="inp" value="" name="nome" id="qtdJogadores"></li>
							<%
								};
							%>
					</ul>
					<div class="cardi bg-light">
						<div class="capa"></div>

					<div class="card-body">
							<h2>nomes do(s) jogadores</h2>

							<%
								for (int i = 1; i <= jogadores; i++) {
							%>
							<div class="cardi mr-4" style="width: 15rem;">
								<ul class="list-group list-group-flush">
									<li class="list-group-item listinha-pegar">
										<input class="inpu" type="text" class="form-control" name="nome" placeholder="Digite seu nick aqui" autocomplete="off">
									</li>
									<li class="list-group-item">
										<p>	JOGADOR:<%=i%></p>
									</li>
								</ul>
							</div>
							<%
								};
							%>
						</div>
						<button type="button" id="valida" class="btn btn-primary verifica w-100" >Validar</button>
						<button type="submit" id="confirma" class="btn btn-primary confirma w-100" style="display:none;">Confirmar</button>

					</div>

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
			var jogs = $('#jogs').text();
			$('#qtdJogadores').val(jogs);

			$('#valida').click(function() {
				
				var reg = new RegExp("^[a-zA-Z0-9]+$");
				var passou = true;
				var backUp = document.getElementsByClassName("inpu");
				nomes = [];

				for (var i = 0; i < backUp.length; i++) {
					nomes.push($(backUp[i]).val());
				}
				
				
				
				for (var i = 0; i < nomes.length; i++) {
					if (!reg.test(nomes[i]) || nomes[i] == nomes[i+1]) {
						passou = false;
					}
				}

//				alert(jogs);
//				alert($('#qtdJogadores').val());
					var cc = 0;
				
				if (passou == true) {
					$('.inpu').prop("disabled","true");

					var valores = [];
					$("li.listinha-pegar input").each(function(k) {
						  valores.push($(this).val());
						  
					});
					
						$("li.listinha input").each(function(k) {
							  $(this).attr('name', $(this).attr('name') + (k+1));
							  
							 $(this).val(valores[cc]);
							  cc++;
						});
					
					$('#valida').css('display','none');
					$('#confirma').css('display','block');
					
				}else {
					alert("Nicks não podem ter simbolos especiais ou serem iguais\nOBS: Nem estarem vazios...");					
				}
				 
			});

		});
	</script>
</body>
</html>