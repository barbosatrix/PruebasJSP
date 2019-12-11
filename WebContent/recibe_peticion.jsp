<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
	//Leyendo datos del formulario
	String ciudad_favorita = request.getParameter("ciudad_favorita");

	Cookie laCookie= new Cookie("agencia_viajes.ciudad_favorita",ciudad_favorita);
	laCookie.setMaxAge(365*24*60*60);//un año segun calculo del parametro
	
	//Enviar a usuario
	
	response.addCookie(laCookie);

%>

Gracias por enviar tus referencias

<a href= "agencia_viajes.jsp">Ir a la agencia de viajes</a>

</body>
</html>