<%@page import="controller.Mensagem"%>
<%@page import="controller.Agenda"%>
<%@page import="vo.Contato"%>
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
		<h3>Novo Contato</h3>
		<br>

		<form method="post" action="ProcessaContato">
			<%
				if (!Mensagem.getMensagens().isEmpty()) {
			%>
			<div class="mensagem" id="mensagem">
				<%
					while(!Mensagem.getMensagens().isEmpty()){
						out.println(Mensagem.getMensagem());
					}
				%>
				<script>
					setTimeout(() => {
						$("#mensagem").toggle(250);
					}, 4000);
				</script>
			</div>
			<%
				}
			%>
			<br> 
			<input type="text" placeholder="Nome" name="nome" id="nome"
				class="form-control"> <br> 
			<input type="text"
				placeholder="Telefone" name="telefone" id="telefone"
				class="form-control"><br> 
				
				<div class="input-group">
				  <select class="custom-select"  id="operadoras" name="operadora">
				    <option selected value="">Selecione</option>
					<%
						//recupera a lista
						List<String> ops = Agenda.getOperadoras();
						//percorre a lista preenchendo as opções do select
						for(String o : ops){
							out.print("<option>" + o + "</option>");
						}
					%>
				  </select>
				  <div class="input-group-append">
				    <button class="btn btn-outline-secondary"  type="button" data-toggle="modal" data-target="#modal-nova-operadora">+</button>
				  </div>
				</div><br>
			<button type="submit" id="salvar" class="btn btn-primary">Salvar</button>
		</form>
		<hr>
		<div class="modal fade" id="modal-nova-operadora" tabindex="-1" role="dialog"
			aria-labelledby="modal-nova-operadora-label" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modal-nova-operadora-label">Nova Operadora</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form method="post" action="ProcessaOperadora">
						<div class="modal-body">
							<input type="text" name="operadora" id="nova-operadora"
								class="form-control" placeholder="Operadora">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancelar</button>
							<button type="submit" class="btn btn-primary">Salvar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th scope="col" width="50%">Nome</th>
					<th scope="col" width="30%">Telefone</th>
					<th scope="col" width="20%">Operadora</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<Contato> lista = Agenda.getAgenda();
					if (lista.isEmpty()) {
						out.print("<tr><td colspan=3>Não há contatos</td></tr>");
					}
					for (Contato p : lista) {
				%>
				<tr>
					<td>
						<%
							out.print(p.getNome());
						%>
					</td>
					<td>
						<%
							out.print(p.getTelefone());
						%>
					</td>
					<td>
						<%
							out.print(p.getOperadora().getNome());
						%>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		function novaOperadora() {
			window.open("nova-operadora.jsp");
		}
	</script>
</body>
</html>