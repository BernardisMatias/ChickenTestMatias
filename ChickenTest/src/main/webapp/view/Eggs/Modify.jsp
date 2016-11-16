<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify egg</title>
</head>
<body>

	<h1>Modify egg</h1>
	<br>
	<br>
	<form:form action="../Modify/" method="post" modelAttribute="egg">
	<form:hidden path="id" value="${egg.id}"/>
	<form:hidden path="chickenId.id" value="${egg.chickenId.id}"/>
	Type a new colour: <input type="text" name="colour" value="${egg.colour}">
	<br>	
	<br>
	<input type="submit" value="Modify"> 
	</form:form>
</body>
</html>