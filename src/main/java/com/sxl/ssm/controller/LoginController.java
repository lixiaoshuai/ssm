package com.sxl.ssm.controller;

import com.sxl.ssm.entity.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sxl.ssm.service.impl.UserInfoServiceImpl;

/**
 * <pre>
 * 			登陆
 * 	<pre>
 * Author:sxl	2017年4月21日
 */
@Controller
@RequestMapping("/userInfoLogin")
public class LoginController {
    @Autowired
    private UserInfoServiceImpl userInfoService;
;


    @RequestMapping("dologin")
    public String dologin(UserInfo userInfo, Model model) {
        System.out.println(userInfo.getUsername()+"    "+ userInfo.getPassword());
/*
        System.out.println(username+"     "+password  +"    ");

        UserInfo userInfo = new UserInfo();
        userInfo.setUsername(username);
        userInfo.setPassword(password);*/


        if (userInfoService.doUserLogin(userInfo)) {
            System.out.println("成功");
            model.addAttribute("successMsg", "恭喜");
            model.addAttribute("name", userInfo.getUsername());
            return "/index";
        } else {
            System.out.println("失败");
            model.addAttribute("failMsg", "抱歉");
            return "/fail";
        }
    }
}
