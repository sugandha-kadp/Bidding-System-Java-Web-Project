<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Won Item List</title>
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
				<li><a href="PaymentLogin.jsp"/list">
					<class="nav-link">logout</a></li>
			</ul>
		</nav>
	</header>
	<br>

<div class="container">
	<h3 class="text-center">Won Item Profile</h3>
	<hr>

<center>
<div class="form-group">
	<table>
	<c:forEach var="won" items="${wonItemDetatils}">
	

	<c:set var="wid" value="${won.wid}"/>
	<c:set var="itemNumber" value="${won.itemNumber}"/>
	<c:set var="itemName" value="${won.itemName}"/>
	<c:set var="discription" value="${won.discription}"/>
	<c:set var="price" value="${won.price}"/>
	<c:set var="bidderID" value="${won.bidderID}"/>
	<c:set var="paymentCode" value="${won.paymentCode}"/>
	<c:set var="wonDate" value="${won.wonDate}"/>
	
		
	<tr>
		<td>WON ID</td>
		<td>: &#160; ${won.wid}</td>
	</tr>
	<tr>
		<td>ITEM NUMBER</td>
		<td>: &#160; ${won.itemNumber}</td>
	</tr>
	<tr>
		<td>ITEM NAME</td>
		<td>: &#160; ${won.itemName}</td>
	</tr>
	<tr>
		<td>DESCRIPTION</td>
		<td>: &#160; ${won.discription}</td>
	</tr>
	<tr>
		<td>PRICE</td>
		<td>: &#160; ${won.price}</td>
	</tr>
	<tr>
		<td>BIDDER ID</td>
		<td>: &#160; ${won.bidderID}</td>
	</tr>
	<tr>
		<td>WON DATE</td>
		<td>: &#160; ${won.wonDate}</td>
	</tr>

	</c:forEach>
	</table>
	</div>
	<br>
	
	<a href="PaymentInsert.jsp">
	<input type="button" class="btn btn-primary" name="Payment" value="Pay Payment">
	</a>

</div>
</center>

</body>
</html>