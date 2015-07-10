package com.cisco.capital.service;

import java.util.List;

import com.cisco.capital.model.RegistrationVO;

public interface RegService {
	public List<RegistrationVO> getRegisteredUsers();
	public RegistrationVO getUser(String userId);
	public void saveUser(RegistrationVO registrationVO);
	//public void deleteUser(RegistrationVO registrationVO);
	//public void editUser(String userId);
	//public RegistrationVO deleteUser(String userId);
	public void deleteUser(String userId);
	public RegistrationVO getUserData(String userId);
	public void editUser(RegistrationVO registrationVO);
}
