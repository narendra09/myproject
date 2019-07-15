package com.nari.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController 
{
 @RequestMapping("/home")
 public String home(ModelMap map)
 {
	 map.addAttribute("userClickHome", true);
	 map.addAttribute("title", "HOME");
	 return "page";
 }
 
 @RequestMapping("/about")
 public String about(ModelMap map)
 {
	 map.addAttribute("userClickAbout", true);
	 map.addAttribute("title", "ABOUT");
	 return "page";
 }
 
 @RequestMapping("/contact")
 public String contact(ModelMap map)
 {
	 map.addAttribute("userClickContact", true);
	 map.addAttribute("title", "CONTACT");
	 return "page";
 }
}
