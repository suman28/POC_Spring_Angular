package com.cisco.capital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cisco.capital.dao.RegDAO;
import com.cisco.capital.model.RegistrationVO;

@Service("regService")
public class RegServiceImpl implements RegService{

	@Autowired
	RegDAO regDAO;
	public List<RegistrationVO> getRegisteredUsers(){
		return regDAO.getRegisteredUsers();
	}
	public RegistrationVO getUser(String userId) {
		return regDAO.getUser(userId);
	}
	
	public void saveUser(RegistrationVO registrationVO){
		regDAO.saveUser(registrationVO);
	}
	public void deleteUser(String userId) {
		regDAO.deleteUser(userId);
		
	}
	public RegistrationVO getUserData(String userId) {
		return regDAO.getUserData(userId);
	}
	public void editUser(RegistrationVO registrationVO) {
		regDAO.editUser(registrationVO);
		
	}
	
	
}
