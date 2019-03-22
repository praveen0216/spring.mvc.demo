package com.luv2code.springdemo.mvc;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	//this below code has been added for properties file extraction
	//@Value("#{countryOptions}")
	private Map<String,String> countryOptions;
	
	@Value("#{favoriteLanguage}")
	private LinkedHashMap<String,String> favoriteLanguage;
	
@RequestMapping("/showForm")	
public String showForm(Model theModel)
{
	//create a student object
	Student theStudent=new Student();
	//add student object to the model
	theModel.addAttribute("student",theStudent);
	
	//add the country options to the model
	theModel.addAttribute("theCountryOptions",countryOptions);
	
	//add the favorite languge to the model
	theModel.addAttribute("FavoriteLanguage",favoriteLanguage);
	
	return "student-form";
}
@RequestMapping("/processForm")
public String processForm(@ModelAttribute("student") Student theStudent)
{
	//log the input data
	System.out.println("theStudent: "+theStudent.getFirstName()+ " "+ theStudent.getLastName());
	
	return "student-confirmation";
}
}
