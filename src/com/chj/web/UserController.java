package com.chj.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chj.constants.Constants;

@Controller
public class UserController {

	@RequestMapping(value=Constants.LOGIN)
	public String login(){
		return Constants.LOGIN;
	}
	
	@RequestMapping(value=Constants.REGISTER)
	public String register(){
		return Constants.REGISTER;
	}
}
