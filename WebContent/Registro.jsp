<html>
<meta-charse="utf-8">
<body>
<h1> Usuarios Registrados</h1>

Usuario Confirmado: <br/><br/>

Nombre: <%=request.getParameter("nombre") %> &nbsp; Apellido: <%=request.getParameter("apellido") %> 

<br/><br/>

<jsp:include page="Fecha.jsp"></jsp:include>
</body></html>