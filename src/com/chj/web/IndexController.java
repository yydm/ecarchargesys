package com.chj.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chj.constants.Constants;
import com.chj.util.StringUtils;


@Controller
public class IndexController {
	
	@RequestMapping(value=Constants.INDEX)
	public String index(){
		return Constants.INDEX;
	}
	@RequestMapping(value=StringUtils.BLANK)
	public String defalut(){
		return Constants.INDEX;
	}
	@RequestMapping(value="weNeedCharge")
	public String weNeedCharge(){
		return "weNeedCharge";
	}

	@RequestMapping(value="personCenter")
	public String personCenter(){
		return "personCenter";
	}
	
	@RequestMapping(value="aboutMe")
	public String aboutMe(){
		return "aboutMe";
	}
}
