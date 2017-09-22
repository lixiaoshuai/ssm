package com.sxl.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxl.ssm.dao.UserInfoDao;
import com.sxl.ssm.entity.UserInfo;
import com.sxl.ssm.service.UserInfoService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {



	private int size = 500;		//多少条提交，批量添加

	@Autowired
	private UserInfoDao userInfoDao;

	public boolean doUserLogin(UserInfo userInfo) {

		UserInfo userInfo1 = userInfoDao.selectId(userInfo.getUsername());
		if (userInfo1 == null) {
			return false;
		} else {
			if (userInfo1.getPassword().equals(userInfo.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}


	@Override
	public boolean insert(UserInfo entity) {
		return false;
	}

	@Override
	public boolean insertBatch(List<UserInfo> list) {

		List<UserInfo> listUserInfo = new ArrayList<UserInfo>();
		for (int i = 0; i < list.size(); i++) {
			listUserInfo.add(list.get(i));
			if (i % size == 0) {
				userInfoDao.insertBatch(listUserInfo);
				listUserInfo.clear();
			} else if ((i + 1) == list.size()) {
				System.out.println(i + "           总数     ");
				userInfoDao.insertBatch(listUserInfo);
				listUserInfo.clear();
			}

		}
		return true;
	}

	@Override
	public boolean delete(UserInfo entity) {
		return false;
	}

	@Override
	public boolean update(UserInfo entity) {
		return false;
	}

	@Override
	public UserInfo findById(String id) {
		return null;
	}

	@Override
	public List<UserInfo> getAll() {
		List<UserInfo> list = userInfoDao.getAll();
		for (UserInfo userInfo : list){
			System.out.println(userInfo.getUsername());

		}
		return list;
	}


	@Override
	public int count() {
		return userInfoDao.count();
	}

	@Override
	public List<UserInfo> getAll(Map map) {
		return null;
	}

	@Override
	public List<UserInfo> selectAll(Map map) {
		return userInfoDao.selectAll(map);
	}
}
