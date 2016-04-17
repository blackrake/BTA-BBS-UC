package com.bone.springweb.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bone.base.annotation.Json;
import com.bone.base.annotation.Xml;
import com.bone.springweb.vo.PersonQueryVo;

@Controller
@Scope("prototype")
@RequestMapping(value = "/test")
public class TestController {
	private static final Logger LOG = LoggerFactory
			.getLogger(TestController.class);

	@RequestMapping(value = "/vo", method = RequestMethod.GET)
	@ResponseBody
	public PersonQueryVo testVo(HttpServletRequest request,@Json PersonQueryVo personQueryVo) {
		LOG.info("testVo.userIp {}", request.getLocalAddr());
		String message = JSON.toJSONString(personQueryVo);
		LOG.debug("testVo.personQueryVo {}", message);
		return personQueryVo;
		
	}
	
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	@ResponseBody
	public String testReuqest(HttpServletRequest request) {
		LOG.info("testVo.userIp {}", request.getLocalAddr());
		String message = JSON.toJSONString(request.getParameterMap());
		LOG.debug("testVo.personQueryVo {}", message);
		return message;
	}
	
	

}
