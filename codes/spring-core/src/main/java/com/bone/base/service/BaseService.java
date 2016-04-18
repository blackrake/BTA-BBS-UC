package com.bone.base.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.bone.base.domain.Identifiable;

/**
 * BaseService
 * 
 * @author tuniu.hu_guodong
 * @version [1.0, 2014年12月8日]
 */
public interface BaseService<T extends Identifiable> {
    /**
     * 查询一个对象，如果返回的结果多于一个对象将会抛出TooManyResultsException
     * 
     * @param query 查询对象，不能为null
     * @param <V> vo
     * @return Mapper中映射的对象，继承自 T对象，一般是Vo对象
     */
    public <V extends T> V selectOne(T query);

    /**
     * 根据结果集中的一列作为key，将结果集转换成Map
     * 
     * @param <K> 返回Map的key类型
     * @param <V> 返回Map的Value类型
     * @param query 查询参数,如果未null则查询所有对象
     * @param mapKey 返回结果List中‘mapKey’属性值作为Key (The property to use as key for each value in the list.)
     * @return Map 包含key属性值的Map对象
     */
    public <K, V extends T> Map<K, V> selectMap(T query, String mapKey);

    /**
     * 根据结果集中的一列作为key，将结果集转换成Map
     * 
     * @param <K> 返回Map的key类型
     * @param <V> 返回Map的Value类型
     * @param query 查询参数
     * @param mapKey 返回结果List中‘mapKey’属性值作为Key (The property to use as key for each value in the list.)
     * @param pageable 分页对象
     * @return Map containing key pair data.
     */
    public <K, V extends T> Map<K, V> selectMap(T query, String mapKey, Pageable pageable);

    /**
     * 通过Id查询一个对象，如果id为null这会抛出IllegalArgumentException异常
     * 
     * @param id 主键，不能为null
     * @param <V> vo
     * @return 结果对象，如果未找到返回null
     */
    public <V extends T> V selectById(long id);

    /**
     * 查询对象列表
     * 
     * @param query 查询参数，如果未null则查询所有，相当于调用方法selectAll
     * @param <V> vo
     * @return 结果对象列表
     */
    public <V extends T> List<V> selectList(T query);

    /**
     * 查询对象列表，注意：在给定非null的分页对象时该方法自动设置分页总记录数,如果query和pageable同时为null则查询所有
     * 
     * @param query 查询参数
     * @param pageable 分页对象
     * @param <V> vo
     * @return List 根据分页对象查询的分页结果列表
     */
    public <V extends T> List<V> selectList(T query, Pageable pageable);

    /**
     * 查询对象列表，注意：在给定非null的分页对象时该方法自动设置分页总记录数,如果query和pageable同时为null则查询所有
     * 
     * @param query 查询参数
     * @param pageable 分页对象
     * @param <V> vo
     * @return Page 信息方便前台显示
     */
    public <V extends T> Page<V> selectPageList(T query, Pageable pageable);

    /**
     * 查询所有记录列表
     * 
     * @param <V> vo
     * @return List 结果列表
     */
    public <V extends T> List<V> selectAll();

    /**
     * 查询总记录数
     * 
     * @return long 记录总数
     */
    public long selectCount();

    /**
     * 查询记录数
     * 
     * @param query 查询对象，如果为null，则查询对象总数
     * @return long 记录总数
     */
    public long selectCount(T query);

    /**
     * 添加对象,如果要添加的对象没有设置Id或者Id为空字符串或者是空格，则添加数据之前会调用 generateId()方法设置Id
     * 
     * @param entity 要实例化的实体，不能为null
     * @return 受影响的结果数
     */
    public long insert(T entity);

    /**
     * 批量插入，如果为空列表则直接返回
     * 
     * @param entityList 需要批量插入的实体对象列表
     */
    public void insertInBatch(List<T> entityList);

    /**
     * 删除对象
     * 
     * @param entity 要删除的实体对象，不能为null
     * @return int 受影响结果数
     */
    public long delete(T entity);

    /**
     * 根据Id删除对象
     * 
     * @param id 要删除的ID，不能为null
     * @return int 受影响结果数
     */
    public long deleteById(long id);

    /**
     * 根据id，批量删除记录，如果传入的列表为null或为空列表则直接返回
     * 
     * @param idList 批量删除ID列表
     */
    public void deleteByIdInBatch(List<Long> idList);

    /**
     * 删除所有
     * 
     * @return int 受影响结果数
     */
    public long deleteAll();

    /**
     * 更新对象，对象必须设置ID
     * 
     * @param entity 实体的Id不能为null
     * @return int 受影响结果数
     */
    public long updateById(T entity);

    /**
     * 更新对象中已设置的字段，未设置的字段不更新
     * 
     * @param entity 要更新的实体对象，不能为null，且ID必须不为null
     * @return int 受影响结果数
     */
    public long updateByIdSelective(T entity);

    /**
     * 批量更新，该方法根据实体ID更新已设置的字段，未设置的字段不更新
     * 
     * @param entityList 批量更新的实体对象列表
     */
    public void updateInBatch(List<T> entityList);

    /**
     * 查询一个对象名称是否已经存在:<br>
     * 1. 新增操作时判断是否已有相同名称存在；<br>
     * 2. 修改操作时判断非当前ID是否已有相同名称存在;
     * 
     * @param query 查询对象，不能为null
     * @return true 存在 ,false 不存在
     */
    public boolean checkName(T query);
}
