<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

		  <title>Registration Page</title>
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
	${message}
	  <h2>Registration Form</h2>
	  <img src="images/registration.jpg" alt="login page" style="height:120px">
	  <form action="employeeRegistration" method="post">
	    
	    
	    <div class="form-group">
	      <label for="empName">Employee Name:</label>
	      <input type="text" class="form-control" placeholder="Enter Name" name="employeeName">
	    </div>
	    
	    <div class="form-group">
	      <label for="salary">Salary:</label>
	      <input type="text" class="form-control" placeholder="Enter salary" name="salary">
	    </div>	    
	       
	    <div class="form-group">
	      <label for="emailId">Email Id:</label>
	      <input type="text" class="form-control" placeholder="Enter email" name="emailId">
	    </div>
	    
	    <div class="form-group">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" placeholder="Enter password" name="password">
	    </div>
	    
	        <button type="submit" class="btn btn-primary">Register</button>
	        
	        
	  </form>
	</div>

</body>
</html>