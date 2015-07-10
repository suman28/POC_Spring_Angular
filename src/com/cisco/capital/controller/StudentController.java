package com.cisco.capital.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

import com.cisco.capital.model.Student;
//import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

@Controller
public class StudentController {
   @RequestMapping(value = "/student", method = RequestMethod.GET)
   public ModelAndView student() {
      return new ModelAndView("student", "command", new Student());
   }
   
   @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
   
   /*@ModelAttribute example*/
   public String addStudent(@ModelAttribute("SpringWeb")Student student, 
   ModelMap model) {
      model.addAttribute("name", student.getName());
      //model.addAttribute("age", student.getAge());
     // model.addAttribute("id", student.getId());
      
      return "result";
   }
   

   
   /*@RequestParam example*/
  /* public String addStudent(@RequestParam("name")String name,@RequestParam("age")String age,@RequestParam("id")String id, ModelMap model){
	   model.addAttribute("name", name);
	   model.addAttribute("id", id);
	   model.addAttribute("age", age);
	   return "result";
   }*/
   
   /*@PathVariable example*/
/*   public String addStudent(@PathVariable("name")String str, ModelMap model){
	   
	   model.addAttribute("name", str);
	 return "result";  
   }*/
}