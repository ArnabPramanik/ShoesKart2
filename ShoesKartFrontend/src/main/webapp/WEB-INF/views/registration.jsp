<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<title>Registration page</title>
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
	<form:form method="POST" action="/ShoesKartFrontend/register"
		modelAttribute="user">
		<div class="form-group" >
			<label>User name</label>
			<form:input class="form-control" path="username" required="required" />
		</div>
		<div class="form-group">
			<label>Password:</label>
			<form:input type="password" class="form-control" path="password" required="required" />
		</div>
		<div class="form-group">
			<label>Email address:</label>
			<form:input type="email" class="form-control" path="email" required="required"/>
		</div>
		<div class="form-group">
			<label>Name</label>
			<form:input type="text" class="form-control" path="custname" required="required"/>
		</div>
		<div class="form-group">
			<label>Role</label>
			<form:select path="role">
				<form:option value="0" label="select" />
				<form:options items="${role_list}" required="required"/>
			</form:select>

		</div>
		<div class="form-group">
			<label>Address</label>
			<form:input type="text" class="form-control" path="address"  required="required"/>
		</div>
		<div class="form-group">
			<label>Mobile</label>
			<form:input type="number" class="form-control" path="mobile" required="required" />
		</div>
		<div class="form-group">
			<form:hidden class="form-control" path="enabled" value="TRUE" />
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form:form>
</body>
</html>