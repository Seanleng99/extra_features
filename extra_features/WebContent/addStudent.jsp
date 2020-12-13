<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="ISO-8859-1">
	<title>Add Student</title>
</head>
<style>
body {
	background-image: url('envelope.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
h1 {
	font-family: Fantasy;
}
.p1 {
	font-family: Papyrus;
}
.icon-bar {
	width: 100%;
	background-color: transparent;
	overflow: auto;
}
.icon-bar a {
	float: left;
  	width: 20%;
  	text-align: center;
  	padding: 12px 0;
  	transition: all 0.3s ease;
  	color: white;
  	font-size: 20px;
  	border-right: 2px solid #000;
}
.icon-bar a:hover {
  background-color: #000;
}

.active {
  background-color: #FFB6C1;
}
</style>
<body>

	<h1>Add New Student</h1><hr>
	<div class = "icon-bar">
		<a class = "active" href = "index.html"><i class = "fa fa-home"></i></a>
		<a href = "student_info.jsp" class = "p1">Student Info</a>
		<a href = "addStudent.jsp" class = "p1">Add Student</a>
	</div>
	<label for="id" class = "p1">Student ID:</label> <br>
	<input type="text" id="id" class = "p1" name="id"><br>	
		
	<label for="name" class = "p1">Name:</label><br>
	<input type="text" id="name" class = "p1" name="name"> <br>
		
	<label for="dept" class = "p1">Department:</label><br>
	<input type="text" id="department" class = "p1" name="dept"> <br>
				
	<label for="science" class = "p1">Science:</label><br>
	<input type="text" id="science" class = "p1" name="science"> <br>
			
	<label for="math" class = "p1">Mathematics:</label><br>
	<input type="text" id="math" class = "p1" name="math"> <br>
			
	<input type="submit" class = "p1" value="Submit">
	
	<form action="AddStudent" method="get">
		<input type="submit" class = "p1" value="Add">
	</form>
	
</body>
</html>