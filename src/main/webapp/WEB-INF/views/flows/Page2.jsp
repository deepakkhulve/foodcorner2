<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico|Gugi" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>


<!-- Latest compiled and minified JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>  -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Order</title>
</head>

<script type="text/javascript">

	angular.module("myApp",[]).controller("myCtrl",function( $scope , $http ){
		
		$scope.bill = '';
		$scope.ship = '';
		
		$scope.UpdateAdd = function(){
			
			$http.get("updateAdd?bill="+$scope.bill+"&ship="+$scope.ship)
		    .then(function(response) {
		        console.log(response.data);
		    
		        if( response.data.msg == "done" ){
		       
		        	swal("Addresses Updated!", "", "success");
		        	
		        }
		        	
		        
		    });
			
		}
		
	});

</script>


<body ng-app="myApp" ng-controller="myCtrl">

    <h3 style="font-family:Concert One; margin-top: 100px; text-align:center; color:red;"><u>FOODCORNER</u></h3>
	<h4 style="font-family:Gugi; margin:auto; text-align:center; color:red;">ADDRESS CONFIRMATION</h4>
	<br>
	<br>
	<a style="float: left;font-family:Concert One; color:blue; " href="${flowExecutionUrl}&_eventId=goToPage1">GO TO CART VIEW</a>
	<br>
	<a style="float: right;font-family:Concert One; color:blue;" href="${flowExecutionUrl}&_eventId=goToPage3">GO TO INVOICE</a>
		
		<div style="margin: auto; width: 70%; text-align: center;">
		
			Enter  Billing  Address   :<textarea style="resize:none;" ng-model="bill" rows="5" class="form-control" placeholder="Enter Billing Address"></textarea>
		
			<br>
			
			Enter Shipping Address:<textarea style="resize:none;" ng-model="ship" rows="5" class="form-control" placeholder="Enter Shipping Address"></textarea>
			
			<br>
			
			<button ng-disabled="bill == '' || ship == ''" ng-click="UpdateAdd()" class="btn btn-success" style="font-family:Gugi">UPDATE</button>
		
		</div>
		
</body>
</html>