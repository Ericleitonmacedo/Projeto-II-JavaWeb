<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//no menu tem 3 submits, deslogar e cadastrar redireciona para outra tela, o que não tem o formaction por padrao ele capturar as informacoes que estao no servelet, o que foi passado no formulario %>
	<form action="ListarUsuarios" method="Post">
		<input type="submit" value="Cadastrar" formaction="cadastro.jsp" /> 
		<input type="submit" value="Usuarios"/> 
		<input type="submit" value="Deslogar" formaction="login.jsp" />
	</form>
</body>
</html>