package com.bone.bbs.uc.service.impl;

import javax.annotation.Resource;

import com.bone.base.dao.BaseDao;
import com.bone.base.service.impl.BaseServiceImpl;
import com.bone.bbs.uc.dao.UserInfoDao;
import com.bone.bbs.uc.domain.UserInfo;
import com.bone.bbs.uc.service.UserInfoService;

public class UserInfoServiceImpl extends BaseServiceImpl<UserInfo> implements UserInfoService {

    @Resource
    public UserInfoDao userInfoDao;

    @Override
    protected BaseDao<UserInfo> getBaseDao() {
        return userInfoDao;
    }

}
