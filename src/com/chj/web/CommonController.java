package com.chj.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

	@RequestMapping("404")
	public String pageNotFound(){
		return "commons/404";
	}
	
	@RequestMapping("500")
	public String internalServerError(){
		return "commons/500";
	}

	@RequestMapping("unauthorized")
	public String unauthorized(){
		return "commons/unauthorized";
	}

}
