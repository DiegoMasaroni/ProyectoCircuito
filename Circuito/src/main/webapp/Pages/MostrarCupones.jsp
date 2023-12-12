<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="circuito.conexion"  %>
<%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cupones</title>
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<%
//Connection cn= conexion.conectar();
conexion c = new conexion();
Connection cn = c.conectar();

PreparedStatement ps;
ps = cn.prepareStatement("select * from cupones where activo ='1'");
ResultSet rs =ps.executeQuery();

//Statement stm = cn.createStatement();
//ResultSet TR= stm.executeQuery("select * from cupones where activo ='1'");   

%>
<table class="table table-striped">
<tr>
<th>Nro. Cupón</th>
<th>Nombre</th>
<th>Apellido</th>
<th>Mail</th>
<th>Cantidad</th>
<th>Tipo de Estadia</th>
<th>Total a Pagar</th>
</tr>
<% while (rs.next()){%>
<tr>
<td><%=rs.getString(1)%> </td>
<td><%=rs.getString(2)%> </td>
<td><%=rs.getString(3)%> </td>
<td><%=rs.getString(4)%> </td>
<td><%=rs.getString(5)%> </td>
<td><%=rs.getString(6)%> </td>
<td><%=rs.getString(7)%> </td>
</tr>	
<%}%>	
</table>

</body>
</html>