<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 
 <script type="text/javascript">
    function btnClicked(id)
	{
		 alert("mybtn "+id);
         $("#editModal #employeeid").val(id);
         $("#editModal").modal();    
	}
    $(document).ready(function(){
    	
    	 /*  $("#editSubmit").submit(function(event){    	//edit form validation
    		var empname = $('#editModalEmployeeName').val();
    		var empaddress = $('#editModalEmployeeAddress').val();
    		var empcontact = $('#editModalEmployeeContact').val();
    		var error1 = "";
    		
    		alert(empname + " "+empaddress+" "+empcontact);
    		var reg1 =/^[a-zA-Z]+$/;
    		var reg2 =/^(\+\d{1,3}[- ]?)?\d{10}$/;
    		if(!reg1.test(empname)){
    			error1 = error1 + "Employee Name should not contain digits/special characters !!!\n";
    		} 
    		if (!reg2.test(empcontact))
    		{
    			error1 = error1 + "Mobile Number should be 10 digits. Please enter valid mobile number !!!";
    			//alert('User Name should starts with alphabet \n Or Password should contains atleast 8 chars and atleast one char & one number !');
    		}
    		if(error1 != "") {
    			alert(error1);
    		}
    		else
    			return;
    		event.preventDefault();
    		
    	});  */
    	
    	 $("#saveSubmit").submit(function(event){    	//save form validation
    		var ename = $('#saveModalEmployeeName').val();
    		var eaddress = $('#saveModalEmployeeAddress').val();
    		var econtact = $('#saveModalEmployeeContact').val();
    		var error2 = "";
    		
    		alert(ename + " "+eaddress+" "+econtact);
    		
    		var reg3 =/^[a-zA-Z_ ]+$/;
    		var reg4 =/^(\+\d{1,3}[- ]?)?\d{10}$/;    // reg-exp for mobile no validation.
    		if(!reg3.test(ename)){
    			error2 = error2 + "Employee Name should not contain digits/special characters !!!\n";
    		} 
    	 	if (!reg4.test(econtact))
    		{
    			error2 = error2 + "!!Mobile Number should be 10 digits. Please enter valid mobile number !!!";
    			//alert('User Name should starts with alphabet \n Or Password should contains atleast 8 chars and atleast one char & one number !');
    		} 
    	 	
    		if(error2 != "") {
    			alert(error2);
    		}
    		else
    		{	console.log('else part ....');
    			return;
    		}
    		event.preventDefault();
    		
    	}); 
	});
	</script>
 
 </head>
<body>
		<div class="container">
				<div id="editModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
					
				    <div class="modal-dialog">
				    	<form:form action="editEmployee" id="editSubmit" method="post" modelAttribute="employee">	
				        <div class="modal-content">					       	       	 
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title">Employee Form</h4>
					            </div>
					            <div class="modal-body">				               
					               	 
				       	  				<%-- <form:hidden path="id" /> --%>
				       	  				<div class="form-group">
					               			<label for="id">Employee Id</label>
					               			<form:input path="id" id="employeeid" class="form-control" type="text" placeholder="Enter User Id" required="true"/>
					               		</div>
				       	  				<div class="form-group">
					               			<label for="employeeName">Employee Name</label>
					               			<form:input path="employeeName" id="editModalEmployeeName" class="form-control" type="text" placeholder="Enter User Namee" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="employeeAddress">Employee Address</label>
					               			<form:input path="employeeAddress"  id="editModalEmployeeAddress" class="form-control" type="email" placeholder="Enter Address" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="employeeContact">Employee Contact</label>
					               			<form:input path="employeeContact" id="editModalEmployeeContact" class="form-control" type="tel" placeholder="Enter Contact" required="true"/>
					               		</div>				 					               		        
					            </div>
					            <div class="modal-footer">
					            		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					            		<input type="submit" class="btn btn-default" value="Update"/>			            
					            </div>
				             
				        </div>
				       </form:form>  
				    </div>
				    
			</div>  
				<div id="saveModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
					
				    <div class="modal-dialog">
				    	<form:form action="saveEmployee" id="saveSubmit" method="post" modelAttribute="employee">	
				        <div class="modal-content">					       	       	 
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title">Employee Form</h4>
					            </div>
					            <div class="modal-body">				               
					               	 
				       	  				<form:hidden path="id"/>	
										
					               		<div class="form-group">
					               			<label for="employeeName">Employee Name</label>
					               			<form:input path="employeeName" id="saveModalEmployeeName" class="form-control" type="text" placeholder="Enter User Namee" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="employeeAddress">Employee Address</label>
					               			<form:input path="employeeAddress" id="saveModalEmployeeAddress" class="form-control" type="email" placeholder="Enter Address" required="true"/>
					               		</div>
					               		<div class="form-group">
					               			<label for="employeeContact">Employee Contact</label>
					               			<form:input path="employeeContact" id="saveModalEmployeeContact" class="form-control" type="tel" placeholder="Enter Contact" required="true"/>
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
			<div>
				<div class="row">
					<h1>Employee List</h1>
				</div>
				<div class="row">
					<h2><a id="employeeList" data-target="#saveModal" data-toggle="modal" class="btn btn-primary">New Employee</a></h2>
				</div>
				<div class="row">
					<table border="1" class="table table-hover">
						<thead>
							<th>Employee Id</th>
							<th>Employee Name</th>
							<th>Employee Address</th>
							<th>Employee Contact</th>
							<th>Actions</th>
						</thead>
						<tbody>
							<c:forEach var="employee" items="${empList}" varStatus="status">
								<tr> 
									<td>${employee.id}</td>
									<td>${employee.employeeName}</td>
									<td>${employee.employeeAddress}</td>
									<td>${employee.employeeContact}</td>
									<td>
									 <input type="button" onclick="btnClicked(${employee.id})" value="Edit" class="btn btn-primary"/>
									<%-- <a href="editEmployee?id=${employee.id}">Edit</a> --%>
										&nbsp;&nbsp;&nbsp;&nbsp;						
										<a href="deleteEmployee?id=${employee.id}" class="btn btn-primary">Delete</a>
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