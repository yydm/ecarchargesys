package com.chj.service;

import com.chj.entity.User;


public interface UserService {
	
	public boolean login(String userId
			           , String userPassword);


	/**
	 * checkUserExist
	 * @param user
	 * @return 
	 */
	public boolean checkUserExist(User user);

	/**
	 * addUser
	 * @param user
	 * @return success true/false
	 */
	public boolean addUser(User user);

	/**
	 * getUser
	 * @param userId
	 * @param password
	 * @return user
	 */
	public User getUser(String userId, String password);

}
