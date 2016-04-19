
package com.bone.base.property;

/**
 * 错误返回代码
 * 
 * @author zhangrong5
 * @version [0.1, 2016年4月19日]
 */
public enum CommonError {
    SUCCESS(1010000, "成功"),

    QUERY_ERROR(1010001, "查询操作错误"),

    INSERT_ERROR(1010002, "插入操作错误"),

    UPDATE_ERROR(1010003, "更新操作错误"),

    DELETE_ERROR(1010004, "删除操作错误"),

    DELETE_IN_LOGICAL_ERROR(1010005, "逻辑删除操作错误"),

    PARAM_ERROR(1010005, "参数错误"),

    PRODUCTID_PARAM_ERROR(1010007, "产品ID参数错误"),

    STATUS_PARAM_ERROR(1010008, "产品状态参数错误"),

    OUTTER_ERROR(1010006, "依赖接口错误或超时"),

    INTER_ERROR(1010500, "服务器内部错误"),

    REPEAT_ERROR(1010103, "配置已存在"),

    ;

    // 错误码
    private Integer errorCode;

    // 提示信息
    private String msg;

    /**
     * 创建一个新的实例 CommonError.
     * 
     * @param errorCode
     * @param msg
     */
    CommonError(Integer errorCode, String msg) {
        this.errorCode = errorCode;
        this.msg = msg;
    }

    /**
     * errorCode
     * 
     * @return the errorCode
     */

    public Integer getErrorCode() {
        return errorCode;
    }

    /**
     * msg
     * 
     * @return the msg
     */

    public String getMsg() {
        return msg;
    }

}
