package com.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.dao.EmployeeMagicDao;
import com.dto.EmployeeDTO;
import com.entity.EmployeeEntity;
@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeMagicDao employeeDao;
	@Override
	public EmployeeDTO authenticate(String emailId, String password) {
		EmployeeEntity employeeEntity=employeeDao.findByEmailIdAndPassword(emailId,password); //it is a derived 
		
		if(employeeEntity !=null) {
		EmployeeDTO employeeDTO=new EmployeeDTO();//it will create blank dto object
		
		BeanUtils.copyProperties(employeeEntity, employeeDTO); 
		
		
		
		return employeeDTO;
	}
	
		else return null;
		
	}
	@Override
	public String registerEmployee(EmployeeDTO employeeDTO) {
		EmployeeEntity employeeEntity=new EmployeeEntity();
		
		BeanUtils.copyProperties(employeeDTO,employeeEntity);
		System.out.println(employeeEntity);
		System.out.println(employeeDTO);
		
		  employeeDao.save(employeeEntity);
		  return "registration done successfully";

	}
	@Override
	public List<EmployeeDTO> getAllEmployee() {
		
		List<EmployeeEntity> listOfEmployeeEntity=employeeDao.findAll();
		
		List<EmployeeDTO> listOfEmployeeDto=new ArrayList<>();//blank list
		
		for(EmployeeEntity employeeEntity  :listOfEmployeeEntity) {
			
			EmployeeDTO employeeDTO=new EmployeeDTO();//blank dto oject
			BeanUtils.copyProperties(employeeEntity,employeeDTO);
			listOfEmployeeDto.add(employeeDTO);
			
			
		}
		
		return listOfEmployeeDto;
	}
	@Override
	public void deleteEmployee(int employeeId) {
		System.out.println(employeeId);
		employeeDao.deleteById(employeeId);
	}
	@Override
	public EmployeeDTO findEmployee(int employeeId) {
Optional<EmployeeEntity> optional=employeeDao.findById(employeeId);
		
		if(optional.isPresent()) {
			EmployeeEntity employeeEntity=optional.get();
			EmployeeDTO employeeDTO=new EmployeeDTO();
			BeanUtils.copyProperties(employeeEntity,employeeDTO);
			return employeeDTO;
	}
			return null;
	}
	@Override
	public String updateEmployee(EmployeeDTO employeeDTO) {
EmployeeEntity employeeEntity=new EmployeeEntity();
		
		BeanUtils.copyProperties(employeeDTO,employeeEntity);
		  employeeDao.save(employeeEntity);
		  return " updation done successfully";
	}

}
