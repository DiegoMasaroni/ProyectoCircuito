<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

conexion c = new conexion();
Connection cn = c.conectar();


try{
	
Statement stm = cn.createStatement();
ResultSet tablaResultado= stm.executeQuery("SELECT max(PK_nroCupon) FROM cupones");   //nro de cupon par despues poder modificar
while(tablaResultado.next()){
	 int nrocupon= tablaResultado.getInt(1);
 
	String sql = "UPDATE cupones Set nombre= '"+nombre+"', apellido= '"+apellido+"',mail= '"+mail+"',cantidad= '"+cantidad+"',tipoEstadia= '"+categoria+"',totalPagar= '"+totalapagar+"' WHERE PK_nroCupon="+nrocupon+"";
//	out.println(sql);
	stm.executeUpdate(sql);
 }
//aca tengo que llamar a muestraCompra.jsp donde puedo borrar o imprimir cupon de pago
}catch(Exception e){
// out.println("No se enviaron los datos"); // tira este erro pero funciona igual
 e.printStackTrace();
}


%>
<jsp:include page="confirmarCancelar.jsp"></jsp:include>
</body>
</html>