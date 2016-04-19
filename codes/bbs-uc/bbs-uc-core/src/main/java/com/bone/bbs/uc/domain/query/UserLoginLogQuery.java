package com.bone.bbs.uc.domain.query;

import com.bone.bbs.uc.domain.UserLoginLog;

public class UserLoginLogQuery extends UserLoginLog {

    private static final long serialVersionUID = -6900442153964171226L;

    private String startDate;

    private String endDate;

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

}
