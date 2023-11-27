<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Receita</title>
</head>
<body>
	
	<h1>Cadastro de Receita</h1>
	
	<form action="receita" method="post">
		
		<!--Nome receita -->
		<div class="form-group">
		<label for="nome-receita">Nome da Receita</label>
		<input type="text" name="nome-receita" id="nome-receita">
		</div>
		
		<!--Valor receita -->
		<div class="form-group">
		<label for="valor-receita">Valor da Receita</label>
		<input type="text" name="valor-receita" id="valor-receita">
		</div>
		
		<!--Data receita -->
		<div class="form-group">
		<label for="data-receita">Data da Receita</label>
		<input type="date" name="data-receita" id="data-receita">
		</div>
		
		<!--Tipo operação -->
		<div class="form-group">		
		<label for="tipo-operacao">Tipo Operação</label>
		<input type="text" name="tipo-operacao" id="tipo-operacao">
		</div>
		
		<!--Frequencia receita -->	
		<div class="form-group">	
		<label for="frequencia-receita">Frequencia da Receita</label>
		<input type="text" name="frequencia-receita" id="frequencia-receita">	
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