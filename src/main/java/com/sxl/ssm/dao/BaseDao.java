package com.sxl.ssm.dao;

import org.apache.poi.ss.formula.functions.T;

import java.util.List;
import java.util.Map;

/**
 * Created by lixiaoshuai on 2017/8/11.
 *
 * @mail sxlshuai@foxmail.com
 */
public interface BaseDao<T> {

    boolean insert(T entity);// 保存

    int insertBatch(List<T> list);// 保存批量的

    boolean delete(T entity);// 删除用户

    boolean update(T entity);// 更新用户

    T findById(String id);// 根据主键查找用户

    List<T> getAll();// 查看所有


    int count();  // 获取总数

    List<T> selectAll(Map map);// 根据分页查询
}
