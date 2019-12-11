<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agencia de Viajes</title>
</head>
<body>


	<%
	//Valor por defecto
	
	String ciudad_favorita="Tokio";
	
	//Leer la cookie dela peticion del navegador
	
	Cookie[] lasCookies = request.getCookies();
	
	//Buscar las prefcerencias
	
	if(lasCookies!=null){
		
		for (Cookie cookie_temporal: lasCookies){
			
			 if("agencia_viajes.ciudad_favorita".equals(cookie_temporal.getName())){
				 
				 ciudad_favorita= cookie_temporal.getValue();
				 
				 break;
				 
			 }
			
		}
		
		
	}

%>
<h1 style="text-align:center">Vuelos</h1>

<h3>Vuelos a <%=ciudad_favorita %> :</h3>

<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>

<h3>Hoteles a <%=ciudad_favorita %> :</h3>

<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>

<h3>Descuentos en restaurantes de <%=ciudad_favorita %> :</h3>

<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>

</body>
</html>