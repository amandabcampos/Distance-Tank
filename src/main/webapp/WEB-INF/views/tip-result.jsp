<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tip Results</title>
</head>
<body>

	<p>
		Tip: $<fmt:formatNumber type="number" maxFractionDigits="2" value="${tip}" />
	</p>

	<p>
		<a href="/">Home</a>
	</p>

</body>
</html>