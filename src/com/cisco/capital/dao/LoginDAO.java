package com.cisco.capital.dao;

import java.util.List;

import com.cisco.capital.model.LoginVO;
import com.cisco.capital.model.RegistrationVO;

public interface LoginDAO {

	public void saveUsers(LoginVO loginVO);

	public void validateUsers(LoginVO loginVO);
}
