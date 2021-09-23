<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Usuario</title>
</head>
<body>
<h1>Eliminar Usuario</h1>
<%
	int cedula = Integer.parseInt(request.getParameter("cedula"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/TiendaGenerica8","root","root");
	PreparedStatement ps = conexion.prepareStatement("delete from usuarios where cedula_usuario = "+cedula);
	ps.executeUpdate();
	response.sendRedirect("usuarios.jsp");
%>
</body>
</html>