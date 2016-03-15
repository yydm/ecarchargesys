package com.chj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chj.dao.UserDAO;
import com.chj.entity.User;
import com.chj.service.UserService;

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
	public int register(String userId, String userPassword) {
		return 0;
	}
}
