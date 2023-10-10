package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dto.EmployeeDTO;
import com.service.EmployeeService;
@RestController

@RequestMapping("/api/v1")
public class EmployeeRestController1 {
	
	@Autowired
	EmployeeService employeeService;
	
	
	@GetMapping("/showEmployee") //localhost:8080/api/v1/showEmployee
	public ResponseEntity<List<EmployeeDTO>> getAllEmployee() {
		
		List<EmployeeDTO> employeeDTOlist =employeeService.getAllEmployee();
		
		return new ResponseEntity(employeeDTOlist,HttpStatus.OK);
	}
	

	@GetMapping("/findEmployee/{employeeId}") //localhost:8080/api/v1/findEmployee/3
	public ResponseEntity<EmployeeDTO> getParicularEmp(@PathVariable int employeeId ) {
		
		EmployeeDTO employeeDTO =employeeService.findEmployee(employeeId);
		
		return new ResponseEntity(employeeDTO,HttpStatus.OK);
	}
	@PostMapping("/employeeRegistration")////localhost:8080/api/v1/employeeRegistration
	public ResponseEntity<String> registration(@RequestBody EmployeeDTO employeeDTO ) {
		String message=employeeService.registerEmployee(employeeDTO);
		
	 return new ResponseEntity(message,HttpStatus.CREATED);	
	}
	@DeleteMapping("/deleteEmployee/{employeeId}")   //localhost:8080/api/v1/deleteEmployee/3
	
	public	ResponseEntity<String> deleteEmployee(@PathVariable int employeeId){
	
	employeeService.deleteEmployee(employeeId);
	return new ResponseEntity("deleted successfully",HttpStatus.OK);	
	
	}
	@PutMapping("/updateEmployee")////localhost:8080/api/v1/updateEmployee
	public ResponseEntity<String> updateEmp(@RequestBody EmployeeDTO employeeDTO ) {
		String message=employeeService.updateEmployee(employeeDTO);
		
	 return new ResponseEntity(message,HttpStatus.OK);	
	}
	

}
