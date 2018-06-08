<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico" rel="stylesheet">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Category</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="" />

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color: white;">




	<table
		style="font-family:Concert One; margin: auto; border-style: solid; border-width: 5px; border-color: red; width: 80%; 
		text-align: center;"
		class="table">
		<br>
		<br>
		<br>
		<br>
		<h2 style="font-family:Concert One; margin: auto; color: red; text-align: center;"><u>VIEW CATEGORY</u></h2>
		<br>
		<br>
		<b>
			<thead style="color: white; background-color: white;">
				<tr>
					<td style="border-left: solid 1px black;">ID</td>
					<td style="border-left: solid 1px black;">NAME</td>
					<td style="border-left: solid 1px black;">DESCRIPTION</td>
					<td style="border-left: solid 1px black;">UPDATE</td>
					<td style="border-left: solid 1px black;">DELETE</td>
				</tr>
			</thead>
		</b>
		<tbody>

			<c:forEach items="${catlist}" var="x">
				<tr>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: green">${x.getId()}</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: green">${x.getName()}</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: green">${x.getDescription()}</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: green"><a
						href="${pageContext.request.contextPath}/UpdateCategoryFromDB?id=${x.getId()}"
						class="btn btn-primary">UPDATE</a></td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: green"><a
						href="${pageContext.request.contextPath}/DeleteCategoryFromDB?id=${x.getId()}"
						class="btn btn-danger">DELETE</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<br>
	
	


</body>
</html>
