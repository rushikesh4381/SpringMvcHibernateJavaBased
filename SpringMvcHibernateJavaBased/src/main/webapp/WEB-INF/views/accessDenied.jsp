<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>AccessDenied page</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>
	<div>
		<h4>Dear <strong>${user}</strong>, You are not authorized to access this page</h4>
		<a href="<c:url value="/logout" />" class="btn btn-primary">Logout</a>
	</div>
</body>
</html>