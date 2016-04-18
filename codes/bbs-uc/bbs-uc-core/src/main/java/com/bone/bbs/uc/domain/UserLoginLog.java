package com.bone.bbs.uc.domain;

import com.bone.base.domain.BaseEntity;

public class UserLoginLog extends BaseEntity {

    private static final long serialVersionUID = 2911636637743779981L;

    // 用户id
    private long userId;

    // ip 地址
    private String ip;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

}
