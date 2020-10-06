<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//quando clicar em logar, ela vai no actinon "loginservet" e faz tudo que ter que fazer para logar %>
<form name="Login" action="LoginServelet" method="post" >
    Login: <input type="text" name="login"/>
    Senha: <input type="password" name="senha"/>
    <input type="submit" name="Logar" value="Logar"/>
    <p>${erro}</p>
</form>
</body>
</html>