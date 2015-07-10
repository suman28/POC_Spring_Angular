package com.cisco.capital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.capital.model.RegistrationVO;
import com.cisco.capital.service.RegService;
import com.google.gson.Gson;

@Controller
public class RegController {

	@RequestMapping("/userRegistration")
	public ModelAndView getRegistrationPage() {
		return new ModelAndView("userRegistration");
	}
	
	@Autowired
	RegService regService;
	
	@RequestMapping("/result")
	public ModelAndView getResultPage() {
		return new ModelAndView("result");
	}
	

	@RequestMapping("/UserDetails")
	public ModelAndView getDetailsPage() {
		return new ModelAndView("UserDetails");
	}
	
	@RequestMapping("/formData")
	public ModelAndView getEditPage() {
		return new ModelAndView("formData");
	}
	
	/*To save the details of new users*/
	@RequestMapping(value = "/saveUsersData", method = RequestMethod.POST)
	public @ResponseBody
	String saveUser(
			@ModelAttribute("registration") RegistrationVO registrationVO) {
		regService.saveUser(registrationVO);
		Gson gson = new Gson();
		return gson.toJson(registrationVO);
		
	}
	
	
	/*To get the list of users(User Id and first name only)*/
	@RequestMapping(value="/getListOfUsers",method=RequestMethod.POST)
	public @ResponseBody String getRegUsers(@ModelAttribute("registration") RegistrationVO registrationVO) {
		List<RegistrationVO> regUsersList = regService.getRegisteredUsers();
		Gson gson = new Gson();
		return gson.toJson(regUsersList);
	}
	

	/*To get the details of selected user*/
	@RequestMapping(value={"/getDetailsOfUser/{userId}"},method=RequestMethod.POST)
	public @ResponseBody String getUser(@PathVariable("userId") String userId) {
		RegistrationVO registeredUsers = regService.getUser(userId);
		Gson gson = new Gson();
		return gson.toJson(registeredUsers);
	}
	
	/*To get the details of user to be edited*/
	@RequestMapping(value="/getEditableUsersData/{userId}",method=RequestMethod.POST)
	public @ResponseBody String getEditableUsers(@PathVariable("userId")String userId){
	RegistrationVO regUsers = regService.getUserData(userId);
	Gson gson = new Gson();
	return gson.toJson(regUsers);
	}
	
	/*To save the edited details of user*/
	@RequestMapping(value = "/saveEditedDetails", method = RequestMethod.POST)
	public @ResponseBody String editUser(
			@ModelAttribute("editData") RegistrationVO registrationVO) {
		regService.editUser(registrationVO);
		Gson gson = new Gson();
		return gson.toJson(registrationVO);
		//return "forward:/getListOfUsers";
	}
	
	/*To delete the details of user*/
	@RequestMapping(value = "/deleteUserDetails/{userId}", method = RequestMethod.POST)
	public @ResponseBody void deleteUser(@PathVariable("userId") String userId) {
		regService.deleteUser(userId);
//		Gson gson = new Gson();
//		return gson.toJson(delUser);
	}
	
}
