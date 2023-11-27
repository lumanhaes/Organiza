<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Investimento</title>
</head>
<body>

		
<!--Tabela de visualização -->
      <div class="container">
      <h1>Lista de investimento</h1>
      <table class="table table-striped">
      <tr>
       <th>Nome do invetimento</th>
       <th>Valor do investimento</th>
       <th>Data do investimento</th>				
       <th>Tipo de operação</th>				
       <th>Tipo de investimento</th>				
      </tr>
      
      <c:forEach items="${investimento}" var="i">
      <tr>
       <td>${i.nomeInvestimento}</td>
       <td>${i.valorInvestimento}</td>
       <td>${i.dataInvestimento}</td>
       <td>${i.tipoOperacao}</td>
       <td>${i.tipoInvestimento}</td>
      </tr>
      </c:forEach>
      </table>
      </div>
		
	
</body>
</html>