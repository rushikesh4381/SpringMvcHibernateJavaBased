<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New or Edit User</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	$(document).ready(function(){
		alert('jquery');
	
	});
</script>  

</head>
<body>
	<div class="container">
		<div>
			<h1>New/Edit User</h1>
		</div>
		<div>
			<%-- <form:form  action="saveUser" method="post" modelAttribute="user">
				 <form:hidden path="id"/>
			 		<div class="form-group">
		      			<label for="username">User Name </label>
		      			<form:input path="username" type="text" class="form-control" id="username" placeholder="Enter User Name"/>
		    		</div>
		    		<div class="form-group">
		     		 	<label for="email">Email </label>
		     		  	<form:input path="email"  type="email" class="form-control" id="email" placeholder="Enter Email"/>
		    		</div>
		    		<div class="form-group">
		      			<label for="password">Password </label>
		        		<form:input path="password" type="password" class="form-control" id="password" placeholder="Enter password"/>
		    		</div>
		    		<button type="submit" class="btn btn-default">Submit</button>
		  	</form:form> --%>
	    </div>
	</div>



	<%-- <div class="container">
	<div align="center">
		<h1>New/Edit User</h1>
		<table>
			<form:form action="saveUser" method="post" modelAttribute="user">
			<form:hidden path="id"/>
			<tr>
				<td>Username:</td>
				<td><form:input path="username"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:password path="password"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Save">
				</td>
			</tr>			
			</form:form>
		</table>
	</div>
	</div> --%>
</body>
</html>