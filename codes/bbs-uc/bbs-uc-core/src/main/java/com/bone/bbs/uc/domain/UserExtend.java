package com.bone.bbs.uc.domain;

import com.bone.base.domain.BaseEntity;

public class UserExtend extends BaseEntity {

    private static final long serialVersionUID = 2019426605688507632L;

    // 用户id
    private long userId;

    // 昵称
    private String nickname;

    // 邮箱
    private String email;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
