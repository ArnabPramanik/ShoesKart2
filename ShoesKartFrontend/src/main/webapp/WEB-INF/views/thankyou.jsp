<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>

<head>
<title>HomePage</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<%@ include file = "navbarstyle.jsp" %>
<body>
	<%@ include file = "navbar.jsp" %>



	<h1>Thank you for purchasing</h1>
	<a class="btn btn-danger" href="/ShoesKartFrontend/user/home">Home</a>
</body>
</html>