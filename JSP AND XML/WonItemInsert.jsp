<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Won Item Insert</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="AdminHome.jsp" class="navbar-brand"> Home
					 </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="AdminHome.jsp"/list">
					<class="nav-link">logout</a></li>
			</ul>
		</nav>
	</header>
<br>

<div class="container">
	<h3 class="text-center">Won Item Insert</h3>
	<hr>
	<br>


<h5>Please Enter Won Item Details</h5>
	<form action="winsert" method="post">
	<div class="form-group">
	
	Item Number 
	<input type = "text" class="form-control" name = "itemNumber" placeholder="Enter Item Number">
	
	Item Name 
	<input type = "text" class="form-control" name = "itemName" placeholder="Enter Item Name">
	
	Description 
	<input type = "text" class="form-control" name = "discription" placeholder="Enter Description">
	
	Price 
	<input type = "text" class="form-control" name = "price" placeholder="Enter Price">
	
	Bidder ID 
	<input type = "text" class="form-control" name = "bidderID" placeholder="Enter Bidder ID">
	
	Payment Code 
	<input type = "text" class="form-control" name = "paymentCode" placeholder="Payment Code">
	
	
</div>
	<input type="submit" class="btn btn-primary" name="submit" value="Submit Details">

	<a href="#">
		<input type="button" class="btn btn-primary" name="Payment" value="Cancle Inserting Details">
		</a>
	
			
</form>
	</div>



</body>
</html>