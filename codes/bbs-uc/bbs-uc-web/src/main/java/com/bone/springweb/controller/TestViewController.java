package com.bone.springweb.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.bone.base.annotation.Xml;
import com.bone.springweb.vo.PersonQueryVo;

@Controller
@Scope("prototype")
@RequestMapping(value = "/test-view")
public class TestViewController {
	private static final Logger LOG = LoggerFactory
			.getLogger(TestViewController.class);

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public ModelAndView testPage(HttpServletRequest request) {
		LOG.info("testPage.userIp {}", request.getLocalAddr());
		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		return model;
	}

	@RequestMapping(value = "/rest", method = RequestMethod.GET)
	public ModelAndView restPage(HttpServletRequest request) {
		LOG.info("restPage.userIp {}", request.getLocalAddr());
		ModelAndView model = new ModelAndView();
		model.setViewName("urlRest");
		return model;
	}
	
	@RequestMapping(value = "/xml", method = RequestMethod.POST)
	@ResponseBody
	public PersonQueryVo testXml(HttpServletRequest request,String xmlStr,@Xml PersonQueryVo personQueryVo) {
		LOG.info("testVo.userIp {}", request.getLocalAddr());
		String message = JSON.toJSONString(personQueryVo);
		LOG.debug("testVo.personQueryVo {}", message);
		return personQueryVo;
	}
}
