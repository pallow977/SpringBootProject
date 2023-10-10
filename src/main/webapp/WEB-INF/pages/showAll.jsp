<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Congratulations page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Congratulations!!!!!</h2>
  
  
  <table class="table table-hover">
    <thead>
      <tr bgcolor="yellow">
        <th>Employee Id</th>
        <th>Employee Name</th>
        <th>Salary</th>
        <th>Email Address</th>
        <th>Password</th>
         <th colspan=2>Action(Delete/Edit)</th>
      </tr>
    </thead>
    <tbody>
           <c:forEach var="tempVar" items="${employeeDTO}">
           <tr bgcolor="pink">
				<td>${tempVar.employeeId}</td>
        		<td>${tempVar.employeeName}</td>
        		<td>${tempVar.salary}</td>
        		<td>${tempVar.emailId}</td>
        		<td>${tempVar.password}</td> 
        		<td><a href="deleteEmployee?employeeId=${tempVar.employeeId}"><button type="button" class="btn btn-danger"><img src="images/delete.jpg" alt="delete image" style="height:30px;width:30px"></button></a></td>  
        		<td><a href="updateEmployee?employeeId=${tempVar.employeeId}"><button type="button" class="btn btn-primary"><img src="images/edit.jpg" alt="edit image" style="height:30px;width:30px"></button></a></td>    	       		       		
			</tr>
	
      </c:forEach>
    </tbody>
  </table>
 
</div>


</body>
</html>