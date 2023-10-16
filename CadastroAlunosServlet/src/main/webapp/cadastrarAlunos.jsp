<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Aluno</title>
</head>
<body>
<%String usuario = (String) session.getAttribute("usuario"); %>

<%if (usuario==null){
	response.sendRedirect("index.jsp");
	
 %>

<% }else{

	out.print("Bem vindo, " + usuario + "<br");%>
	
<% }%>
<h1>Cadastro Aluno</h1>

<form action="ConfirmarCadastroServlet" method="post">
<input type="hidden" name="id" value="">
<br>
Nome:<input type="text" name="nome" required>
<br>
Idade:<input type="text" name="idade" required>
<br>
Semestre:
	<select name="semestre">
		<option value="Primeiro">Primeiro</option>
		<option value="Segundo">Segundo</option>
	</select>
<br>
Genero:
<input type="radio" name="genero" value="Masculino">
Masculuino
<input type="radio" name="genero" value="Feminino">
Feminino
<br><br>

<input type="submit" value="Confirmar Cadastro">
<a href="listarAlunos.jsp">Voltar</a>
</form>

</body>
</html>