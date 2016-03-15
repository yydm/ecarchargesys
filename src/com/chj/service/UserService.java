package com.chj.service;


public interface UserService {
	
	public boolean login(String userId
			           , String userPassword);

	public int register(String userId
	                  , String userPassword);

}
