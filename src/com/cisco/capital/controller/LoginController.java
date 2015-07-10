package com.cisco.capital.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import oracle.jdbc.util.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.capital.model.LoginVO;
import com.cisco.capital.model.RegistrationVO;
import com.cisco.capital.service.LoginService;
import com.cisco.capital.service.LoginServiceImpl;
import com.google.gson.Gson;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping("/index")
	public ModelAndView getIndexPage(){
		return new ModelAndView("home");
	}
	
	/*@RequestMapping("/home")
	public ModelAndView getHomePage(){
		return new ModelAndView("home");
	}*/
	
	/*@RequestMapping("/hello")
	public String getHomePage(ModelMap map){
		//new LoginServiceImpl();
		List<RegistrationVO> usersList = loginService.getAllUsers();
		
		map.addAttribute("usersList", usersList);
		
		return "home";
	}*/
	
	@RequestMapping("/login")
	public ModelAndView getLoginPage(){
		return new ModelAndView("login");
	}
	
	
	
	   
	   @RequestMapping(value="/submitUser", method=RequestMethod.POST)
	   public @ResponseBody String submitUser(@ModelAttribute("loginUsers")LoginVO loginVO,HttpServletRequest request
			   ){
		  /* List<LoginVO> userList = new ArrayList<LoginVO>();
		   LoginVO loginVO = new LoginVO();
		   loginVO.setUserName("suman");
		   loginVO.setPassword("password");
		   
		  
		   
		   userList.add(loginVO);
		   System.out.println(userList);
		   Gson gson = new Gson();
		   String toJson = gson.toJson(userList);
		   System.out.println(toJson);
		   return toJson;*/
		   
		   request.getRemoteUser();
		   loginService.saveUsers(loginVO);
		   Gson gson = new Gson();
		   return gson.toJson(loginVO);
		   
		   loginService.validateUsers(loginVO);
		   
	   }
}
