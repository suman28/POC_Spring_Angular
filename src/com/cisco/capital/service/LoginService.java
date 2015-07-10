package com.cisco.capital.service;

import java.util.List;

import com.cisco.capital.model.LoginVO;
import com.cisco.capital.model.RegistrationVO;

public interface LoginService {
	//public List<RegistrationVO> getUsersFromDB();

	
	public void saveUsers(LoginVO loginVO);

	public void validateUsers(LoginVO loginVO);
	
	
}
