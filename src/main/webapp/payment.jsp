<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.Booking" %>
<%@ page import="model.Search" %>

<%
Booking.passenger_name = request.getParameter("pname");
Booking.passenger_email = request.getParameter("email");
Booking.passenger_phone = request.getParameter("phone");
if (Booking.passenger_name.equals("") || Booking.passenger_email.equals("") || Booking.passenger_phone.equals("")) {
	out.println("Please enter valid passenger details");
} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
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
				<h1>
					<b>CheckOut</b>
				</h1>
				<p><strong>Enter Payment Details</strong></p>
				<br>
			</div>
		</div>
		<section>
			<form action="${pageContext.request.contextPath}/thank-you.jsp"
					method="post" class="form-container">
					<div>
						<label>Name on Card</label> 
						<input type="text" name="name_on_card" placeholder="Enter Name on Card">
					</div>
					<div>
						<label >Card Number</label> 
						<input type="number" name="card_details" placeholder="Enter Card Number">
					</div>
					<br>
					<p>
						<span><strong>Total fare = <br> 
						<%=Booking.ticket_price%> x <%=Search.persons%>
						persons = Rs.<%=  Booking.ticket_price  %></strong></span>
					</p>
					<button type="submit" value="Submit">Confirm Payment</button>
			</form>		
		</section>
	</section>
</section>

</body>
<div class="footer" align="center">FlyAway by Vignesh</div>
</html>