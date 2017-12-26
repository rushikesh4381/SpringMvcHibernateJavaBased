<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  <link href="/resources/css/bootstrap.min.css"rel="stylesheet" />
	 <link href="/resources/css/bootstrap-theme.min.css" rel="stylesheet" />
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery-3.2.1.min.js"></script>  -->

	<%-- <spring:url value="/resources/css/bootstrap.min.css" var="mainCss" />
	<spring:url value="/resources/css/bootstrap-theme.min.css" var="themeCss" />
	<spring:url value="/resources/js/jquery-3.2.1.min.js" var="jqueryJs" />
	<spring:url value="/resources/js/bootstrap.min.js" var="mainJs" />
	
	<link href="${mainCss}" rel="stylesheet" />
    <link href="${themeCss}" rel="stylesheet" />
    <script src="${jqueryJs}"></script>
    <script src="${mainJs}"></script> --%>  
    
  	<script type="text/javascript">
	
  		$(document).ready(function()
  		{
  	//		alert('doc loaded ...'); 			
  		});
  	
	</script>

</head>
<body>
		<div class="container">			
				<div class="row">
					<!-- 	<a href="?lang=en">English </a> | <a href="?lang=sp">Spanish </a> -->
						<h3><spring:message code="title"/></h3>
					<%-- 	<h3>Title : ${title}</h3> --%>
						
				</div>
		
				<div class="row">
					<div class="row">
						<div class="col-md-12"><a href="userList" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-user"></span>User List</a><br></div>
						<div class="col-md-12"></div>
						<div class="col-md-12"></div>
						<div class="col-md-12"><a href="employeeList" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-user"></span>Employee List</a><br></div>
					</div>
					<div class="row">
										
					</div>						
				</div>
				<%-- <div id="myModal" class="modal fade">
					
				    <div class="modal-dialog">
				    	<form:form action="saveUser" method="post" modelAttribute="user">	
				        <div class="modal-content">					       	       	 
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title">User Form</h4>
					            </div>
					            <div class="modal-body">				               
					               	 
				       	  				<form:hidden path="id"/>	
					               		<div class="form-group">
					               			<label for="uname">User Name</label>
					               			<form:input path="username" class="form-control" type="text" name="uname" placeholder="Enter User Namee"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="email">Email</label>
					               			<form:input path="email" class="form-control" type="email" name="email" placeholder="Enter Email"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="password">Password</label>
					               			<form:input path="password" class="form-control" type="password" name="password" placeholder="Enter Password"/>
					               		</div>				 
					               		<div>
					               			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					            			<button type="submit" class="btn btn-default" value="Save"/>
					               		</div>    
					               		        
					            </div>
					            <div class="modal-footer">
					            					            
					            </div>
				             
				        </div>
				       </form:form>  
				    </div>
				    
			</div> --%>
		</div>
</body>
</html>