<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Payment Profile</title>
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
	<h3 class="text-center">Payment Profile</h3>
	<hr>


<center>
<div class="form-group">
<table>	
	<c:forEach var="pay" items="${payDetails}">
	
	<c:set var ="pid" value="${pay.pid}"/>
	<c:set var ="itemNumber" value="${pay.itemNumber}"/>
	<c:set var ="crdHolderName" value="${pay.crdHolderName}"/>
	<c:set var ="crdNumber" value="${pay.crdNumber}"/>
	<c:set var ="crdExpMonth" value="${pay.crdExpMonth}"/>
	<c:set var ="crdExpYear" value="${pay.crdExpYear}"/>
	<c:set var ="amount" value="${pay.amount}"/>
	<c:set var ="date" value="${pay.date}"/>
	
	<tr>
		<td>Payment ID</td>
		<td>: &#160; ${pay.pid}</td>
	</tr>
	<tr>
		<td>Item Number</td>
		<td>: &#160; ${pay.itemNumber}</td>
	</tr>
	<tr>
		<td>Card Holder Name</td>
		<td>: &#160; ${pay.crdHolderName}</td>
	</tr>
	<tr>
		<td>Card Number</td>
		<td>: &#160; ${pay.crdNumber}</td>
	</tr>
	<tr>
		<td>Card Exp. Month</td>
		<td>: &#160; ${pay.crdExpMonth}</td>
	</tr>
	<tr>
		<td>Card Exp.Year</td>
		<td>: &#160; ${pay.crdExpYear}</td>
	</tr>
		<tr>
		<td>Payment Amount</td>
		<td>: &#160; ${pay.amount}</td>
	</tr>
		<tr>
		<td>Payment Date</td>
		<td>: &#160; ${pay.date}</td>
	</tr>
	
	</c:forEach>
	</table>
	</div>
	<br>
	
	
	<c:url value="PaymentUpdate.jsp" var="payupdate">
		<c:param name="pid" value="${pid}"/>
		<c:param name="itemNumber" value="${itemNumber}"/>
		<c:param name="crdHolderName" value="${crdHolderName}"/>
		<c:param name="crdNumber" value="${crdNumber}"/>
		<c:param name="crdExpMonth" value="${crdExpMonth}"/>
		<c:param name="crdExpYear" value="${crdExpYear}"/>
		<c:param name="amount" value="${amount}"/>
		<c:param name="date" value="${date}"/>
		
	</c:url>	

	<a href="${payupdate}">
	
	<input type="button" class="btn btn-primary" name="Pupdate" value="Update Payment">
	</a>
		
	<c:url value="PaymentDelet.jsp" var="paydelete">
		<c:param name="pid" value="${pid}"/>
		<c:param name="itemNumber" value="${itemNumber}"/>
		<c:param name="crdHolderName" value="${crdHolderName}"/>
		<c:param name="crdNumber" value="${crdNumber}"/>
		<c:param name="crdExpMonth" value="${crdExpMonth}"/>
		<c:param name="crdExpYear" value="${crdExpYear}"/>
		<c:param name="amount" value="${amount}"/>
		<c:param name="date" value="${date}"/>
	</c:url>
	
	<a href="${paydelete}">
	
	<input type="button" class="btn btn-primary" name="Pdelete" value="Delete Payment">
	</a>
	
	
	<a href="DonePayment.jsp">
	<input type="button" class="btn btn-primary" name="Done Paymet" value="Done Payment">
	</a>
</div>
</center>
</body>
</html>