package com.chj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chj.dao.UserDAO;
import com.chj.entity.User;
import com.chj.service.UserService;
import com.chj.util.GenerateSequenceUtil;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDAO userDAO;

	@Override
	public boolean login(String userId, String userPassword) {
		
		User user = userDAO.get(userId, userPassword);

		if (user != null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean checkUserExist(User user) {

		String userId = user.getUserId();

		if (userDAO.checkUserIdExist(userId)) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean addUser(User user) {
	
		String userPk = GenerateSequenceUtil.getUUID();
		user.setUserPk(userPk);
		if (userDAO.addUser(user)) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public User getUser(String userId, String password) {
		return userDAO.get(userId, password);
	}
}
