<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Won Details</title>
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
				<li><a href="AdminHome.jsp"/list"
					class="nav-link">logout</a></li>
			</ul>
		</nav>
	</header>
<br>


	<div class="container">
		<h3 class="text-center">Won List</h3>
		<hr>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Won ID</th>
					<th>Item Number</th>
					<th>Item Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Bidder ID</th>
					<th>Payment Code</th>
					<th>Won Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="won" items="${wonDetails}">
				
					<c:set var ="wid" value="${won.wid}"/>
					<c:set var ="itemNumber" value="${won.itemNumber}"/>
					<c:set var ="itemName" value="${won.itemName}"/>
					<c:set var ="discription" value="${won.discription}"/>
					<c:set var ="price" value="${won.price}"/>
					<c:set var ="bidderID" value="${won.bidderID}"/>
					<c:set var ="paymentCode" value="${won.paymentCode}"/>
					<c:set var ="wonDate" value="${won.wonDate}"/>
				
					<tr>
						<td><c:out value="${won.wid}" /></td>
						<td><c:out value="${won.itemNumber}" /></td>
						<td><c:out value="${won.itemName}" /></td>
						<td><c:out value="${won.discription}" /></td>
						<td><c:out value="${won.price}" /></td>
						<td><c:out value="${won.bidderID}" /></td>
						<td><c:out value="${won.paymentCode}" /></td>
						<td><c:out value="${won.wonDate}" /></td>
					</tr>
					
				</c:forEach>
				</tbody>
			</table>
		</div>

	<center>
	<a href="AdminHome.jsp">
	<input type="button" name="Payment" class="btn btn-primary" value="Back To Home">
	</a>
	</center>

</body>
</html>