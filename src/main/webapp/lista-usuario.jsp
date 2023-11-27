<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista cadastro Usuário</title>
</head>
<body>

		
<!--Tabela de visualização -->
      <div class="container">
      <h1>Lista de cadastro do usuario</h1>
      <table class="table table-striped">
      <tr>
       <th>Nome do usuario</th>
       <th>Data de registro</th>
       <th>Descricao do usuario</th>								
      </tr>
      
      <c:forEach items="${usuario}" var="u">
      <tr>
       <td>${u.nome}</td>
       <td>${u.dataRegistro}</td>
       <td>${u.descricaoUsuario}</td>
      </tr>
      </c:forEach>
      </table>
      </div>
      
<!--             <div class="container"> -->
	  <div>
      <h1>Lista cadastro de dados do usuario</h1>
      <table class="table table-striped">
      <tr>
       <th>E-mail do usuario</th>
       <th>Número de celular</th>
       <th>Senha</th>								
      </tr>
      
      <c:forEach items="${usuarioDados}" var="d">
      <tr>
       <td>${d.email}</td>
       <td>${d.nroCell}</td>
       <td>${d.senha}</td>
      </tr>
      </c:forEach>
      </table>
      </div>
		
	
</body>
</html>