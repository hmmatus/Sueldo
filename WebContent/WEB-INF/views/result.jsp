<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina principal</title>
</head>
<body>
	<h2>Sueldo: </h2><c:out value="$ ${sueldo}"></c:out><br>
	<h2>AFP: </h2><c:out value="$ ${afp}"></c:out><br>
	<h2>ISSS: </h2><c:out value="$ ${social}"></c:out><br>
	<h2>Renta: </h2><c:out value="$ ${renta}"></c:out><br>
	<h2>Porcentaje de renta: </h2><c:out value="${total} %"></c:out>
	
	<h2>Sueldo sin rentas:</h2>
	<c:choose>
		<c:when test="${total<10.25}">
			<p style="color:green"><c:out value="${sueldor}"></c:out></p>
		</c:when>
		<c:when test="${total<20.25}">
			<p style="color:yellow"><c:out value="${sueldor}"></c:out></p>
		</c:when>
		<c:when test="${total<30.25}">
			<p style="color:orange"><c:out value="${sueldor}"></c:out></p>
		</c:when>
		<c:otherwise>
			<p style="color:red"><c:out value="${sueldor}"></c:out></p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>