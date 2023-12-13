<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="circuito.conexion"  %>
<%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String usuarioIngresado = request.getParameter("usuario");
String contrasenaIngresada = request.getParameter("contrasena");

conexion c = new conexion();
Connection cn = c.conectar();

try{
	
Statement stm = cn.createStatement();
ResultSet tablaResultado= stm.executeQuery("SELECT usuario, contraseña FROM usuarios");   
while(tablaResultado.next()){
	 if (usuarioIngresado== tablaResultado.getString(1) && contrasenaIngresada == tablaResultado.getString(2)){
		 <%@ include file="estadia.html" %>
		 
	 }

 }
} catch(Exception e){
 e.printStackTrace();
}

%>


</body>
</html>