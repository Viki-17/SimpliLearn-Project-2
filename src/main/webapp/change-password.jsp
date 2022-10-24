<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "servlets.Login" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>

<div>
	<a href="index.jsp">FlyAway</a>
	<div>
		<a href="login.jsp">Admin Login</a>
	</div>
</div>
<div>
	<h2>
		<b>New Password</b>
	</h2>
	<br><br>
	<%if (Login.isLoggedIn) {%>
	<form action="change-password" method="post">
		<div>
			<label>New Password:</label><br>
				<input type="password" name="passwordEntered" placeholder="Enter a new password">
				<br>
				<small>Current email : &nbsp; <%=Login.email%></small><br> 
				<small>Current Password :&nbsp; <%=Login.password%></small>
		</div>
		<button type="submit">Change Password</button>
	</form>
	<%
		} else {
		out.print("You must Login first");
		}
		%>
</div>
<div class="footer" align="center">FlyAway by Vignesh</div>

</body>
</html>