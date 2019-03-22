<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/cadastro.css" media="screen">
</head>
<body>
	<form action= '<c:url value="/time/enviar"></c:url>'  method= "post">
		<label>Código: </label> <input required="required" type="text" name="time.codigo" />
		<br>
		<label>Time: </label> <input required="required" type="text" name="time.nome" />
		
		<br>
		<input type="submit" name="Enviar" />
	</form>

</body>
</html>