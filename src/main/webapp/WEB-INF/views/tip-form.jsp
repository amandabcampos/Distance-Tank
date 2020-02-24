<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tip Calculator form</title>
</head>
<body>

	<form action="tip-result">
	
	<p>
	<label>Total: </label>
	<input type="number" name="total">
	</p>
	
	<label for="first">15%</label>
	<input type="radio" id="first" name="percentage" value="15"><br>
	<label for="second">18%</label>
	<input type="radio" id="second" name="percentage" value="18"><br>
	<label for="third">20%</label>
	<input type="radio" id="third" name="percentage" value="20"><br>
	<label for="custom">Custom</label>
	<input type="radio" id="custom" name="percentage" value=0><br>
	
	<p>
	<label>Custom Tip %: </label>
	<input type="number" name="custom_tip" value=0>
	</p>
	
	<p><button>Calculate tip</button></p>
	
	
	</form>

</body>
</html>