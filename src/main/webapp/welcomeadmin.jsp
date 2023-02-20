<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.controls.Login"%>

<%
	String driverName = "com.mysql.cj.jdbc.Driver";

	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "flyaway_data";
	String userId = "root";
	String password = "root12345";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Admin Page</title>
</head>
<body>

	<%
		if (Login.isLoggedIn) {
	%>
	<div class="container">
		<h2 align="center">
			<b>Admin Dashboard</b>
		</h2>
		<p align="center">
			<span><strong>You are LoggedIn as : <%=Login.email%>.
					Your Password is : <%=Login.password%></strong></span>
		</p>
		<br> <br>
		<div class="row">
			<div class="col-lg-3 col-md-4 col-sm-6 mb-4">
				<form method="post" action="passwordchange.jsp">
					<button type="submit" class="btn btn-success mb-2 btn-block">Change
						Password</button>
				</form>
				&ensp;
				<div class="col-lg-3 col-md-4 col-sm-6 mb-4">
					<form method="post" action="adminlogin.jsp">
						<button type="submit" class="btn mb-2 btn-danger btn-block">Logout</button>
					</form>
				</div>
				<br>
			</div>
		</div>

		<section class="container-fluid"> <section
			class="row justify-content-center"> <section>
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col">Flight ID</th>
					<th scope="col">Source</th>
					<th scope="col">Destination</th>
					<th scope="col">Airline</th>
					<th scope="col">Ticket Price</th>
				</tr>
			</thead>
			<tbody>

				<p align="center">
					<span><strong> Flight Table (Database hosted at <a
							href="">MySQL</a>)
					</strong></span>
				</p>
				<%
					try {
							connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
							statement = connection.createStatement();
							String sql = "SELECT * FROM flights";
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
				%>
				<tr>
					<td><%=resultSet.getInt("flight_id")%></td>
					<td><%=resultSet.getString("source")%></td>
					<td><%=resultSet.getString("destination")%></td>
					<td><%=resultSet.getString("airline")%></td>
					<td><%=resultSet.getInt("ticketprice")%></td>
				</tr>
				<%
					}
						} catch (Exception e) {
							e.printStackTrace();
						}
					} else {
						out.print("You must Login first");
					}
				%>
			</tbody>
		</table>
		</section> </section> </section>
</body>
</html>