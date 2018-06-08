<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="" />

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<!-- Latest compiled and minified CSS -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body style="background-color:black;">

 

	<form:form style="margin: auto; width: 70%; text-align:center;" 
	action="${pageContext.request.contextPath}/AddProductToDB" method="post" modelAttribute="pro" enctype="multipart/form-data">
	<br><br><br><br>
	<h1 style="color:red; margin: auto; width: 70%; text-align:center;">Add Product</h1>
	<br>
		<form:input style="color:red;" path="name" required="required" placeholder="Enter Product Name" class="form-control"/>
	
		<br>
		<form:input path="price" style="color:red;" required="required" placeholder="Enter Product Price" class="form-control"/>
		<br>
		
		<form:input style="resize: none; color:red;" required="required" path="description" 
		placeholder="Enter Product Description" class="form-control"></form:input>
		<br>
		<form:input path="brand" style="color:red;" required="required" placeholder="Enter Product Brand" class="form-control"/>
		<br>
		<form:input path="quantity" style="color:red;" required="required" placeholder="Enter Product Quantity" class="form-control"/>
		<br>
		<form:select path="name">
					  <form:option value="" label=" Select" required="required" />
					  <form:options items="${categories}"/>
				       </form:select>
		<br>
			<form:input path="" type="file" style="color:red;" placeholder="  Upload File" required="required" name="file"/>
		<br><br><br>
		<form:input path="" type="submit" value="Submit" class="btn btn-success"/>
		
	</form:form>
 
	
</body>
</html>