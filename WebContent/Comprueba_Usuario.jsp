<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>  

<% 

	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
		
	Connection miConexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root",""); 
	
	PreparedStatement c_preparada= miConexion.prepareStatement("SELECT * FROM usuarios WHERE usuario =? and contrasena =? ");
	
	c_preparada.setString(1, usuario);
	
	c_preparada.setString(2, contra);
	
	ResultSet miResultSet = c_preparada.executeQuery();
	
	if(miResultSet.absolute(1)) out.println("usuario autorizado");
	
	else out.println("No hay usuarios con esos datos");
			
	}catch(Exception e){
		
		out.println("Ha habido un error" + e);
		
	}

	
%>



</body>
</html>