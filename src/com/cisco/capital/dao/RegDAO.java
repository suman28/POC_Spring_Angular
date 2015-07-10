package com.cisco.capital.dao;

import java.util.List;

import com.cisco.capital.model.RegistrationVO;

public interface RegDAO {
	
	public List<RegistrationVO> getRegisteredUsers();
	
	public RegistrationVO getUser(String userId);
	
	public void saveUser(RegistrationVO registrationVO);

	//public RegistrationVO deleteUser(String userId);

	
	public void deleteUser(String userId);

	public RegistrationVO getUserData(String userId);

	public void editUser(RegistrationVO registrationVO);
}
