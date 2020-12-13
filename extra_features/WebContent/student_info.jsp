<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="ISO-8859-1">
	<title>Student Info</title>
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
	<h1>Student Info</h1><hr>
	<div class = "icon-bar">
		<a class = "active" href = "index.html"><i class = "fa fa-home"></i></a>
		<a href = "student_info.jsp" class = "p1">Student Info</a>
		<a href = "addStudent.jsp" class = "p1">Add Student</a>
	</div>
	<table class = "p1">
		<tr>
			<td>Name</td>
			<td>Department</td>
			<td>Science</td>
			<td>Mathematics</td>
		</tr>

		<%
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db1?serverTimezone=UTC", "root", "Sean990507");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from db1.student");
			rs.last();
			int rowNum = rs.getRow();
			int scienceSum = 0; 
			int mathSum = 0;
			rs.beforeFirst();
			while (rs.next()) {
			
				int scienceMark = Integer.parseInt(rs.getString(4));
				int mathMark = Integer.parseInt(rs.getString(5));
				
				scienceSum = scienceSum + scienceMark;
				mathSum = mathSum + mathMark;
		%>

		<tr>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("department")%></td>
			<td><%=rs.getInt("science")%></td>
			<td><%=rs.getInt("math")%></td>
		</tr>
	</table>

		<%
			}
			double scienceAvg = scienceSum / rowNum;
			double mathAvg = mathSum / rowNum;
		%>

	<br>
	<br>
	
	<p class = "p1">The average of Science marks is <%= scienceAvg %></p>
	<p class = "p1">The average of Mathematics marks is <%= mathAvg %></p>
	
	<% } catch (Exception e) {
			e.printStackTrace();
		}%>
</body>
</html>