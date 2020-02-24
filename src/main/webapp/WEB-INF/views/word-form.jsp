<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Word Form</title>
</head>
<body>

	<form action="word-result">

		<p>
			Enter word: <input type="text" name="word" />
		</p>
		<p>
			Enter repetitions: <input type="number" name="rep" />
		</p>
		<button>Submit</button>



	</form>

</body>
</html>