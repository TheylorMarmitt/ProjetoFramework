
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
	<table style="width:50%; margin:0 auto">
			<thead>
				<tr>			
					<th style="text-align:center; border-style:solid">Código</th>
					<th style="text-align:center; border-style:solid">Nome</th>
					<th style="text-align:center; border-style:solid">Pontos</th>
					
				</tr>
			</thead>
			<c:forEach	var="time" items="${times}">
				<tr>
					<td style="text-align:center; border-style:solid; border-color:#eee" id="codigo">${time.codigo }</td>
					<td style="text-align:center; border-style:solid; border-color:#eee" id="nome">${time.nome }</td>
					<td style="text-align:center; border-style:solid; border-color:#eee" id="pontuacao">${time.pontuacao}</td>
				</tr>			
			</c:forEach>
		</table>	
		<br>
		<a href = "<c:url value = "/time/cadastro"/>"><button style="margin-left: 25%">Cadastrar mais times</button></a>
		<br>
		<a href = "<c:url value = "/time/jogar"/>"><button style="margin-left: 25%">Jogar novamente</button></a>
	
	</body>
</html>