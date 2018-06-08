<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
</head>
<body style="background-color: pink;">

	<br>
	<br>
	<br>
	<br>
	<h1
		style="margin: auto; color: white; text-align: center; ">REGISTER
		USER</h1>


	<form style="margin: auto; width: 30%; text-align: center;"
		method="post" action="AddUsersToDB">
		<br> Enter User Name:<input autofocus="" path="" required="" type="text" name="username" placeholder="Enter User Name" /> 
			<br> 
			Enter Email:<input path="" required="" name="email" type="email" placeholder="Enter Email" /> 
			<br> 
			Enter Password:<input  path="" required="" type="password" name="password" placeholder="Enter Password" /> 
			<br> 
			Enter phone number: <input name="phone" required="" type="text" path="" placeholder="Enter phone number" /> 
			<br>
			Enter User role:<input path="" required="" type="text" name="role" placeholder="Enter User role" /> 
			<br> 
			Enter User Address: <input path="" required="" type="text" name="address" placeholder="Enter User Address" /> 
			<br>
			<input type="checkbox" name="address" value="address">
			
		<input path="" type="submit" value="submit" />
	</form>



</body>
</html>