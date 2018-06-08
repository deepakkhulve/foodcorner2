<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
        		<link rel="stylesheet" href="" />
<!-- Latest compiled and minified CSS -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

     </head>
     <body style="background-color:red;">



	<form:form style="margin: auto; width: 70%; text-align:center;" 
	action="${pageContext.request.contextPath}/UpdatedCategoryToDB" method="post" modelAttribute="ctg">
	<br><br><br><br>
	<h1 style=" color:green; text-transform: Uppercase;margin: auto; width: 70%; text-align:center;">UPDATE CATEGORY</h1>
	<br>
	<form:hidden path="id" class="form-control"/>
	
		<form:input path="name" class="form-control"/>
	
		<br>
		
		<form:textarea style="resize: none;" path="description" 
		class="form-control"></form:textarea>
	
		<br>
		
		<form:input path="" type="submit" value="Save" class="btn btn-success"/>
	
	</form:form>
	
	<br>

	

</body>
</html>