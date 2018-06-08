<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Concert+One|Pacifico|Gugi|Aclonico" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>


<script type="text/javascript">

	angular.module("myApp",[]).controller("myCtrl",function( $scope , $http ){
		
		
		$scope.data = [];

		$scope.sum = 0;
		
		$http.get("fetchCartItems")
		    .then(function(response) {
		        console.log(response.data);
		    
		        $scope.data = response.data;
		    
		    	for( i = 0 ; i < $scope.data.length ; i++ ){
		    		$scope.sum += $scope.data[i].cartquantity * $scope.data[i].product.price;
		    	}
		    });
		
		$scope.RemoveItem = function( arg ){
			
			$http.get("removeCartItem?id="+arg)
		    .then(function(response) {
		        console.log(response.data);
		    
		        if( response.data.msg == "done" ){
		       
		        	//
		        	$http.get("fetchCartItems")
				    .then(function(response) {
				        console.log(response.data);
				    
				        $scope.data = response.data;
				    });
		        	//
		        	
		        }
		        	
		        
		    });
		}
		
	});

</script>

<body ng-app="myApp" ng-controller="myCtrl">

 <h3 style="font-family:Concert One; margin-top: 100px; text-align:center; color:red;"><u>FOODCORNER</u></h3>
	<h4 style="font-family:Gugi; margin:auto; text-align:center; color:red;">INVOICE</h4>
	<br>
<br>

	<a style ="font-family:Concert One; float: left; color:blue;"  href="${flowExecutionUrl}&_eventId=goToPage2">GO TO ADDRESS <br>CONFIRMATION</a>
	<a style ="font-family:Concert One; float: right; color:blue;"  href="${flowExecutionUrl}&_eventId=goToPage4">GO TO PAYMENT </a>
<br><br>
	<br>

	
	<h4 ng-if="data.length == 0" style="margin-top: 100px; text-align:center; color:red; ">NOTHING IN CART </h4>

	<table ng-if="data.length != 0" style="background-color: red; margin:auto; width:80%;" class="table">
	
		<thead>
			<tr style="font-family:Concert One;">
				<td style="border-left: solid 1px black;">ID</td>
				<td style="border-left: solid 1px black;">BRAND</td>
				<td style="border-left: solid 1px black;">NAME</td>
				<td style="border-left: solid 1px black;">DESCRIPTION</td>
				<td style="border-left: solid 1px black;">PRICE</td>
				<td style="border-left: solid 1px black;">QUANTITY</td>
				<td style="border-left: solid 1px black;">IMAGE</td>
				<td style="border-left: solid 1px black;">SUB-TOTAL</td>
			</tr>
		</thead>
		
		<tbody>
			<tr ng-repeat="x in data" style="background-color: pink; font-family:Concert One;">
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white">cartid</td>
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white">product.brand</td>
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white">product.name</td>
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white">product.description</td>
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white">product.price</td>
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white">cartquantity</td>
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white;  border-right: solid 1px white;">
				<img style="max-width: 200px;" class="img img-thumbnail" src="{{x.product.imageUrl}}"/>
				
				</td>
				
				<td style="border-left: solid 2px white; border-bottom: solid 2px white; color: white;  border-right: solid 1px white;">
				
				product.price
				
				</td>
			</tr>
		</tbody>
	
	</table>
	
	<table style="background-color: yellow; width:80%; margin:auto;">
	<tr>
	<td><h1 ng-if="data.length != 0" style="margin-top:30px; margin:auto; font-family:Gugi; text-align:center; color:pink; "><u> GRAND TOTAL </u></h1>
	<td><h3 ng-if="data.length != 0" style="font-family:Concert One; text-align:center; color:pink; ">sum</h3></td>
	</tr>
	</table>
	
	
	
	<h1 ng-if="data.length != 0" style="font-family:Gugi; margin-top: 50px; text-align:center; color:red; "><u> BILLING ADDRESS </u></h1>
	<h3 ng-if="data.length != 0" style="font-family:Concert One; text-align:center; color:red; ">cartbilladdress</h3>
		
	<h1 ng-if="data.length != 0" style="font-family:Gugi; margin-top: 30px; text-align:center; color:red; "><u> SHIPPING ADDRESS </u></h1>
	<h3 ng-if="data.length != 0" style="font-family:Concert One; margin-top: 10px; text-align:center; color:red; ">cartshipaddress</h3>

			
	

</body>
</html>