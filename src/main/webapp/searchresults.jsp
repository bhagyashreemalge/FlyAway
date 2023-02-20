<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.model.Search"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Login</title>
</head>
<body>
	<table>
		<%
			String travelDate = request.getParameter("date");
			String sourceplace = request.getParameter("source");
			String destinationplace = request.getParameter("destination");
			int persons = Integer.parseInt(request.getParameter("persons"));

			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			String url = "jdbc:mysql://localhost:3306/flyaway_data";
			String username = "root";
			String password = "root12345";
			Connection conn = DriverManager.getConnection(url, username, password);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM flights WHERE source = '" + sourceplace
					+ "' AND destination='" + destinationplace + "'");
		%>

		<h2 align="center">
			<span><strong>Search Results</strong></span>
		</h2>
		<p align="center">
			<span><strong> Showing available flights from <%=sourceplace%>
					to <%=destinationplace%> <br> Date of travel : <%=travelDate%>
					(<%=Search.day%>) <br> No of travellers : <%=persons%> <br>
		</p>
		<%
			if (rs.next()) {
		%>
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col">Flight_Id</th>
					<th scope="col">Source</th>
					<th scope="col">Destination</th>
					<th scope="col">airline</th>
					<th scope="col">Ticket Price</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" value="<%=rs.getInt(1)%>"></td>
					<td><input type="text" value="<%=rs.getString(2)%>"></td>
					<td><input type="text" value="<%=rs.getString(3)%>"></td>
					<td><input type="text" value="<%=rs.getString(4)%>"></td>
					<td><input type="text" value="<%=rs.getString(5)%>"></td>
					<td>
						<form action="personaldetails.jsp">
							<input type="hidden" id="flight_id" name="flight_id"
								value="<%=rs.getInt("flight_id")%>"> <input
								type="hidden" id="source" name="source"
								value="<%=rs.getString("source")%>"> <input
								type="hidden" id="destination" name="destination"
								value="<%=rs.getString("destination")%>"> <input
								type="hidden" id="airline" name="airline"
								value="<%=rs.getString("airline")%>"> <input
								type="hidden" id="ticketprice" name="ticketprice"
								value="<%=rs.getInt("ticketprice")%>"> <input
								type="hidden" id="date" name="date" value="<%=travelDate%>">
							<input type="hidden" id="sourceplace" name="sourceplace"
								value="<%=sourceplace%>"> <input type="hidden"
								id="destinationplace" name="destinationplace"
								value="<%=destinationplace%>"> <input type="hidden"
								id="persons" name="persons" value="<%=persons%>"> <input
								type="submit" class="btn btn-success" value="Book This Flight">
						</form>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
</body>
</html>