<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Omikuji</title>
	<link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>
<body>
	<h1>Send an Omikuji</h1>
	<form action="/send" method="post">
		<div>
			<label>Pick any number from 5 to 25: </label>
			<input type="number" name="numberPick" min ="5" max="25">		
		</div>
		<div>
			<label>Enter the name of any city: </label>
			<input type="text" name="cityName">		
		</div>
		<div>
			<label>Enter the name of any real person: </label>
			<input type="text" name="personName">		
		</div>
		<div>
			<label>Enter professional endeavor or hobby: </label>
			<input type="text" name="hobby">		
		</div>
		<div>
			<label>Enter any type of living thing: </label>
			<input type="text" name="thing">		
		</div>
		<div>
			<label>Say something nice to someone: </label>
			<textarea name="message"></textarea>		
		</div>
		<div>
			<p>Send and show a friend</p>
			<button type="submit" value="send">Send</button>
		</div>
	</form>
</body>
</html>