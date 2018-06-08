<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link rel="stylesheet" href="resources/assets/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login to foodcorner</title>
	<!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Exact login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">

    <!-- //Meta-Tags -->

	<!-- Custom Theme files -->
	<link href="resources/css/css1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="resources/css/css1/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom Theme files -->
	
	<!-- web font --> 
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //web font --> 


	
</head>
<body>

		  
		  	
	<!-- main -->
	<div class="main" style="margin-top:100px;">
		<h1>foodcorner</h1>
		<div class="main-w3lsrow">
			<!-- login form -->
			<div class="login-form login-form-left"> 
				<div class="agile-row">
					<div class="head">
						<h2><b>LOGIN</b></h2>
						
					</div>					
					<div class="clear"></div>
					<div class="login-agileits-top"> 	
					
						<c:if test="${not empty param.error}">
							<h1 class="alert alert-danger" style="color:black;">Invalid Credentials</h1>
						</c:if>
					
						<form action="#" method="post"> 
						
							<input type="text" class="name" name="email" Placeholder="USERNAME" required=""/>
							 
							<input type="password" id = "psw" class="password" name="password" Placeholder="PASSWORD" required="" 
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
							
							<input type="submit" value="Login Now"> 
							
						</form> 	
					</div> 
					
					
					<div class="login-agileits-bottom"> 
						<h6><a href="#">Forgot your password?</a></h6>
					</div> 

				</div>  
			</div>  
		</div>
		<!-- //login form -->
		
		<div class="login-agileits-bottom1"> 
			<a href="registration"><h3><u>REGISTER NEW USER</u></h3></a>
			<br><br>
			
		</div>
		
		
	</div>	
	<!-- //main -->
	
</body>
</html>