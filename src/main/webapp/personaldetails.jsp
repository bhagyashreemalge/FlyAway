<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.model.Booking" pageEncoding="ISO-8859-1"%>
<%
	Booking.flight_booking_id = request.getParameter("flight_id");
	Booking.ticket_price = Integer.parseInt(request.getParameter("ticketprice"));
	Booking.flight_name = request.getParameter("airline");
	String travelDate = request.getParameter("date");
	String sourceplace = request.getParameter("source");
	String destinationplace = request.getParameter("destination");
	int persons = Integer.parseInt(request.getParameter("persons"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Passanger Details</title>
</head>
<body>
	<form action="bookingdetails.jsp" method="post" class="form-container">
		<div class="form-group">
			<label for="pname">Passenger Name</label> <input type="text"
				class="form-control" id="pname" name="pname"
				placeholder="Enter name of the/any passenger(s)">
		</div>
		<br>
		<div class="form-group">
			<label for="email">Email address</label> <input type="email"
				name="email" class="form-control" id="email"
				aria-describedby="emailHelp" placeholder="Enter email">
		</div>
		<br>
		<div class="form-group">
			<label for="phone">Phone</label> <input type="number"
				class="form-control" id="phone" name="phone"
				placeholder="Enter phone number">
		</div>
		<br> <input type="hidden" id="date" name="date"
			value="<%=travelDate%>"> <input type="hidden"
			id="sourceplace" name="sourceplace" value="<%=sourceplace%>">
		<input type="hidden" id="destinationplace" name="destinationplace"
			value="<%=destinationplace%>"> <input type="hidden"
			id="persons" name="persons" value="<%=persons%>">
		<button type="submit" class="btn btn-success btn-block" value="Submit">Submit</button>
	</form>
</body>
</html>