<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show</title>
</head>
<body>
	<h1>Here is your Omikuji</h1>
	<div>
	In 
	<c:out value="${numberPick}"></c:out>
	years, you will live in 
	<c:out value="${cityName}"></c:out>
	with
	<c:out value="${personName}"></c:out>
	as your roomate, selling 
	<c:out value="${hobby}"></c:out>
	for a living. The next time you see a 
	<c:out value="${thing}"></c:out>
	, you will hace good luck. Also,
	<c:out value="${message}"></c:out>
	</div>
</body>
</html>