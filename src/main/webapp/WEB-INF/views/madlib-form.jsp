<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Madlib form</title>
</head>
<body>


	<form action="madlib-result">
		<p>
			Enter adjective: <input type="text" name="adj" />
		</p>
		<p>
			Enter verb: <input type="text" name="verb" />
		</p>
		<button>Submit</button>

	</form>

</body>
</html>