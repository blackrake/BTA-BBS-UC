package com.bone.bbs.uc.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bone.base.dao.BaseDao;
import com.bone.base.service.impl.BaseServiceImpl;
import com.bone.bbs.uc.dao.UserExtendDao;
import com.bone.bbs.uc.domain.UserExtend;
import com.bone.bbs.uc.service.UserExtendService;

@Service
public class UserExtendServiceImpl extends BaseServiceImpl<UserExtend> implements UserExtendService {

    @Resource
    public UserExtendDao userExtendDao;

    @Override
    protected BaseDao<UserExtend> getBaseDao() {
        return userExtendDao;
    }

}
