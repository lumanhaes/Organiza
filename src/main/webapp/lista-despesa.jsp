<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Despesa</title>
</head>
<body>

		
<!--Tabela de visualização -->
      <div class="container">
      <h1>Lista de despesa</h1>
      <table class="table table-striped">
      <tr>
       <th>Nome da depesa</th>
       <th>Valor da despesa</th>
       <th>Data da despesa</th>				
       <th>Tipo de operação</th>				
       <th>Frequencia da despesa</th>				
      </tr>
      
      <c:forEach items="${despesa}" var="d">
      <tr>
       <td>${d.nomeDespesa}</td>
       <td>${d.valorDespesa}</td>
       <td>${d.dataDespesa}</td>
       <td>${d.tipoOperacao}</td>
       <td>${d.frequenciaDespesa}</td>
      </tr>
      </c:forEach>
      </table>
      </div>
		
	
</body>
</html>