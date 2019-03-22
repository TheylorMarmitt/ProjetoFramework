<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">

	<head>
		<title>Lista</title>
	</head>
	<body>
		
		<h1 style="margin:0 auto">Classificação</h1>
		<table style="width:50%; margin:0 auto">
			<thead>
				<tr>			
					<th style="text-align:center; border-style:solid">Código</th>
					<th style="text-align:center; border-style:solid">Nome</th>
					<th style="text-align:center; border-style:solid">Pontos</th>
					
				</tr>
			</thead>
			<c:forEach	var="time" items="${timeList}">
				<tr>
					<td id="codigo">${time.codigo }</td>
					<td id="nome">${time.nome } <a href='<c:url value="/time/editar/${time.codigo}"></c:url>'>Editar</a><a href='<c:url value="/time/excluir/${time.codigo}"></c:url>'>Excluir</a></td>
					<td id="pontuacao">${time.pontuacao }</td>
				</tr>			
			</c:forEach>
		</table>	
		
		<h2>Buscar time</h2>
		<form action='<c:url value="/time/buscar"></c:url>' method="get">
			<label>Código</label>
			<input type="text" name="time.codigo"/>
			<button type="submit">Buscar</button>
		</form>
		
		
	</body>
</html>