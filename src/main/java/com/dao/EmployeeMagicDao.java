package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.EmployeeEntity;

public interface EmployeeMagicDao extends JpaRepository<EmployeeEntity, Integer>{

	

	EmployeeEntity findByEmailIdAndPassword(String emailId, String password);

}
