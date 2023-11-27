<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Despesa</title>
</head>
<body>
	
	<h1>Cadastro de despesa</h1>
	
	<form action="despesa" method="post">
		
		<!--Nome despesa -->
		<div class="form-group">
		<label for="nome-despesa">Nome Despesa</label>
		<input type="text" name="nome-despesa" id="nome-despesa">
		</div>
		
		<!--Valor despesa -->
		<div class="form-group">
		<label for="valor-despesa">Valor Despesa</label>
		<input type="text" name="valor-despesa" id="valor-despesa">
		</div>
		
		<!--Data despesa -->
		<div class="form-group">
		<label for="data-despesa">Data Despesa</label>
		<input type="date" name="data-despesa" id="data-despesa">
		</div>
		
		<!--Tipo operação -->
		<div class="form-group">		
		<label for="tipo-operacao">Tipo Operação</label>
		<input type="text" name="tipo-operacao" id="tipo-operacao">
		</div>
		
		<!--Frequencia despesa -->	
		<div class="form-group">	
		<label for="frequencia-despesa">Frequencia Despesa</label>
		<input type="text" name="frequencia-despesa" id="frequencia-despesa">	
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