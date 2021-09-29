<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Payment List</title>
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

<div class="row">
	<div class="container">
		<h3 class="text-center">Payment List</h3>
		<hr>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Payment ID</th>
					<th>Item Number</th>
					<th>Card Holder Name</th>
					<th>Card Number</th>
					<th>Card Exp. Month</th>
					<th>Card Exp.Year</th>
					<th>Payment Amount</th>
					<th>Payment Date</th>
				</tr>
			</thead>
			<tbody>
					<c:forEach var="pay" items="${payList}">
					
					<c:set var ="pid" value="${pay.pid}"/>
					<c:set var ="itemNumber" value="${pay.itemNumber}"/>
					<c:set var ="crdHolderName" value="${pay.crdHolderName}"/>
					<c:set var ="crdNumber" value="${pay.crdNumber}"/>
					<c:set var ="crdExpMonth" value="${pay.crdExpMonth}"/>
					<c:set var ="crdExpYear" value="${pay.crdExpYear}"/>
					<c:set var ="amount" value="${pay.amount}"/>
					<c:set var ="date" value="${pay.date}"/>
				
					<tr>
						<td><c:out value="${pay.pid}" /></td>
						<td><c:out value="${pay.itemNumber}" /></td>
						<td><c:out value="${pay.crdHolderName}" /></td>
						<td><c:out value="${pay.crdNumber}" /></td>
						<td><c:out value="${pay.crdExpMonth}" /></td>
						<td><c:out value="${pay.crdExpYear}" /></td>
						<td><c:out value="${pay.amount}" /></td>
						<td><c:out value="${pay.date}" /></td>
					</tr>
					
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
