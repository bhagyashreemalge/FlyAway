<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Booking,com.model.Search"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>
</head>
<body>

	<%
		String travelDate = request.getParameter("date");
		String sourceplace = request.getParameter("source");
		String destinationplace = request.getParameter("destination");
		int persons = Integer.parseInt(request.getParameter("persons"));

		Booking.passenger_name = request.getParameter("pname");
		Booking.passenger_email = request.getParameter("email");
		Booking.passenger_phone = request.getParameter("phone");

		if (Booking.passenger_name.equals("") || Booking.passenger_email.equals("")
				|| Booking.passenger_phone.equals("")) {
			out.println("Please enter valid passenger details");
		} else {
	%>
	<p align="center">
		<span><strong> Flight Booking Details<br>
	</p>
	<form action="paymentgateway.jsp">
		Flight Id: Flight Id:
		<%=Booking.flight_booking_id%>
		Airline:<%=Booking.flight_name%>
		TicketPrice:
		<%=Booking.ticket_price%>
		<br> Date of travel :
		<%=travelDate%>
		<br> No of travellers :<%=persons%>
		<br> <input type="hidden" id="date" name="date"
			value="<%=travelDate%>"> <input type="hidden"
			id="sourceplace" name="sourceplace" value="<%=sourceplace%>">
		<input type="hidden" id="destinationplace" name="destinationplace"
			value="<%=destinationplace%>"> <input type="hidden"
			id="persons" name="persons" value="<%=persons%>">
		<button type="submit" class="btn btn-success btn-block" value="Submit">Confirm</button>
	</form>
	<%
		}
	%>
</body>
</html>