package com.bone.bbs.uc.domain;

import java.util.Date;

import com.bone.base.domain.BaseEntity;

/**
 * 用户基本信息类
 * 
 * @author Boneix
 * @version [0.1, 2016年4月19日]
 */
public class UserInfo extends BaseEntity {

    private static final long serialVersionUID = -4799682817803980173L;

    // 用户名
    private String username;

    // 密码
    private String password;

    // 注销时间
    private Date logoutTime;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getLogoutTime() {
        return logoutTime;
    }

    public void setLogoutTime(Date logoutTime) {
        this.logoutTime = logoutTime;
    }
}
