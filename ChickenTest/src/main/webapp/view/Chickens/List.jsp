<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>List</title>
<style type="text/css">
body {
	margin-top: 70px;
	margin-left: 40px;
}
a{
  font: 110% sans-serif;
}
</style>
<body>
		<div class="page-header">
			<h1>Farm: Uncle Eddy's farm</h1>
		</div>
		<table class="table table-striped" border = 1>
			<thead>
				<tr>
					<th>Chicken</th>
					<th>Eggs quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty chickenList}">
					<c:forEach items="${chickenList}" var="chicken">
						<tr>
							<td><c:out value="${chicken.chickenName}"></c:out></td>
							<td><c:out value="${chicken.eggId.egg.size()}"></c:out></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty farmList}">
					<tr>
						<td colspan="5">No available data at the moment.</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<br>
		<%-- <div> <a href="<%=request.getContextPath()%>/Farms/New">Nueva Granja</a> </div> --%>

</body>
</html>