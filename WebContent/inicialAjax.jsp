<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agenda</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script>
//	setTimeout(() => {
//		$("#mensagem").toggle(250);
//	}, 2000);

</script>
</head>
<body>
	<div class="container">
		<h3>Novo Contato</h3>
		<br>

		<form method="post" action="ProcessaContato">
			<div class="mensagem" id="mensagem"></div>
			<br> <input type="text" placeholder="Nome" name="nome" id="nome"
				class="form-control"><br> <input type="text"
				placeholder="Telefone" name="telefone" id="telefone"
				class="form-control"><br> <select class="form-control"
				id="operadoras" name="operadora">
				<option selected>Operadoras...</option>
			</select><br>

			<button type="button" id="salvar" class="btn btn-primary">Salvar</button>
		</form>
		<hr>
		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Nome</th>
					<th scope="col">Telefone</th>
					<th scope="col">Operadora</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function(){
		$("#salvar").click(function(){
			$("#mensagem").show();
			$.ajax({
				url : "ProcessaContato",
				type : 'post',
				data : {
					nome : $("#nome").val(),
					telefone : $("#telefone").val()
				},
				beforeSend : function() {
					$("#mensagem").html("ENVIANDO...");
				}
			})
			.done(function(msg){
				$("#mensagem").html(msg);
				setTimeout(() => {
					$("#mensagem").toggle(250);
				}, 2000);
			})
		});
	});
	
</script>
</body>
</html>