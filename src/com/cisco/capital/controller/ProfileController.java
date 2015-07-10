package com.cisco.capital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {

	@RequestMapping("/userProfile")
	public ModelAndView getProfilePage(){
		return new ModelAndView("userProfile");
	}
	
}
