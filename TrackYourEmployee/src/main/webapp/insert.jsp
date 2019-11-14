<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee here</title>
<link rel="stylesheet" type="text/css" href="home.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>
<div class="centered">
	<h1>Add Employee Details</h1>
</div>
<body>
	<form action="insertEmployee">
		<div id="details">
			<label id="idLabel">ID :</label> <input id="id" type="number"
				name="id"> <label id="nameLabel">Name :</label> <input
				id="name" type="text" name="name"> <label id="dojLabel">Date
				of Joining :</label> <input id="doj" type="text" name="doj"> <label
				id="noiLabel">Number of Interviews Scheduled :</label> <input
				id="noi" type="number" name="numberOfInterviewsScheduled"> <label
				id="uiLabel">Upcoming Interviews scheduled :</label> <input id="ui"
				type="text" name="upcomingInterviews"> <label id="caLabel">Clients
				Attended :</label> <input id="ca" type="text" name="clientsAttended">
			<label id="commentsLabel">Comments:</label>
			<textarea id="comments" rows="4" cols="50" name="comments"></textarea>
			<button id="insertEmpButton" class="btn btn-info" value="Add Employee">Insert
				Employee</button>
		</div>
	</form>
	<form action="home">
		<button id="backHome" class="btn btn-info">Home</button>
	</form>
	<div id="footerInsertCard" class="card">
		<div id="footerMessage" class="card-footer" style="font-size:15px"><b>${deleteMessage}</b></div>
	</div>
</body>
</html>