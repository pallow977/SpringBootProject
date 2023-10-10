package com.service;

import java.util.List;


import com.dto.EmployeeDTO;

public interface EmployeeService {

	public EmployeeDTO authenticate(String emailId, String password);

	public String registerEmployee(EmployeeDTO employeeDTO);

	public List<EmployeeDTO> getAllEmployee();

	public void deleteEmployee(int employeeId);

	public EmployeeDTO findEmployee(int employeeId);

	public String updateEmployee(EmployeeDTO employeeDTO);



	//public List<EmployeeDTO> getAllEmployee();

	//public String registerEmployee(EmployeeDTO employeeDTO);

	//public void deleteEmployee(int employeeId);

	

}
