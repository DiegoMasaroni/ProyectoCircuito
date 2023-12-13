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
//Connection cn= conexion.conectar();
conexion c = new conexion();
Connection cn = c.conectar();

PreparedStatement ps;
ps = cn.prepareStatement("select * from cupones where activo ='1'");
ResultSet rs =ps.executeQuery();
%>


</body>
</html>