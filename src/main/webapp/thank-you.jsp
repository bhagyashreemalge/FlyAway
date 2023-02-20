<%@ page import="com.model.Search"%>
<%@ page import="com.model.Booking"%>
<%
	Booking.name_on_card = request.getParameter("name_on_card");
	Booking.card_details = request.getParameter("card_details");
	String travelDate = request.getParameter("date");
	String sourceplace = request.getParameter("source");
	String destinationplace = request.getParameter("destination");
	int persons = Integer.parseInt(request.getParameter("persons"));
	if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
		out.println("Please enter valid card details");
	}
%>

<!DOCTYPE html>
<html>
<head>
<title>Thank You - FlyAway Airlines</title>
</head>
<body>
	<div class="container">
		<h2 align="center">
			<span><strong>Thank You</strong></span>
		</h2>
		<div align="center" class="col">
			<img src="img/favicon.png" class="img-fluid" alt="image">
		</div>
		<p align="center">
			<span><strong>Your ticket has been booked. The
					summary/details are as follows</strong></span>
		</p>
		<p>
			<button onclick="window.print()" class="btn btn-success btn-block">Print
				Ticket</button>
		</p>
		<br>
		<h3>Ticket Summary</h3>
		<h4>
			<strong><%=sourceplace%> to <%=destinationplace%> | <%=travelDate%></strong>
		</h4>
		<p align="left"><%=Booking.flight_booking_id%>
			-
			<%=Booking.flight_name%>
			(Travellers
			<%=persons%>)
		</p>
		<br> <br>
		<h3>
			<strong>Passenger Summary</strong>
		</h3>
		<h3>
			Booking Name-<%=Booking.passenger_name%>
			| Email-
			<%=Booking.passenger_email%>
			| Phone-
			<%=Booking.passenger_phone%></h3>
		<br>
		<h3>
			<strong>Payment Summary</strong>
		</h3>
		<h4>
			Payment By-<%=Booking.name_on_card%>
			| Card No-
			<%=Booking.card_details%></h4>
		<br>
		<h2 align="right">
			<strong>Total Paid- Rs.<%=persons * Booking.ticket_price%></strong>
		</h2>
		<br>
		<br>
	</div>
</body>
</html>
