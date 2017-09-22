package com.sxl.ssm.dao;

import org.springframework.stereotype.Repository;

import com.sxl.ssm.entity.UserInfo;

@Repository("userInfoDao")
public interface UserInfoDao extends  BaseDao<UserInfo>{
	UserInfo selectId(String username);
}