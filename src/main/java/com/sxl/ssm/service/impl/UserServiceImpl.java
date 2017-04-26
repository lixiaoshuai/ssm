package com.sxl.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxl.ssm.dao.UserDao;
import com.sxl.ssm.entity.User;
import com.sxl.ssm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	public boolean doUserLogin(User user) {
		System.out.println(111);
		User user1 = userDao.selectId(user.getUsername());
		if (user1 == null) {
			return false;
		} else {
			if (user1.getPassword().equals(user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}
}
