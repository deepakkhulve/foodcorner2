<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico" rel="stylesheet">


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script type="text/javascript">

	angular.module("myApp",[]).controller("myCtrl",function( $scope , $http ){
		
		
		$scope.data = [];

		$scope.sum = 0;
		
		$http.get("deleteFromCart")
		    .then(function(response) {
		        console.log(response.data);
		        
		    });		
	});
	

</script>

<body ng-app="myApp" ng-controller="myCtrl">

	
	<br>

	<a  style ="float: left;" class="text-left" href="${pageContext.request.contextPath}/ViewProduct">Back To Products</a>
	<a style ="float: right;" class="text-right" href="${pageContext.request.contextPath}/index">Back To Home</a>
	
	
	<h1 style="font-family:Concert One; margin-top: 300px; text-align:center; color:blue; ">THANK YOU, & SEE YOU SOON</h1>
</body>
</html>