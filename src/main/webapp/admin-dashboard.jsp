<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import = "servlets.Login" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway Airlines</title>
</head>
<body>

<div>

	<a href = "index.jsp">FlyAway</a>
	<div>
	<a href="login.jsp">Admin Login</a>
	</div>
</div>

<%
if(Login.isLoggedIn)
%>
<%
	response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate" );
	
		if(session.getAttribute("Email")==null)
		{
			response.sendRedirect("login.jsp");
			
		}
	%>
<div>
	<h2>
		<b>Admin Dashboard</b>
	</h2>
	<p>
		<strong>
			You are LoggedIn as : <%=Login.email%>.
			Your Password is : <%=Login.password%>
		</strong>
	</p>
	<br>
	<br>
	<div>
		<div>
			<form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
				<button type = "submit">Change Password</button>
			</form> 
		</div>
		<div>
			<form method="post" action="${pageContext.request.contextPath}/login.jsp">
					<button type="submit" >Logout</button>
			</form>
		</div>
	</div>
</div>
<section>
	<section>
		<section>
			<table>
				<thead>
					<tr>
						<th>Flight ID</th>
						<th>Name</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Ticket Price</th>
					</tr>
				</thead>
				<tbody>
				
					<p>Flight Details :</p>
					
				<%

					String driverName = "com.mysql.cj.jdbc.Driver";

					String connectionUrl = "jdbc:mysql://localhost:3306/vignesh";
					String userId = "root";
					String password = "password";				

					try{
					Class.forName(driverName);
					}catch(ClassNotFoundException e){
						e.printStackTrace();
					}
					
					Connection connection = null;
					Statement statement = null;
					ResultSet resultSet = null;
					
					%>
					
					<%
				try {
					connection = DriverManager.getConnection(connectionUrl, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT * FROM flyaway";
					resultSet = statement.executeQuery(sql);
					
					while (resultSet.next()) {
			%>
				<tr>
					<td><%=resultSet.getString("flight_id")%></td>
					<td><%=resultSet.getString("flight_name")%></td>
					<td><%=resultSet.getString("flight_source")%></td>
					<td><%=resultSet.getString("destination")%></td>
					<td><%=resultSet.getString("ticket_price")%></td>
					
					</tr>
					<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
					
				</tbody>
			</table>
		</section>
	</section>
</section>
<div class="footer" align="center">FlyAway by Vignesh</div>
</body>
</html>