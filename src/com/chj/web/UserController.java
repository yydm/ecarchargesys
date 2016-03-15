package com.chj.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chj.constants.Constants;
import com.chj.service.UserService;

@Controller
public class UserController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value="login")
	public String login(){

		return "login";
	}
	@RequestMapping(value="loginSubmit")
	public String loginSubmit(HttpServletRequest request
				            , String userId
				            , String userPassword
				            , String code){

		if (userService.login(userId, userPassword)) {
			return "loginSuccess";
		} else {
			return "commons/loginFail";
		}
	}
	
	@RequestMapping(value=Constants.REGISTER)
	public String register(){
		return "register";
	}
	
	@RequestMapping(value="registerSubmit")
	public String registerSubmit(){
		return "index";
	}
}
