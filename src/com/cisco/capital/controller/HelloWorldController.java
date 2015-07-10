package com.cisco.capital.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.capital.model.LoginVO;
import com.cisco.capital.model.RegistrationVO;
import com.cisco.capital.model.Student;

@Controller
public class HelloWorldController {
	
	
	
	/*@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView getView(){
		
		List<RegistrationVO> userList = getDataFromDB();
		ModelAndView model= new ModelAndView("index");
		model.addObject("userView", userList);
		
		return model;
		
	}
	*/
	/*@RequestMapping(value="/getJSON",method = RequestMethod.POST)
	public @ResponseBody ModelAndView getngView(@RequestParam("params")String userId){
		System.out.println("user ID is"+userId);
		return null;
	}*/
	
	
	/*@RequestMapping("/hello")
	public ModelAndView helloWorld() {

		String message = "Hello World, Spring 3.0!";
		System.out.println(message);
		return new ModelAndView("hello", "message", message);
	}
*/
	
	/*public ModelAndView getView() {
		 
		List<RegistrationVO> list = getDataFromDB();
 
		//return back to index.jsp
		ModelAndView model = new ModelAndView("index");
		model.addObject("lists", list);
 
		return model;
 
	}*/

	
	
	
	/*Controller*/
/*	public ModelAndView getData(@PathVariable("productId") String userId) {

		RegistrationVO user = getUser(userId);
		// forward to result.jsp
		ModelAndView model = new ModelAndView("result");
		model.addObject("userVO", user);

		return model;

	}
	*/
	
	
	/*@RequestMapping(value = "/hello/{productId}", method = RequestMethod.GET)
	public ModelAndView getUserInfo(@PathVariable("productId")String userId){
		RegistrationVO userDB = getUserInfo(userId);
		ModelAndView model = new ModelAndView("result");
		model.addObject("users",userDB);
		return model;
	}
	*/
	


		
	
	/*DAO layer*/
	/*private RegistrationVO getUser(String userId) {
		RegistrationVO userVO = null;

		List<RegistrationVO> users = getAllUsersFromDB();
		for (RegistrationVO registrationVO2 : users) {
			if (registrationVO2.getUserId().equalsIgnoreCase(userId)) {
				registrationVO = registrationVO;
			}
		}
		for(int i=0;i<users.size();i++){
			if (users.get(i).getUserId().equalsIgnoreCase(userId)) {
				userVO = users.get(i);
			}
		}
		return userVO;

	}
*/
	/* DAO layer method */
	
}
