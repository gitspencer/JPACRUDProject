<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Restaurants</title>
</head>
<body>

${restaurant.id }
${restaurant.name }
${restaurant.street }
${restaurant.cuisine }
${restaurant.websiteUrl }
${restaurant.phone }
${restaurant.happyHour }
${restaurant.rating }

</body>
</html>