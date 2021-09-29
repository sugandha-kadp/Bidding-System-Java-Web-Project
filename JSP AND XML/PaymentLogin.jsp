<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Payment Login</title>
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

		</nav>
	</header>
<br>
	
	<div class="container">
	<h3 class="text-center">Login To Payment System</h3>
	<hr>
	<br>

	<form action="plog" method="post">
	<div class="form-group">

		Bidder ID 
		<input type="text" name="bid" class="form-control" placeholder="Enter your Bidder ID">
		
	    Payment Code
	    <input type="password" name="pcode" class="form-control" placeholder="Enter your Payment Code ">
	</div>
		<center>
		<input type="submit" class="btn btn-primary" name="submit" value="Login To Payment">
		</center>
	</form>
	</div>

</body>
</html>