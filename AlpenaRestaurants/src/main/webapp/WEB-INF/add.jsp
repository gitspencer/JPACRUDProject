<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Restaurant</title>
</head>
<body>
<%-- <jsp:include page="navbar.jsp"></jsp:include> --%>

<h1>Add an Alpena, MI Restaurant</h1>
	<form action="add.do">
		Restaurant: <input type="text" name="name" required maxlength="100"><br>
		Street: <input type="text" name="street" required maxlength="100"><br>
		Cuisine: <input type="text" name="cuisine" required maxlength="45"><br>
		Website: <input type="text" name="websiteUrl" required maxlength="2000"><br>
		Phone: <input type="text" name="phone" required maxlength="15"><br>
		HappyHour: <input type="radio" name="happyHour" value="true">Yes <input type="radio" name="happyHour" value="false" required>No <br>
		Rating(1-5): <input type="number" name="rating" step="0.1" min="0" max="5" required><br>
		<input type="submit" value="Add Restaurant">
	</form>






</body>
</html>