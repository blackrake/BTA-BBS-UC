package com.bone.springweb.controller;

import javax.annotation.Resource;
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
import com.bone.base.domain.ResponseVo;
import com.bone.base.property.CommonError;
import com.bone.base.util.DateUtils;
import com.bone.bbs.uc.domain.UserInfo;
import com.bone.bbs.uc.service.UserInfoService;
import com.bone.springweb.vo.PersonQueryVo;

@Controller
@Scope("prototype")
@RequestMapping(value = "/test")
public class TestController {
	private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	
	 @Resource
	    private UserInfoService userInfoService;

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
	
	@RequestMapping(value = "/userInfo/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseVo addUserInfo(HttpServletRequest request,@Json UserInfo userInfo) {
        LOG.info("addUserInfo.userIp {}", request.getLocalAddr());
        ResponseVo responseVo=new ResponseVo();
        try{
            if(null==userInfo.getCreateTime()){
                userInfo.setCreateTime(DateUtils.now());
            }
            userInfoService.insert(userInfo);
        }catch(Exception e){
            LOG.error("testVo.addUserInfo error !{}, {}", JSON.toJSONString(userInfo),e);            
            this.setErrorCode(responseVo,CommonError.INSERT_ERROR);
        }
        
       
        return responseVo;
        
    }
	

    
    public void setErrorCode(ResponseVo responseVo, CommonError commonError) {
        if (0 == commonError.compareTo(CommonError.SUCCESS)) {
            responseVo.setSuccess(true);
        } else {
            responseVo.setSuccess(false);
        }
        responseVo.setMsg(commonError.getMsg());
        responseVo.setErrorCode(commonError.getErrorCode());
    }
	
	

}
