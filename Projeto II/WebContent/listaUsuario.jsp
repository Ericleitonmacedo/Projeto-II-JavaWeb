<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//tabela de listaUsuario %>
	<form method="post">
		<table style="border: 3px solid black; width: 70%">
			<thead>
				<th>Nome</th>
				<th>Email</th>
				<th>Telefone</th>
				<th>Endereco</th>
				<th>Senha</th>
			</thead>
<%//o foreach vai estar percorrendo a lista que estiver dentro do atributo usuario %>
			<c:forEach items="${usuarios}" var="usu">

				<tbody style="font-size: 90%">

					<tr>
						<td style="border: 1px solid black; font-size: 15px;">${usu.nome}</td>
						<td style="border: 1px solid black; font-size: 15px;">${usu.email}</td>
						<td style="border: 1px solid black; font-size: 15px;">${usu.telefone}</td>
						<td style="border: 1px solid black; font-size: 15px;">${usu.endereco}</td>
						<td style="border: 1px solid black; font-size: 15px;">${usu.senha}</td>

					</tr>

				</tbody>

			</c:forEach>
		</table>
		<input type="submit" value="Menu" formaction="menu.jsp" />
		<p> ${erro} </p>
		<p> ${sucesso} </p>
	</form>
</body>
</html>