<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Restaurant</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<h1>Find Restaurant</h1>
	<form action="getRestaurant.do">
		Search by id: <input type="text" name="id"> <input
			type="submit">
	</form>


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
					<td>${restaurant.name }</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>





</body>
</html>