<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Track Employee</title>
<link rel="stylesheet" type="text/css" href="home.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<!-- <h2>Choose what you wanted to do from the below options</h2> -->
<body>
	<div class="w3-container w3-center w3-animate-opacity">
		<img id="image" src="optimum.jpg" class="rounded" alt="Cinque Terre"
			width="304" height="236">
	</div>
	<div class="w3-container w3-center w3-animate-opacity">
		<label id="welcomeId">Welcome Buddy!! Track your employees
			here!!</label>
	</div>
	<form action="insertEmployee">
		<div class="w3-container w3-center w3-animate-top">
			<button id="insertEmp" value="Add Employee" class="btn btn-info">Add
				Employee</button>
		</div>
	</form>
	
	<form action="updateEmployee">
		<div class="w3-container w3-center w3-animate-bottom">
			<button id="updateEmp" value="Update Employee" class="btn btn-info">Update
				Employee</button>
		</div>
	</form>
	<form action="deleteEmployee">
		<div class="w3-container w3-center w3-animate-left">
			<button id="deleteEmp" value="Delete Employee" class="btn btn-info">Delete
				Employee</button>
		</div>
	</form>
	<form action="viewEmployeeDetails">
		<div class="w3-container w3-center w3-animate-right">
			<button id="viewEmp" value="View Employee Details"
				class="btn btn-info">View Employee Details</button>
		</div>
	</form>
</body>
</html>