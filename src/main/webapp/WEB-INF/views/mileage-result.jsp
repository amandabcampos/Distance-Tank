<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mileage Results</title>
</head>
<body>
	<h3>Result</h3>
	<h4>Remaining range:</h4>
	<p>${ mpg }* ${ gallons } = ${ range }</p>
	<h4>Remaining distance:</h4>
	<p>${ mpg } * ${ gallons } - ${ distance } = ${ remainingDistance }</p>


	<c:choose>
  		<c:when test="${message=='You need more gas'}"> 
			<p style="color: red">${ message }</p>
			<br />
		</c:when>
		<c:otherwise>
			<p style="color: green">${ message }</p>
			<br />
		</c:otherwise>
	</c:choose>

	<p>
		<a href="/">Home</a>
	</p>

</body>
</html>