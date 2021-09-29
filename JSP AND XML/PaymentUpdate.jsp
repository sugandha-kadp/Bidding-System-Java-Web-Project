<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Payment</title>
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
<%
		String pid = request.getParameter("pid");
		String itemNumber = request.getParameter("itemNumber");
		String crdHolderName = request.getParameter("crdHolderName");
		String crdNumber = request.getParameter("crdNumber");
		String crdExpMonth = request.getParameter("crdExpMonth");
		String crdExpYear = request.getParameter("crdExpYear");
		String amount = request.getParameter("amount");
		String date = request.getParameter("date");
%>
	
<div class="container">
	<h3 class="text-center">Payment Details Update</h3>
	<hr>
	<br>
	
<center>
	<form action="pupdate" method="post">
	<div class="form-group">
	<table>
		<tr>
			<td>Payment ID</td>
			<td><input type="text" class="form-control" name="pid" value="<%= pid %>"readonly></td>
		</tr>
		<tr>
			<td>Item Number</td>
			<td><input type="text" class="form-control" name="itemNumber" value="<%= itemNumber %>"readonly></td>
		</tr>
		<tr>
		<td>Card Holder Name</td>
		<td><input type="text" class="form-control" name="crdHolderName" value="<%= crdHolderName %>"></td>
	</tr>
	<tr>
		<td>Card Number</td>
		<td><input type="text" class="form-control" name="crdNumber" value="<%= crdNumber %>"></td>
	</tr>
	<tr>
		<td>Card Exp. Month</td>
		<td><input type="text" class="form-control" name="crdExpMonth" value="<%= crdExpMonth %>"></td>
	</tr>
	<tr>
		<td>Card Exp.Year</td>
		<td><input type="text" class="form-control" name="crdExpYear" value="<%= crdExpYear %>"></td>
	</tr>
		<tr>
		<td>Payment Amount</td>
		<td><input type="text" class="form-control" name="amount" value="<%= amount %>"></td>
	</tr>	
		<tr>
		<td>Payment Date</td>
		<td><input type="text" class="form-control" name="date" value="<%= date %>"readonly></td>
	</tr>			
	</table>
	</div>
	
	<br>
	<input type="submit" class="btn btn-primary" name="submit" value="Update My Data">
	</form>
	</div>
	</center>
	
</body>
</html>