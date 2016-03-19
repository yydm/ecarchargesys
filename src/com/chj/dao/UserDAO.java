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
	 * checkUserIdExist
	 * @param userId
	 */
	public boolean checkUserIdExist(String userId);

	/**
	 * addUser
	 * @param user
	 * @return
	 */
	public boolean addUser(User user);


}
