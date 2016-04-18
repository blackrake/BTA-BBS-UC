package com.bone.base.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import com.bone.base.dao.BaseDao;
import com.bone.base.domain.Identifiable;
import com.bone.base.service.BaseService;

/**
 * 基础Service服务接口实现类
 * 
 * @author hu_guodong
 * @version [1.0, 2014年12月8日]
 */
public abstract class BaseServiceImpl<T extends Identifiable> implements BaseService<T> {
    /**
     * 获取基础数据库操作类
     * 
     * @return 基础数据库操作类
     */
    protected abstract BaseDao<T> getBaseDao();

    @Override
    public <V extends T> V selectOne(T query) {
        return getBaseDao().selectOne(query);
    }

    @Override
    public <K, V extends T> Map<K, V> selectMap(T query, String mapKey) {
        return getBaseDao().selectMap(query, mapKey);
    }

    @Override
    public <K, V extends T> Map<K, V> selectMap(T query, String mapKey, Pageable pageable) {
        return getBaseDao().selectMap(query, mapKey, pageable);
    }

    @Override
    public <V extends T> V selectById(long id) {
        return getBaseDao().selectById(id);
    }

    @Override
    public <V extends T> List<V> selectList(T query) {
        return getBaseDao().selectList(query);
    }

    @Override
    public <V extends T> List<V> selectList(T query, Pageable pageable) {
        return getBaseDao().selectList(query, pageable);
    }

    @Override
    public <V extends T> Page<V> selectPageList(T query, Pageable pageable) {
        return getBaseDao().selectPageList(query, pageable);
    }

    @Override
    public <V extends T> List<V> selectAll() {
        return getBaseDao().selectAll();
    }

    @Override
    public long selectCount() {
        return getBaseDao().selectCount();
    }

    @Override
    public long selectCount(T query) {
        return getBaseDao().selectCount(query);
    }

    @Override
    public long insert(T entity) {
        return getBaseDao().insert(entity);
    }

    @Override
    @Transactional
    public void insertInBatch(List<T> entityList) {
        getBaseDao().insertInBatch(entityList);
    }

    @Override
    public long delete(T query) {
        return getBaseDao().delete(query);
    }

    @Override
    public long deleteById(long id) {
        return getBaseDao().deleteById(id);
    }

    @Override
    @Transactional
    public void deleteByIdInBatch(List<Long> idList) {
        getBaseDao().deleteByIdInBatch(idList);
    }

    @Override
    public long deleteAll() {
        return getBaseDao().deleteAll();
    }

    @Override
    public long updateById(T entity) {
        return getBaseDao().updateById(entity);
    }

    @Override
    public long updateByIdSelective(T entity) {
        return getBaseDao().updateByIdSelective(entity);
    }

    @Override
    @Transactional
    public void updateInBatch(List<T> entityList) {
        getBaseDao().updateInBatch(entityList);
    }

    @Override
    public boolean checkName(T query) {
        return getBaseDao().checkName(query);
    }
}
