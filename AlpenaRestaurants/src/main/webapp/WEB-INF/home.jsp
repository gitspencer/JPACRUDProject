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

<a href="add.jsp">Add Restaurant</a><br>
<a href="update.jsp">Update Restaurant</a><br>
<a href="delete.jsp">Delete Restaurant</a><br>
<a href="getRestaurant.jsp">Find Restaurant</a><br>
<a href="restaurant.jsp">Show All Restaurants</a>

</body>
</html>