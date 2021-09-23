<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String usuario = request.getParameter("usuario");
	String password = request.getParameter("pass");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/TiendaGenerica8","root","root");
	PreparedStatement ps = conexion.prepareStatement("select * from usuarios where usuario = ? and password = ?");
	ps.setString(1, usuario);
	ps.setString(2, password);
	ResultSet resultado= ps.executeQuery();
	int i = 0;
	while(resultado.next()){
		i++;
	}
	if (i == 1){
		out.println("Usuario autorizado");
		response.sendRedirect("Principal.jsp");
	}else{
		out.println("Usuario o contraseña incorrecta");
		response.sendRedirect("index.html");
	}
%>

</body>
</html>