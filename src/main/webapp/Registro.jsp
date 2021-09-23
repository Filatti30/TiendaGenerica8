<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>
<body>
	<h2>Usuario</h2>
	Usuario confirmado:<br>
	Usuario: <%=request.getParameter("usuario") %>
	<br>
	Pasword: <%=request.getParameter("pass") %>
</body>
</html>