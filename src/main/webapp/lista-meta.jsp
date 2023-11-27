<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista meta</title>
</head>
<body>

		
<!--Tabela de visualização -->
      <div class="container">
      <h1>Lista de metas</h1>
      <table class="table table-striped">
      <tr>
       <th>Nome da meta</th>
       <th>Data de inicio</th>
       <th>Data final</th>				
       <th>Valor da meta</th>				
       <th>Status da meta</th>				
       <th>Progresso atual</th>				
      </tr>
      
      <c:forEach items="${meta}" var="m">
      <tr>
       <td>${m.nomeMeta}</td>
       <td>${m.dataInicio}</td>
       <td>${m.dataFinal}</td>
       <td>${m.valorMeta}</td>
       <td>${m.statusMeta}</td>
       <td>${m.progressoAtual}</td>
      </tr>
      </c:forEach>
      </table>
      </div>
		
	
</body>
</html>