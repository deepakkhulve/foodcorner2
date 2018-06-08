<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Add Users</title>

</head>
<body style="background-color: white;">



	<form:form style=" font-family:Concert One; margin: auto; width: 60%; text-align:center;"
		name="Form"
		action="${pageContext.request.contextPath}/UpdatedUsersToDB"
		method="post" modelAttribute="usr">
		<br>
		<br>
		<br>
		<br>
		<h2 style="color: white; text-transform: Uppercase; margin: auto; text-align: center;">UPDATE USERS</h2>
		<br>


		<form:input path="username" class="form-control" />
		<form:hidden path="id" class="form-control" />

		<br>
		<form:input path="email" class="form-control" />

		<br>
		<form:input path="password" class="form-control" />

		<br>
		<form:input path="phone" class="form-control" />
		<br>
		<form:input path="role" class="form-control" />

		<br>
		<form:input path="shipAddress" class="form-control" />

		<br>
		<form:input path="billAddress" class="form-control" />
		<br>

		<form:input path="" type="submit" value="Save" class="btn btn-success" />
		<br>

	</form:form>


	<br>

</body>
</html>