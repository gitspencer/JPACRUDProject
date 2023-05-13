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

	<h1>Find Restaurant</h1>
	<form action="get.do">
		Search by id: <input type="text" name="id"> <input type="submit">
	</form>

	${restaurantList}

</body>
</html>