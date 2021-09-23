<%@page import="co.edu.mintic.Calculos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Primer JSP</title>
<style >
	body{
		background-color: gray;
		}
		h1{
			color:white;
		}
		span{
			color:red;
		}
</style>
</head>
<body>
	<h1>Primer JSP</h1>
	<a a href = "index.html">Volver</a>
	La fecha del sistema:<span><%= new java.util.Date() %></span><br>
	convertir a mayúsculas: <%= new String("Daniel").toUpperCase() %><br>
	la suma de 5 y 7 es: <%= 5+7 %><br>
	10 es mayor que 100? <%= 10>100 %>
	
	<% 
		for (int i=0; i<10; i++){
			out.println("<br>Este es el mensaje "+i);
		}
	%>
	
	<%! 
	private int resultado;
	
	public int metodoSuma(int num1, int num2){
		resultado = num1 + num2;
		return resultado;
	}
	%>
	<br>
	<%= metodoSuma(7,5) %>
	<br>
	la resta de 8 y 3 es: <%=Calculos.metodoResta(8, 3) %><br>
	
	Petición datos del navegador <%= request.getHeader("User-Agent") %><br>
	Petición de idioma utilizado <%= request.getLocale() %>	
	
	<jsp:include page = "contenido.jsp"></jsp:include>
</body>
</html>