<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
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
					<class= "nav-link">logout</a></li>
			</ul>
		</nav>
	</header>
<br>

<div class="container">
	<h3 class="text-center">Payment</h3>
	<hr>
	<br>

<h5>Please Enter Payment Details</h5>
	<form action="pinsert" method="post">
	<div class="form-group">
	
	Item Number 
	<input type = "text" class="form-control" name = "itemNumber" placeholder="Enter Item Number">
	
	Card Holder Name 
	<input type = "text" class="form-control" name = "crdHolderName" placeholder="Enter Card Holder Name">
	
	Card Number 
	<input type = "text" class="form-control" name = "crdNumber" placeholder="Enter Card Number ">
	
	Card Expiration Month 
	<input type = "text" class="form-control" name = "crdExpMonth" placeholder="Enter Card Exp. Month">
	
	Card Expiration Year 
	<input type = "text" class="form-control" name = "crdExpYear" placeholder="Enter Card Exp. Year ">
	
	Amount 
	<input type = "text" class="form-control" name = "amount" placeholder="Enter Amount ">
	
</div>
	<input type="submit" class="btn btn-primary" name="submit" value="Submit Payment">
	
	<a href="PaymentLogin.jsp">
	<input type="button" class="btn btn-primary" name="Payment" value="Cancle Payment and Log out" placeholder="Enter Item Number">
	</a>	
		
	</form>
	</div>

	

</body>
</html>