<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<spring:url value="/resources/css/bootstrap.min.css" var="mainCss" />
	<spring:url value="/resources/js/jquery-3.2.1.min.js" var="jqueryJs" />
	<spring:url value="/resources/js/bootstrap.min.js" var="mainJs" />
	
	<link href="${mainCss}" rel="stylesheet" />
    <script src="${jqueryJs}"></script>
    <script src="${mainJs}"></script>
    <%-- 
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script> --%>
    
</head>
<body>
hello1
<h1>1. Test CSS12345</h1>
<a href="userList" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-user"></span>User List</a>

<h2>2. Test JS12345</h2>
<div id="msg"></div>

</body>
</html>