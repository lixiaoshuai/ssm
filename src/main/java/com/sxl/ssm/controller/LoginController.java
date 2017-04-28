package com.sxl.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sxl.ssm.entity.User;
import com.sxl.ssm.service.impl.UserServiceImpl;

/**
 * <pre>
 * 			登陆
 * 	<pre>
 * Author:sxl	2017年4月21日
 */
@Controller
@RequestMapping("/control")
public class LoginController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("dologin")
    public String dologin(User user, Model model) {

        if (userService.doUserLogin(user)) {
            System.out.println("2222222222223");
            model.addAttribute("successMsg", "恭喜");
            model.addAttribute("name", user.getUsername());
            return "/success";
        } else {
            model.addAttribute("failMsg", "抱歉");
            return "/fail";
        }
    }
}
