<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="servlets.Login" %>
<% Login.isLoggedIn = false; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login - FlyAway</title>
</head>
<body>

<div>

	<a href="index.jsp">FlyAway</a>
	<div>
		<a href="login.jsp">Admin Login</a>
	</div>
</div>
<section>
	<section>
		<div>
			<div>
				<h2><b>Admin Login</b></h2>
				<br>
			</div>
		</div>
		<section>
			<form action="login" method="post" class="form-container">
				<div>
				<label>Email address</label>
				<input type="email" name="enteredEmail" placeholder="Enter-Email">
				<br>
				<small>&nbsp;&nbsp;Email :<%=Login.email %></small>
				</div>
			<div>
				<label>Password</label>
				<input type="password" name="enteredPassword" placeholder="Password">
				<br>
				<small>Current Password :&nbsp;<%= Login.password %></small>
			</div>
			<button type="submit" value="Submit">Login</button>
			</form>
		</section>
</section>

</section>
<div align="center">
	FlyAway by Vignesh
</div>

</body>
</html>