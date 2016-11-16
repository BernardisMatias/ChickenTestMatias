<!-- 
In this page you select the name of the chicken to add eggs to and the colour of the egg.
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<style>
body {
	margin-top: 70px;
	margin-left: 80px;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/minimal.css"/>
<title>Add Egg</title>
</head>
<body>
	<h2 >Complete the following fields to create your egg:</h2>
	<a><u>Select your chicken:</u></a>
	<br>
	<br>
	<form:form action="../Add" method="post" modelAttribute="egg">
			<form:select path="chickenId.id">
				<form:option value="0">Choose a chicken</form:option>
					<c:forEach items="${chickenList}" var="item">
						<form:option value="${item.id}">
							<c:out value="${item.chickenName}"></c:out>
						</form:option>
					</c:forEach>
			</form:select>
				<br>
				<br>
				<a><u>Type de colour:</u></a>
				<br>
				<br>
				Colour: <input type="text" name="colour" value="">
				<br>
				<br>
				<input type="submit"  class="btn btn-success" value="Create">
				<br>
		<a href="<%=request.getContextPath()%>/Farms/">Back</a>
		<br>
	</form:form>
</body>
</html>