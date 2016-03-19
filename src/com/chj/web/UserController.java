package com.chj.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chj.constants.Constants;
import com.chj.entity.User;
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
				            , String userPassword){
		
		HttpSession session = request.getSession();

		if (userService.login(userId, userPassword)) {
			User user = userService.getUser(userId, userPassword);
			session.setAttribute(Constants.LOGIN_USER, user);
			return "index";
		} else {
			return "commons/loginFail";
		}
	}
	
	@RequestMapping(value="register")
	public String register(){

		return Constants.REGISTER;
	}
	
	@RequestMapping(value="registerSubmit")
	public String registerSubmit(String username
							   , String email
							   , String tel
							   , String password
							   , String checkpassword
							   , HttpServletRequest request){
		
		HttpSession session = request.getSession();
		
		User registerUser = new User(username
								   , username
								   , password
								   , Constants.USER_TYPE_NORMAL
								   , Constants.USER_ENABLE
								   , tel
								   , email);

		if (userService.checkUserExist(registerUser)){
			return "registerFail";
		} else if (userService.addUser(registerUser)) {
			User loginUser = userService.getUser(username, password);
			session.setAttribute(Constants.LOGIN_USER, loginUser);
			return "index";
		} else {
			return "registerFail";
		}
	}

	@RequestMapping(value="userExit")
	public String userExit(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		
		User loginUser = (User) session.getAttribute(Constants.LOGIN_USER);
		
		if (loginUser != null) {
			session.removeAttribute(Constants.LOGIN_USER);
		}

		return Constants.INDEX;
	}
}
