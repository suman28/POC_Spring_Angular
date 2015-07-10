package com.cisco.capital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cisco.capital.dao.LoginDAO;
import com.cisco.capital.dao.LoginDAOImpl;
import com.cisco.capital.model.LoginVO;
import com.cisco.capital.model.RegistrationVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	@Autowired
	LoginDAO loginDAO;

	

/*	public List<LoginVO> getAllUsers() {

		//LoginDAO loginDAO=new LoginDAOImpl();  //without @Autowired
		return loginDAO.getAllUsers();
	}
*/


	public void saveUsers(LoginVO loginVO) {
		loginDAO.saveUsers(loginVO);
	}



	public void validateUsers(LoginVO loginVO) {
		loginDAO.validateUsers(loginVO);
		
	}



	
	

}
