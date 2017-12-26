<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    
    
    function btnClicked(id)
	{
		 alert("mybtn "+id);
         $("#editModal #userid").val(id);
         $("#editModal").modal();
    
	}
    $(document).ready(function(){    	
    			$("#editSubmit").submit(function(event){    	//edit form validation
    	    		var username = $('#editModalUserName').val();
    	    		var useremail = $('#editModalUserEmail').val();
    	    		var userpassword = $('#editModalUserPassword').val();
    	    		var error1 = "";
    	    		
    	    		alert(username + " "+useremail+" "+userpassword);
    	    		var reg1 =/^[a-zA-Z].*[a-zA-Z0-9]+$/;
    	    		var reg2 =/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    	    		if(!reg1.test(username)){
            			error1 = error1 + "User Name should starts with alphabet \n";
            		} 
            		if (!reg2.test(userpassword))
            		{
            			error1 = error1 + "Password should contains atleast 8 chars and atleast one char & one number !";
            			//alert('User Name should starts with alphabet \n Or Password should contains atleast 8 chars and atleast one char & one number !');
            		}
            		if(error1 != "") {
            			alert(error1);
            		}
            		else
            			return;
    	    		event.preventDefault();
    	    		
    	    	});
    	
     	 		$("#saveSubmit").submit(function(e){    // save form validation
    			var username = $('#saveModalUserName').val();
    			var useremail = $('#saveModalUserEmail').val();
    			var password = $('#saveModalUserPassword').val();
    			var error2 = "";
    			alert(username+" "+useremail+" "+password);
    			
    			var reg3 =/^[a-zA-Z].*[a-zA-Z0-9]+$/; 
    			var reg4 =/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
        		if(!reg3.test(username)){
        			error2 = error2 + "User Name should starts with alphabet \n";
        		} 
        		if (!reg4.test(password))
        		{
        			error2 = error2 + "Password should contains atleast 8 chars and atleast one char & one number !";
        			//alert('User Name should starts with alphabet \n Or Password should contains atleast 8 chars and atleast one char & one number !');
        		}
        		if(error2 != "") {
        			alert(error2);
        		}
        		else
        			return;
        		e.preventDefault();
    		
    	});  
    	
	});
	</script>  
    
    </head>
    <body>
    	<div class="container">
    	<div id="editModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
					
				    <div class="modal-dialog">
				    	<form:form action="editUser" id="editSubmit" method="post" modelAttribute="user">	
				        <div class="modal-content">					       	       	 
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title">User Form</h4>
					            </div>
					            <div class="modal-body">				               
					               	 
				       	  				<%-- <form:hidden path="id" /> --%>
				       	  				<div class="form-group">
					               			<label for="id">User Id</label>
					               			<form:input path="id" id="userid" class="form-control" type="text" name="id" placeholder="Enter User Id" required="true"/>
					               		</div>	
				       	  			
					               		<div class="form-group">
					               			<label for="uname">User Name</label>
					               			<form:input path="username" id="editModalUserName" class="form-control" type="text" name="uname" placeholder="Enter User Namee" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="email">Email</label>
					               			<form:input path="email" id="editModalUserEmail" class="form-control" type="email" name="email" placeholder="Enter Email" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="password">Password</label>
					               			<form:input path="password" id="editModalUserPassword" class="form-control" type="password" name="password" placeholder="Enter Password" required="true"/>
					               		</div>				 					               		        
					            </div>
					            <div class="modal-footer">
					            		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					            		<input type="submit" class="btn btn-default"  value="Update"/>			            
					            </div>
				             
				        </div>
				       </form:form>  
				    </div>
				    
			</div>  
	      	<div id="saveModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
					
				    <div class="modal-dialog">
				    	<form:form action="saveUser" id="saveSubmit" method="post" modelAttribute="user">	
				        <div class="modal-content">					       	       	 
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title">User Form</h4>
					            </div>
					            <div class="modal-body">	          	 
				       	  				<form:hidden path="id"/>	
					               		<div class="form-group">
					               			<label for="uname">User Name</label>
					               			<form:input path="username" id="saveModalUserName" class="form-control" type="text" name="uname" placeholder="Enter User Namee" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="email">Email</label>
					               			<form:input path="email" id="saveModalUserEmail" class="form-control" type="email" name="email" placeholder="Enter Email" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="password">Password</label>
					               			<form:input path="password" id="saveModalUserPassword" class="form-control" type="password" name="password" placeholder="Enter Password" required="true"/>
					               		</div>				 					               		        
					            </div>
					            <div class="modal-footer">
					            		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					            		<input type="submit" class="btn btn-default" value="Save"/>			            
					            </div>
				             
				        </div>
				       </form:form>  
				    </div>
				    
			</div>     	   
			
	        <div align="center">
		        <div class="row"><h1>Users List</h1></div>
		        <div class="row"><h2><a id="userList" data-target="#saveModal" data-toggle="modal" class="btn btn-primary">New User</a></h2></div>
		        
		        <div class="row">
	        	<table id="table1" border="1" class="table table-hover">
	        	 <thead>
		        	<th>User Id</th>
		        	<th>User Name</th>
		        	<th>Email</th>
		        	<th>Actions</th>
		        </thead>
		        <tbody>
					<c:forEach var="user" items="${userList}" varStatus="status">
		        	<tr>
		        		<td>${user.id}</td>
						<td>${user.username}</td>
						<td>${user.email}</td>
						<td>
							 <input type="button" onclick="btnClicked(${user.id})" value="Edit" class="btn btn-primary"/>
						<%-- 	<a href="#" value="${user.id}" onclick="btnClicked()" class="btn btn-primary">Edit</a> --%>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="deleteUser?id=${user.id}" class="btn btn-primary">Delete</a>
						</td>
		        	</tr>
					</c:forEach>
				  </tbody>	        	
	        	</table>
	        	</div>	
	        </div>
        </div>
    </body>
</html>
