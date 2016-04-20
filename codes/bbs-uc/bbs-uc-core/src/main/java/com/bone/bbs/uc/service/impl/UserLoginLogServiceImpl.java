package com.bone.bbs.uc.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bone.base.dao.BaseDao;
import com.bone.base.service.impl.BaseServiceImpl;
import com.bone.bbs.uc.dao.UserLoginLogDao;
import com.bone.bbs.uc.domain.UserLoginLog;
import com.bone.bbs.uc.service.UserLoginLogService;

@Service
public class UserLoginLogServiceImpl extends BaseServiceImpl<UserLoginLog> implements UserLoginLogService {

    @Resource
    public UserLoginLogDao userLoginLogDao;

    @Override
    protected BaseDao<UserLoginLog> getBaseDao() {
        return userLoginLogDao;
    }

}
