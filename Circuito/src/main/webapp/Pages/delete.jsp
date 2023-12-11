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


conexion c = new conexion();
Connection cn = c.conectar();


try{
	
Statement stm = cn.createStatement();
ResultSet tablaResultado= stm.executeQuery("SELECT max(PK_nroCupon) FROM cupones");   //nro de cupon par despues poder modificar
while(tablaResultado.next()){
	 int nrocupon= tablaResultado.getInt(1);
 
	String sql = "UPDATE cupones Set activo= '0' WHERE PK_nroCupon="+nrocupon+"";
//	out.println(sql);
	stm.executeUpdate(sql);
 }
//aca tengo que llamar a muestraCompra.jsp donde puedo borrar o imprimir cupon de pago
}catch(Exception e){
// out.println("No se enviaron los datos"); // tira este erro pero funciona igual
 e.printStackTrace();
}


%>
<jsp:include page="../index.html"></jsp:include>
</body>
</html>