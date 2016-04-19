package com.bone.bbs.uc.domain.query;

import com.bone.bbs.uc.domain.UserInfo;

public class UserInfoQuery extends UserInfo {
   
    private static final long serialVersionUID = 8875885590110231990L;
    
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
