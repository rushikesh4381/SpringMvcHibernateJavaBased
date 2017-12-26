<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 <!--  <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery-3.2.1.min.js"></script> -->
 
</head>
<body>
		<div class="container">
		 	<div>
				<h1>New / Edit Employee</h1>
			</div>
			
			<div>
					<form:form action="saveEmployee" method="post" modelAttribute="employee">
						<form:hidden path="id"/>
						<div class="form-group">	
							<label for="ename">Employee Name </label>
							 <form:input path="employeeName" type="text" name="ename" class="form-control" id="ename" placeholder="Enter Employee Name"/>
						</div>
						<div class="form-group">
							<label for="eadress">Employee Address </label>
							<form:input path="employeeAddress" type="text" name="eadress" class="form-control" id="eadress" placeholder="Enter Employee Address"/>
						</div>
						<div>
							<label for="econtact">Employee Contact </label>
							<form:input path="employeeContact" type="mobile" name="econtact" class="form-control" id="Enter Employee Contact" placeholder="Enter Employee Contact"/>
						</div>
						<div>	
								<input type="submit" class="btn btn-default" value="Save"/>
 						</div>
					</form:form>
			</div>
	
		</div>
</body>
</html>