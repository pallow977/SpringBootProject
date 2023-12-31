<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
${message}
	<div class="container">
	
	  <h2>Login Form</h2>
	  <img src="images/login_img.jpg" alt="login page" style="height:100px,weidth:100px">
	  <form action="validate" method="post">
	    <div class="form-group">
	      <label for="emailId">Email Id:</label>
	      <input type="text" class="form-control" placeholder="Enter email" name="emailId">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" placeholder="Enter password" name="password">
	    </div>
	    
	        <button type="submit" class="btn btn-primary">Submit</button>
	        <button type="reset" class="btn btn-danger">Reset</button>
	        <a href="registration"><button type="button" class="btn btn-warning">Sign-Up</button></a>
	        
	  </form>
	</div>

</body>
</html>