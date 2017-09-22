package com.sxl.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.sxl.ssm.entity.Page;
import com.sxl.ssm.entity.UserInfo;
import com.sxl.ssm.service.impl.UserInfoServiceImpl;
import com.sxl.ssm.util.CreateDateUtil;
import com.sxl.ssm.util.ReadomValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * <pre>
 * 			用户信息
 * 	<pre>
 * Author:sxl	2017年8月10日
 */
@Controller
@RequestMapping("/userInfo")
public class UserInfoController {

    Integer page = 0 ;
    Integer pageNum = 10;

    String path = "/user";
    @Autowired
    private UserInfoServiceImpl userInfoService;
    @ResponseBody
    @RequestMapping("userInfoList")
    public String userInfoList(HttpServletRequest request) {



        Map<String,Object> param = getQueryPageParam(request);
        Page page = new Page(param);
        param.put("page", page);


        List list  = userInfoService.selectAll(param);

        String str = JSON.toJSONString(list).toString();
        int count = userInfoService.count();


        String json = "{\"total\":" + count + ",\"rows\":" + str + "}";
        System.out.println(json);
        return json;
    }

    @ResponseBody
    @RequestMapping("userInfoCount")
    public String userInfoCount(Model model) {

        int count = userInfoService.count();

        return count+"";
    }
    @ResponseBody
    @RequestMapping("userInfoAddList")
    public String userInfoAddList(Model model) {


        List<UserInfo> list = data();

        boolean falg = userInfoService.insertBatch(list);

        if(falg){
            return "success";
        }else{
            return "false";
        }
    }


    public List<UserInfo> data(){

        List<UserInfo> list = new ArrayList<UserInfo>();

        UserInfo userInfo = null;
        for (int i = 0; i < 100; i++) {
            userInfo = new UserInfo();
            userInfo.setUsername(CreateDateUtil.generateRandomString(6));
            userInfo.setPassword(CreateDateUtil.generateRandomString(6));
            userInfo.setEmail(ReadomValue.getEmail(6, 13));
            userInfo.setPhone(ReadomValue.getTel());
            userInfo.setSex(CreateDateUtil.generateString(2));
            list.add(userInfo);
        }


        return list;
    }


    public Map<String,Object> getQueryPageParam(HttpServletRequest request){

        Map<String,Object> map = new HashMap<String,Object>();

        Enumeration en = request.getParameterNames();

        while (en.hasMoreElements()){
            String name=(String)en.nextElement();
            String value=request.getParameter(name);
            System.out.println(name+"   "+value);


            map.put(name,value);
        }
        return map;
    }

}
