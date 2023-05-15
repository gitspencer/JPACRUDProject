<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Restaurant</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<h1>Add an Alpena, MI Restaurant</h1>
	<form action="update.do">
		<input type="hidden" name="ID" value="${restaurant.id }">
		Restaurant: <input type="text" name="name" value="${restaurant.name }" required maxlength="100"><br>
		Street: <input type="text" name="street" value="${restaurant.street }" required maxlength="100"><br>
		Cuisine: <input type="text" name="cuisine" value="${restaurant.cuisine }" required maxlength="45"><br>
		Website: <input type="text" name="websiteUrl" value="${restaurant.website }" required maxlength="2000"><br>
		Phone: <input type="text" name="phone" value="${restaurant.phone }" required maxlength="15"><br>
		
		Happy Hour(Currently = 
		<c:if test="${restaurant.happyHour == false }"><em>No</em></c:if>
		<c:if test="${restaurant.happyHour == true }"><em>Yes</em></c:if>:)
		<input type="radio" name="happyHour" value="true">Yes <input type="radio" name="happyHour" value="false" required>No <br>
		
		Rating(1-5) (Currently = ${restaurant.happyHour }): <input type="number" name="rating" step="0.1" min="0" max="5" required><br>
		<input type="submit" value="Add Restaurant">
	</form>

</body>
</html>