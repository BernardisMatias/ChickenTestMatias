<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Chicken List</title>
<style type="text/css">
body {
	margin-top:20px;
	margin-left: 40px;
}
a{
  font: 100% sans-serif;
  margin-left: 10px;
  margin-right: 10px;
}
</style>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/minimal.css"/>
<body>
<h1>Welcome!</h1>
<br>
		<div class="page-header">
			<h3>Farm: Uncle Eddys farm</h3>
		</div>
		<br>
		<table class="table table-responsive">
			<thead>
				<tr>
					<th>Chicken</th>
					<th>Eggs / Details</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty chickenList}">
					<c:forEach items="${chickenList}" var="item">
						<tr>
							<td><c:out value="${item.chickenName}"></c:out></td>
							<td><strong><c:out value="${item.eggList.size()} /"></strong></c:out><a href="<%=request.getContextPath()%>/Eggs/Details/${item.id}">(details)</a></td>
							<td><a href="<%=request.getContextPath()%>/Chickens/Delete/${item.id}">Delete chicken</a></td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty chickenList}">
					<tr>
						<td colspan="5">No available data at the moment.</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<br>
		<div> 
			<a  href="<%=request.getContextPath()%>/Eggs/Add/">Add a new egg</a>
		</div> 
</body>
</html>