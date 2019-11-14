<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Employee Details Here</title>
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
	<h1>Update Employee Details</h1>
</div>
<h2>Give the ID and press search to find an employee</h2>
</head>
<body>
	<form action="updateEmployee">
		<input id="search" name="searchTerm" type="number">
		<button id="searchUpdateButton" class="btn btn-info">Search
			ID</button>
	</form>
	<form action="openEmployee">
		<button id="openEmployeeId" class="btn btn-info">Open
			Employee For Update</button>
		<table id="employeeTable" border="1" class="table table-striped">
			<th>Select record(s)</th>
			<th>Id</th>
			<th>Name</th>
			<th>Date Of Joining</th>
			<th>Number of Interviews Scheduled</th>
			<th>Upcoming Interviews scheduled</th>
			<th>Clients Attended</th>
			<th>Comments</th>

			<c:forEach var="emp" items="${listEmp}" varStatus="status">
				<tr>
					<td><input type="radio" name="radioGroup" value="${emp.id}" /></td>
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
		${msg};
	</form>
	<!-- 	<form action="deleteEmployee"> -->
	<!-- 		<button id="refreshButton">Refresh Employee</button> -->
	<!-- 	</form> -->
	<form action="home">
		<button id="homeUpdateButton" class="btn btn-info">Home</button>
	</form>
	<div id="footerCard" class="card">
		<div id="footerMessage" class="card-footer" style="font-size: 15px">
			<b>${deleteMessage}</b>
		</div>
	</div>
</body>
</html>