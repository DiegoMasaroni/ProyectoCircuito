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
conexion c = new conexion();
Connection cn = c.conectar();

//PreparedStatement ps;
//ps = cn.prepareStatement("select * from cupones where activo ='1'");
//ResultSet rs =ps.executeQuery();

Statement stm = cn.createStatement();
ResultSet TR= stm.executeQuery("select * from cupones where activo ='1'");   //nro de cupon par despues poder modificar

%>
<table>
<tr>
<th>PK_nroCupon</th>
<th>nombre</th>
<th>apellido</th>
<th>mail</th>
<th>cantidad</th>
<th>tipo de Estadia</th>
<th>total a Pagar</th>
</tr>
<%
while (TR.next()){;
%>
<tr>
<td><%TR.getString(1);%> </td>
<td><%TR.getString(2);%> </td>
<td><%TR.getString(3);%> </td>
<td><%TR.getString(4);%> </td>
<td><%TR.getString(5);%> </td>
<td><%TR.getString(6);%> </td>
<td><%TR.getString(7);%> </td>
</tr>	
<%
};
%>	
</table>

</body>
</html>