<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.controls.Login"%>
<% Login.isLoggedIn = false; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
	<form action="Login" method="post" class="form-container">
		<div class="form-group mb-2">
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="email" name="emailEntered" class="form-control"
				id="inputEmail" aria-describedby="emailHelp"
				placeholder="Enter email"> <br>
			<small id="emailHelp" class="form-text text-muted">&nbsp;&nbsp;Email
				: bhagyashree@flyaway.com</small>
		</div>
		<br>
		<div class="form-group mx-sm-3 mb-2">
			<label for="inputPassword" class="sr-only">Password</label> <input
				type="password" name="passwordEntered" class="form-control"
				id="inputPassword" placeholder="Password"> <br>
			<small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp;
				Current Password :&nbsp;<%= Login.password %></small>
		</div>
		<br>
		<button type="submit" class="btn btn-success btn-block" value="Submit">Login</button>
	</form>
</body>
</html>