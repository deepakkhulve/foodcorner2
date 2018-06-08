<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Add Users</title>
</head>

<body style="background-color:white;">


 
	<form:form style="margin: auto; width: 80%; text-align:center;" name="Form"
	action="${pageContext.request.contextPath}/AddUsersToDB" method="post" modelAttribute="usern">
	<br><br><br><br>
	<h1 style=" color:red; text-transform: Uppercase;margin: auto; width: 80%; text-align:center;">Add Users</h1>
	<br>
	
		<form:input path="username" name= "nam"  placeholder="Enter User Name" class="form-control" pattern = "[a-z]{1,15}" title="Should have a valid name with 3 or more characters only and no numbers or special characters" required="required"/>
	
		<br>
		<form:input path="email" type="email" name="mail" placeholder="Enter User Email" class="form-control" pattern="[a-zA-Z0-9!#$%&amp;'*+\/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*"   title="User email should be of the format example@example1.com/org/in/any domain" required="required"/>
	
		<br>
		<form:input path="password" type="password" name="pas" placeholder="Enter User Password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password should contain atleast one Uppercase, one lowercase, one number and or special characters with a minimum length of 8characters " required="required"/>
	
		<br>
		<form:input path="phone" name = "phn" placeholder="Enter User Phone" class="form-control" pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" required="required"/>
	
		<br>
		<form:input path="shipAddress"  name= "saddress" placeholder="Enter User Shipping Address" class="form-control" required="required"/>
		
		<br>
		<form:input path="billAddress" name="ubaddress" placeholder="Enter User Billing Address" class="form-control" required="required"/>
	<br>
			<form:input path="role" name="urole" placeholder="Enter User Role" class="form-control" required="required" />
		<br>
		
		<form:input path="" type="submit" value="Submit"  class="btn btn-success"/>
		<br>
	
	</form:form>
	
	
</body>
</html>