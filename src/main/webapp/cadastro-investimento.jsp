<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Investimento</title>
</head>
<body>
	
	<h1>Cadastro de Investimento</h1>
	
	<form action="investimento" method="post">
		
		<!--Nome investimento -->
		<div class="form-group">
		<label for="nome-investimento">Nome Investimento</label>
		<input type="text" name="nome-investimento" id="nome-investimento">
		</div>
		
		<!--Valor investimento -->
		<div class="form-group">
		<label for="valor-investimento">Valor Investimento</label>
		<input type="text" name="valor-investimento" id="valor-investimento">
		</div>
		
		<!--Data investimento -->
		<div class="form-group">
		<label for="data-investimento">Data Investimento</label>
		<input type="date" name="data-investimento" id="data-investimento">
		</div>
		
		<!--Tipo investimento -->
		<div class="form-group">		
		<label for="tipo-operacao">Tipo Operação</label>
		<input type="text" name="tipo-operacao" id="tipo-operacao">
		</div>
		
		<!--Frequencia investimento -->	
		<div class="form-group">	
		<label for="tipo-investimento">Tipo Investimento</label>
		<input type="text" name="tipo-investimento" id="tipo-investimento">	
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