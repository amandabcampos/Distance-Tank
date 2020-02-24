<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mileage Form</title>
</head>
<body>

	<form action="/mileage-result">
		<p>
			Mileage(MPG): <input type="number" name="mpg" />
		</p>
		<p>
			Gallons in tank: <input type="number" name="gallons" />
		</p>
		<p>
			Trip distance: <input type="number" min="0" step="0.01"
				name="distance" />
		</p>
		<p>
			<button type="submit">Enter</button>
		</p>
	</form>

</body>
</html>