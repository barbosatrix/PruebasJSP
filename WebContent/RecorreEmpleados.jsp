<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@page import="java.util.*, java.sql.*, sinregreso.jsptags.Empleado" %>
    
    <%
    
    ArrayList<Empleado> datos= new ArrayList<>();
    
    try{
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	
    	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");
    	
    	Statement miStatement = miConexion.createStatement();
    	
    	String instruccionSql= "SELECT * FROM EMPLEADOS";
    	
    	ResultSet rs = miStatement.executeQuery(instruccionSql);
    			
    	while (rs.next()){
    		
    		datos.add(new Empleado(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4)));
    		
    	}		
    	
    	rs.close();
    	
    	miConexion.close();
    	
    }catch(Exception e){
    	
    	out.println("Error en la conexion "+e);
    }
    
    pageContext.setAttribute("losEmpleados",datos);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consulta Usuarios con JSP Tags</title>

<style type="text/css">

.cabecera{
font-weigth:bold;}

</style>


</head>
<body>

<table border="1">

<tr class="cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td></tr>
<c:forEach var="EmpTemp" items="${losEmpleados}">
<tr>
	<td>${ EmpTemp.nombre}</td><td> ${ EmpTemp.apellido}</td><td> ${EmpTemp.puesto }</td><td> ${ EmpTemp.salario} <br/> 
</tr>	
</c:forEach>

</table>











</body>
</html>