<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Finder</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<h3>${restaurant.name }</h3>
	ID: ${restaurant.id }
	<br> Google Rating: ${restaurant.rating }
	<br> Type: ${restaurant.cuisine }
	<br> Happy Hour: 
	<c:if test="${restaurant.happyHour == false }">
		<em>No</em>
	</c:if>
	<c:if test="${restaurant.happyHour == true }">
		<em>Yes</em>
	</c:if>
	<br> Address: ${restaurant.street }
	<br> Phone: ${restaurant.phone }
	<br> Website:
	<a href="${restaurant.websiteUrl }">${restaurant.name }</a>

</body>
</html>