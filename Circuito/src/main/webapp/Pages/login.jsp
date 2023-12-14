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
//out.println(usuarioIngresado);
//out.println(contrasenaIngresada);

conexion c = new conexion();
Connection cn = c.conectar();

try{
	
Statement stm = cn.createStatement();
ResultSet tablaResultado= stm.executeQuery("SELECT usuario, contrasenia FROM usuarios"); 
//out.println(tablaResultado);
while(tablaResultado.next()){
	//out.println(usuarioIngresado); 
//	out.println(tablaResultado.getString(1));
	//out.println(contrasenaIngresada); 
	//out.println(tablaResultado.getString(2)); 
	 
	 
	 if ( usuarioIngresado.equals(tablaResultado.getString(1)) && contrasenaIngresada.equals(tablaResultado.getString(2))) {
		%>
		<jsp:include page="estadia.html"></jsp:include>
<%	 }else{%>
	     <jsp:include page="../index.html"></jsp:include>
	 <%}

 }
} catch(Exception e){
 e.printStackTrace();
}

%>


</body>
</html>