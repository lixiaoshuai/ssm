package com.sxl.ssm.dao;

import org.springframework.stereotype.Repository;

import com.sxl.ssm.entity.User;

@Repository("userDao")
public interface UserDao{
	User selectId(String username);
}