<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Meta</title>
</head>
<body>
	
	<h1>Cadastro de meta</h1>
	
	<form action="meta" method="post">
		
		<!--Nome meta -->
		<div class="form-group">
		<label for="nome-meta">Nome da Meta</label>
		<input type="text" name="nome-meta" id="nome-meta">
		</div>
		
		<!--Data inicio meta -->
		<div class="form-group">
		<label for="data-inicio">Data Inicio Meta</label>
		<input type="date" name="data-inicio" id="data-inicio">
		</div>
		
		<!--Data final meta -->
		<div class="form-group">
		<label for="data-final">Data final Meta</label>
		<input type="date" name="data-final" id="data-final">
		</div>
		
		<!--Valor meta -->
		<div class="form-group">
		<label for="valor-meta">Valor da Meta</label>
		<input type="text" name="valor-meta" id="valor-meta">
		</div>
		
		<!--Status meta -->
		<div class="form-group">		
		<label for="status-meta">Tipo de Meta</label>
		<input type="text" name="status-meta" id="status-meta">
		</div>
		
		<!--Progresso atual -->	
		<div class="form-group">	
		<label for="progresso-atual">Progresso Atual</label>
		<input type="text" name="progresso-atual" id="progresso-atual">	
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