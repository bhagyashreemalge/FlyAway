<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Flight- Search Form</title>
</head>
<body>
	<form action="searchresults.jsp">
		<div class="form-group">
			<label for="date">Date of Travel</label> <input type="date"
				class="form-control" id="date" name="date" placeholder="Travel Date">
		</div>
		<div class="form-group">
			<label for="source">Source</label> <select class="form-control"
				id="source" name="source">
				<option value="Delhi">Delhi</option>
				<option value="California">California</option>
				<option value="Dubai">Dubai</option>
				<option value="London">London</option>
				<option value="Lahore">Lahore</option>
				<option value="Paris">Paris</option>
				<option value="Sydney">Sydney</option>
			</select>
		</div>
		<div class="form-group">
			<label for="destination">Destination</label> <select
				class="form-control" id="destination" name="destination">
				<option value="London">London</option>
				<option value="Delhi">Delhi</option>
				<option value="Los Angeles">Los Angeles</option>
				<option value="Beejing">Beejing</option>
				<option value="Mumbai">Mumbai</option>
				<option value="New York">New York</option>
				<option value="Bangkok">Bangkok</option>
				<option value="Delhi">Delhi</option>
			</select>
		</div>
		<div>
			<label for="persons">No of Persons</label> <select
				class="form-control" id="persons" name="persons">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
		</div>
		<br>
		<button type="submit" class="btn btn-success btn-block" value="Submit">Search
			Flights</button>
	</form>
</body>
</html>