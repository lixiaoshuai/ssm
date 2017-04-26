package com.sxl.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sxl.ssm.entity.User;
import com.sxl.ssm.service.impl.UserServiceImpl;

/**
 * 
 * 	<pre>
 *			
 *	<pre>
 * Author:sxl	2017年4月21日
 */
@Controller
@RequestMapping("/test") 
public class LoginController {
	@Autowired
	private UserServiceImpl userService;

@RequestMapping("dologin.do") //url
public String dologin(User user, Model model){
	
	if(userService.doUserLogin(user)){
		System.out.println("2222222222223");
		model.addAttribute("successMsg", "恭喜");
		model.addAttribute("name", user.getUsername());
		return "/success";
	}else{
		model.addAttribute("failMsg", "抱歉");
		return "/fail";
	}	
}
}
