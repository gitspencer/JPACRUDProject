<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alpena Restaurants</title>
</head>
<body>
<jsp:include page="../navbar.jsp"></jsp:include>

<h1>Alpena Restaurant JPACRUD</h1>

<a href="getRestaurant.jsp">Find Restaurant</a><br>
<a href="add.jsp">Add Restaurant</a><br>
<a href="delete.jsp">Delete Restaurant</a><br>


${restaurantList }<br>
<hr>
			<h3>Click name to update restaurant.</h3>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Restaurant</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="restaurant" items="${restaurantList }">
					<tr>
						<td>${restaurant.id }</td>
						<td><a href="update.do?id=${restaurant.id}">${restaurant.name }</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


</body>
</html>