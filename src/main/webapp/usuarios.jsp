<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuarios</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<h1>Usuarios</h1>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/TiendaGenerica8","root","root");
	PreparedStatement ps = conexion.prepareStatement("select * from usuarios");
	ResultSet resultado = ps.executeQuery();
	%>
	<a href = "agregarUsuario.html">Agregar Usuario</a>
	<table border= "2">
		<tr>
			<th>Cedula</th>
			<th>Correo</th>
			<th>Nombre</th>
			<th>Contraseña</th>
			<th>Usuario</th>
			<th colspan = "2"> Acciones</th>
		</tr>
		<% 
			while(resultado.next()){
				
		%>
		<tr>
			<td><%=resultado.getInt("cedula_usuario")%>
			<td><%=resultado.getString("email_usuario")%>
			<td><%=resultado.getString("nombre_usuario")%>
			<td><%=resultado.getString("password")%>
			<td><%=resultado.getString("usuario")%>
			<td><a href ="editar.jsp?cedula=<%= resultado.getInt("cedula_usuario") %>">Editar</a></td>
			<td><a href ="eliminar.jsp?cedula=<%= resultado.getInt("cedula_usuario") %>">Eliminar</a></td>
		</tr>
		<%} %>
	</table>
</body>
</html>