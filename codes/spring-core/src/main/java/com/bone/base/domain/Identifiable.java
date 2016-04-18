package com.bone.base.domain;

import java.io.Serializable;

/**
 * 主键标识
 * 
 * @author tuniu.hu_guodong
 * @version [1.0, 2014年12月8日]
 */
public interface Identifiable extends Serializable {
    /**
     * 获取主键
     * 
     * @return id
     */
    public long getId();

    /**
     * 设置ID属性
     * 
     * @param id id
     */
    public void setId(long id);
}
