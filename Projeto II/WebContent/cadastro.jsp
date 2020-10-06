<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//vai pegar os dados com o input e ao clicar em cadastrar ele vai pro servelet cadastrodeusuario e vai fazer tudo que tem la %>
	<form name="cadastro" action="CadastroDeUsuarios" method="post">
		<label> Nome: </label>
		<input name="nome" type="text"/>
		
		<label> Email: </label>
		<input name="email" type="text"/>
		
		<label> Telefone: </label>
		<input name="telefone" type="text"/>
		
		<label> Endereço: </label>
		<input name="endereco" type="text"/> 
		
		<label> Senha: </label>
		<input name="senha" type="password"/> 
		
		<input type="submit" value="Cadastrar"/> 
		<input type="submit"value="Voltar" formaction="menu.jsp"/> 
		<p>${sucesso}</p>
		<p>${erro}</p>
	</form>

</body>
</html>