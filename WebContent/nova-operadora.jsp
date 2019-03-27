<%@page import="controller.Agenda"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agenda</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
	<div class="container">
		<h3>Nova Operadora</h3>
		<br>

		<form method="post" action="ProcessaContato">
			
			<input type="text" placeholder="Nome" name="nome" id="nome"
				class="form-control"> <br> 
			
			<button type="button" id="salvar" class="btn btn-primary">Salvar</button>
		</form>
		<hr>
		
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		function novaOperadora() {
			//window.open("nova-operadora.jsp");
		}
	</script>
</body>
</html>