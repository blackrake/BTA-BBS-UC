package com.bone.base.dao.constants;

/**
 * Mybatis Sql脚本的ID名称
 * 
 * @author tuniu.hu_guodong
 * @version [1.0, 2014年12月8日]
 */
public interface SqlId {
    public String SQL_SELECT_COUNT = "selectCount";

    public String SQL_SELECT = "select";

    public String SQL_SELECT_BY_ID = "selectById";

    public String SQL_UPDATE_BY_ID = "updateById";

    public String SQL_UPDATE_BY_ID_SELECTIVE = "updateByIdSelective";

    public String SQL_DELETE = "delete";

    public String SQL_DELETE_BY_ID = "deleteById";

    public String SQL_DELETE_BY_ID_IN_LOGICAL = "deleteByIdInLogical";

    public String SQL_DELETE_IN_LOGICAL = "deleteInLogical";

    public String SQL_INSERT = "insert";

    public String SQL_CHECK_NAME = "checkName";
}
