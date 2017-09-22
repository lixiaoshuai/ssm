package com.sxl.ssm.service;

import com.sxl.ssm.entity.UserInfo;

public interface UserInfoService extends BaseServuce<UserInfo> {

    boolean doUserLogin(UserInfo userInfo);



}
