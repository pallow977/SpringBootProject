package com.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.EmployeeDTO;
import com.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService employeeService;
	
	
	
	@GetMapping("/login")
	public String authenticateUser() {
		
		return "login";    	}
	
	
	@PostMapping("/validate")
	
	public String authenticateEmp(@RequestParam String emailId,@RequestParam String password,Model model) {
		EmployeeDTO employeeDTO=employeeService.authenticate(emailId,password);
		
		if(employeeDTO!=null) {
		
			System.out.println("Record exist");
			model.addAttribute("employeeDTO", employeeDTO);
			return "congratulations";
			
		}else {
			System.out.println("Record does not exist");
			model.addAttribute("message", "Wrong credential");
			return "login";
		}	
		}
	
		@GetMapping("/showEmployee")
		public String getAllEmployee(Model model) {
			List<EmployeeDTO> employeeDTO =employeeService.getAllEmployee();
			
			System.out.println("List of records ="+employeeDTO.size()); 
			model.addAttribute("employeeDTO", employeeDTO);
			
			return "showAll";
			
	}
	@GetMapping("/registration")
	public String registrationPage() {
		
		return "employeeRegistration";
	}
	
	
	@PostMapping("/employeeRegistration")
	public String registration(@ModelAttribute EmployeeDTO employeeDTO,Model model ) {
		String message=employeeService.registerEmployee(employeeDTO);
		model.addAttribute("message", message);
	return "employeeRegistration";	
	}
	//delete operation
		@GetMapping("/deleteEmployee")
		public String deleteEmployee(@RequestParam int employeeId, Model model) {
			System.out.println(employeeId+"...........................controller............................................");
			employeeService.deleteEmployee(employeeId);
			
		    model.addAttribute("message", "Record deleted successfully");
			
			
			//return "info";    //info.jsp
		    return "redirect:/showEmployee";
		}
		
		
	
	}
