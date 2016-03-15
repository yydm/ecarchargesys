package com.chj.dao;

import com.chj.entity.User;

public interface UserDAO {

	/**
	 * 通过userId,userPassword获取用户
	 * @param userId
	 * @param userPassword
	 * @return
	 */
	public User get(String userId
			      , String userPassword);
	/**
	 * 新增用户
	 * @param user
	 * @return
	 */
	public int add(User user);

}
