<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Usuario</title>
</head>
<body>
	
	<h1>Cadastro de Usuario</h1>
	
	<form action="usuario" method="post">
		
		<!--Nome usuario -->
		<div class="form-group">
		<label for="nome-usuario">Nome do Usuário</label>
		<input type="text" name="nome-usuario" id="nome-usuario">
		</div>
		
		<!--Data de registro -->
		<div class="form-group">
		<label for="data-registro">Data de Registro</label>
		<input type="date" name="data-registro" id="data-registro">
		</div>
		
		<!--Descricao do usuario -->
		<div class="form-group">
		<label for="descricao-usuario">Descrição do Usuário</label>
		<input type="text" name="descricao-usuario" id="descricao-usuario">
		</div>
		
		<!--Email do usuario-->
		<div class="form-group">		
		<label for="email">E-mail do Usuário</label>
		<input type="email" name="email" id="email">
		</div>
		
		<!--Numero do usuario -->	
		<div class="form-group">	
		<label for="numero-cell">Número celular</label>
		<input type="text" name="numero-cell" id="numero-cell">	
		</div>
		
		<!--Senha do usuário -->	
		<div class="form-group">	
		<label for="senha">Senha do usuário</label>
		<input type="password" name="senha" id="senha">	
		</div>
		
		<!--Enviar -->
		<input type="submit" value="Salvar">
		
	</form>
		
		<!--Alerta de sucesso -->
	    <c:if test="${not empty msg }">
        <div class="alert alert-success">
          ${msg}
        </div>
      	</c:if>
	
</body>
</html>