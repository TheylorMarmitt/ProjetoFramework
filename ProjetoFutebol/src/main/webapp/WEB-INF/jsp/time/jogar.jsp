<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action='<c:url value="/time/resultado"></c:url>' method="post">
		<select name="t1codigo">
			<c:forEach var="t1" items="${times}">
				<option  value="${t1.codigo}">${t1.nome}</option>
			</c:forEach>
		</select> 
		<input type="text" name="gol1" /> <br> 
		<select name="t2codigo">
			<c:forEach var="t2" items="${times}">
				<option  value="${t2.codigo}">${t2.nome}</option>
			</c:forEach>
		</select> <input type="text" name="gol2" /> 
		<br> 
		<input style="margin-left: 18%" type="submit"name="enviar" />
	</form>
	<a href = "<c:url value = "/time/cadastro"/>"><button style="margin-left: 18%">Cadastrar mais times</button></a>

</body>	
</html>