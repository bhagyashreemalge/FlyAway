<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Booking"%>
<%@ page import="com.model.Search"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
	<%
		String travelDate = request.getParameter("date");
		String sourceplace = request.getParameter("source");
		String destinationplace = request.getParameter("destination");
		int persons = Integer.parseInt(request.getParameter("persons"));
	%>

	<form action="thank-you.jsp" method="post" class="form-container">
		<div class="form-group">
			<label for="card_details">Name on Card</label> <input type="text"
				class="form-control" id="name_on_card" name="name_on_card"
				placeholder="Enter Name on Card">
		</div>
		<div class="form-group">
			<label for="card_details">Card Number</label> <input type="number"
				class="form-control" id="card_details" name="card_details"
				placeholder="Enter Card Number">
		</div>
		<br>
		<p align="left">
			<span><strong>Total fare = <br> <%=Booking.ticket_price%>
					X <%=persons%> persons = Rs.<%=Booking.ticket_price * persons%></strong></span>
		</p>
		<input type="hidden" id="date" name="date" value="<%=travelDate%>">
		<input type="hidden" id="sourceplace" name="sourceplace"
			value="<%=sourceplace%>"> <input type="hidden"
			id="destinationplace" name="destinationplace"
			value="<%=destinationplace%>"> <input type="hidden"
			id="persons" name="persons" value="<%=persons%>">
		<button type="submit" class="btn btn-success btn-block" value="Submit">Confirm
			Payment</button>
	</form>
</body>
</html>