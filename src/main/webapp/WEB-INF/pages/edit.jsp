<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	${message}
	  <h2>Edit Form</h2>
	  
	  <form action="finalUpdateEmployee" method="post">
	    
	    <div class="form-group">
	      <label for="empName">Employee Id:</label>
	      <input type="text" class="form-control"  name="employeeId" value="${employeeDTO.employeeId}" readonly>
	    </div>
	    
	    <div class="form-group">
	      <label for="empName">Employee Name:</label>
	      <input type="text" class="form-control" placeholder="Enter name" name="employeeName" value="${employeeDTO.employeeName}">
	    </div>
	    
	    <div class="form-group">
	      <label for="salary">Salary:</label>
	      <input type="text" class="form-control" placeholder="Enter salary" name="salary" value="${employeeDTO.salary}">
	    </div>	    
	       
	    <div class="form-group">
	      <label for="emailId">Email Id:</label>
	      <input type="text" class="form-control" placeholder="Enter email" name="emailId" value="${employeeDTO.emailId}">
	    </div>
	    
	    <div class="form-group">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" placeholder="Enter password" name="password" value="${employeeDTO.password}">
	    </div>
	    
	        <button type="submit" class="btn btn-primary">EDIT</button>
	        
	        
	  </form>
	</div>

</body>
</html>