<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee Details Here</title>
<link rel="stylesheet" type="text/css" href="home.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<div class="centered">
	<h1>Employee Details</h1>
</div>
</head>

<%-- <jsp:useBean id="date" class="java.util.Date" /> --%>
<%-- <fmt:formatDate var="time" value="${date}" pattern="HHmm" /> --%>

<body>
<form action="viewEmployeeDetails">
		<input id="viewSearch" name="searchTerm" type="number">
		<button id="searchViewButton" class="btn btn-info">Search ID</button>
	</form>
	<form action="viewEmployeeDetails">
		<table id = "viewTable" border="1" class="table table-striped ">
			<th>Id</th>
			<th>Name</th>
			<th>Date Of Joining</th>
			<th>Number of Interviews Scheduled</th>
			<th>Upcoming Interviews scheduled</th>
			<th>Clients Attended</th>
			<th>Comments</th>

			<c:forEach var="emp" items="${listEmp}" varStatus="status">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.doj}</td>
					<td>${emp.numberOfInterviewsScheduled}</td>
					<td>${emp.upcomingInterviews}</td>
					<td>${emp.clientsAttended}</td>
					<td>${emp.comments}</td>
				</tr>
			</c:forEach>
		</table>

	</form>
	<form action="home">
		<button id="homeViewButton" class="btn btn-info">Home</button>
	</form>
	<div id="footerCard" class="card">
		<div id="footerMessage" class="card-footer" style="font-size:15px"><b>${deleteMessage}</b></div>
	</div>
</body>
</html>