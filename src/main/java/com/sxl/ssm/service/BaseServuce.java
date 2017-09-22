package com.sxl.ssm.service;

import java.util.List;
import java.util.Map;

/**
 * Created by lixiaoshuai on 2017/8/10.
 *
 * @mail sxlshuai@foxmail.com
 */
public interface BaseServuce<T> {

     boolean insert(T entity);// 保存

     boolean insertBatch(List<T> list);// 保存批量的

     boolean delete(T entity);// 删除用户

     boolean update(T entity);// 更新用户

     T findById(String id);// 根据主键查找用户

     List<T> getAll();

     List<T> getAll(Map map);// 根据分页查询

     int count();  // 获取总数

     List<T> selectAll(Map map);// 根据分页查询

}
