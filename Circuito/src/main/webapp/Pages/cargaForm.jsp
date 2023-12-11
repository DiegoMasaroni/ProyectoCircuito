<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="circuito.conexion"  %>
<%@page import="java.sql.*"  %>
<%@page import="circuito.calculos"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

//id es autoincremental

String nombre =  request.getParameter("nombre");
String apellido =  request.getParameter("apellido");
String mail =  request.getParameter("mail");
String cantidad =  request.getParameter("cantidad");
String categoria =  request.getParameter("categoria");


int x =Integer.parseInt(request.getParameter("cantidad"));
char z =request.getParameter("categoria").charAt(0);

calculos calcular = new calculos();
double resultado = calcular.calcular(x,z);
String totalapagar = Double.toString(resultado);

//CAMPO ACTIVO es por defecto 1=activo (0 inactivo)


//String sql ="INSERT INTO cupones VALUES (null,'"+nombre+"','"+apellido+"','"+mail+"')";//",'"+cantidad+"','"+tipoestadia+"','"+totalapagar+"')";
String sql = "INSERT INTO cupones( nombre, apellido, mail, cantidad, tipoEstadia, totalPagar) VALUES ('"+nombre+"','"+apellido+"','"+mail+"','"+cantidad+"','"+categoria+"','"+totalapagar+"')";


conexion c = new conexion();
Connection cn = c.conectar();


try{
Statement stm = cn.createStatement();
stm.executeUpdate(sql);

//aca tengo que llamar a muestraCompra.jsp donde puedo borrar o imprimir cupon de pago
}catch(Exception e){
 out.println("No se enviaron los datos");
 e.printStackTrace();
}

%>

<jsp:include page = "confirmarCancelar.jsp"></jsp:include>

</body>
</html>