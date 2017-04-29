package com.sxl.ssm.controller;




import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sxl on 2017/4/27.
 */
@Controller
@RequestMapping("/control")
public class ConvertController {

    @RequestMapping("conver")
    public String convert(){




        System.out.println("conver进来");
        return "redirect:main.jsp";
    }
}
