<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<style>
body{
	margin-top:20px;
	margin-left: 50px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/minimal.css"/>
<title>Egg details</title>
</head>
<body>
		<h1>Chicken name: "${chicken.chickenName}"</h1>
		<br>
		<h3>Egg details:</h3>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Egg colour</th>
					<th>Modify</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty eggList}">
					<c:forEach items="${eggList}" var="item">
						<tr>
							<td><c:out value="${item.colour}"></c:out>
							<td><a href="<%=request.getContextPath()%>/Eggs/Modify/${item.id}">Modify</a></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty eggList}">
					<tr>
						<td colspan="5">No available data at the moment.</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<br>
		<a href="<%=request.getContextPath()%>/Farms/">Back</a>
		<br>
</body>
</html>