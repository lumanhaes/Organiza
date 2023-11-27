<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Receita</title>
</head>
<body>

		
<!--Tabela de visualização -->
      <div class="container">
      <h1>Lista de reeitas</h1>
      <table class="table table-striped">
      <tr>
       <th>Nome da receita</th>
       <th>Valor da receita</th>
       <th>Data da receita</th>				
       <th>Tipo de operação</th>				
       <th>Frequencia da receita</th>				
      </tr>
      
      <c:forEach items="${receita}" var="r">
      <tr>
       <td>${r.nomeReceita}</td>
       <td>${r.valorReceita}</td>
       <td>${r.dataReceita}</td>
       <td>${r.tipoOperacao}</td>
       <td>${r.frequenciaReceita}</td>
      </tr>
      </c:forEach>
      </table>
      </div>
		
	
</body>
</html>