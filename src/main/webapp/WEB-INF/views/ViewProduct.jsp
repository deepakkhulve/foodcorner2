<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <!-- Custom styles for this template -->
    <link href="" rel="stylesheet">


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="resources/assets/css/main.css" />

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>
</head>
<body style="background-color: black;">


	<table
		style=" font-family:Concert One; margin: auto; border-style: solid; border-width: 5px; border-color: white; width: 80%; text-align: center;"
		class="table">
		<br>
		<br>
		<br>
		<br>
		<h2 style="font-family:Concert One; margin: auto; color: white; text-align: center;"><u>VIEW PRODUCT</u></h2>
		<br>
		<br>
		<b>
			<thead style="color: black; background-color: white;">
				<tr>
					<td style="border-left: solid 1px black;">ID</td>
					<td style="border-left: solid 1px black;">NAME</td>
					<td style="border-left: solid 1px black;">DESCRIPTION</td>
					<td style="border-left: solid 1px black;">PRICE</td>
					<td style="border-left: solid 1px black;">BRAND</td>
					<td style="border-left: solid 1px black;">QUANTITY</td>
					<td style="border-left: solid 1px black;">IMAGE</td>
					<td style="border-left: solid 1px black;">UPDATE</td>
					<td style="border-left: solid 1px black;">DELETE</td>
				</tr>
			</thead>
		</b>
		<tbody>

			<c:forEach items="${prolist}" var="x">
				<tr>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color: red">${x.getId()}</td>
					<td
						style="border-left: solid 1px white; border-bottom: solid 1px white; color:  red">
						
						<a href="${pageContext.request.contextPath}/SingleProduct?id=${x.getId()}">
						${x.getName()}
						</a>
						
						</td>
					<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color:  red">${x.getDescription()}</td>
					<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color:  red">${x.getPrice() }</td>
						<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color: red">${x.getBrand() }</td>
						<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color:  red">${x.getQuantity() }</td>
					<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color:  red"><img
						src="${x.imageUrl}" style="height: 100px; width: 100px" /></td>
					<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color: red"><a
						href="${pageContext.request.contextPath}/UpdateProductFromDB?id=${x.getId()}"
						class="btn btn-primary">UPDATE</a></td>
					<td
						style="border-left: solid 1px green; border-bottom: solid 1px green; color: red"><a
						href="${pageContext.request.contextPath}/DeleteProductFromDB?id=${x.getId()}"
						class="btn btn-danger">DELETE</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<br>
                      

</body>
</html>
