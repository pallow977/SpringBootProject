<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Congratulations page</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Congratulatons!!!!!</h2>
  <marquee>Hey !!!<h4>${employeeDTO.employeeName}</h4>--You have logged-in successfully</marquee>
  
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Employee Id</th>
        <th>Employee Name</th>
        <th>Salary</th>
        <th>Email Address</th>
        <th>Password</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${employeeDTO.employeeId}</td>
        <td>${employeeDTO.employeeName}</td>
        <td>${employeeDTO.salary}</td>
        <td>${employeeDTO.emailId}</td>
        <td>${employeeDTO.password}</td>
      </tr>
      
    </tbody>
  </table>
  <a href="showEmployee">click here to get all the records</a>
</div>



</body>
</html>