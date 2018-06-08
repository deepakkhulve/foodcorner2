<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>

<!-- Latest compiled and minified CSS -->


<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color: red;">

	

	<form:form style="margin: auto; width: 80%; text-align:center;"
		action="${pageContext.request.contextPath}/AddCategoryToDB"
		method="post" modelAttribute="cat">
		<br>
		<br>
		<br>
		<br>
		<h1
			style="color:red; text-transform: Uppercase; margin: auto; width: 80%; text-align: center;">Add
			Category</h1>
		<br>

		<form:input style=" color:red; " path="name" required=""
			placeholder="Enter Category Name" class="form-control" />

		<br>

		<form:input style="resize: none; color:red;" path="description"
			placeholder="Enter Category Description" required=""
			class="form-control"></form:input>

		<br>

		<form:input path="" type="submit" value="Submit"
			class="btn btn-success" />

	</form:form>


	
</body>
</html>