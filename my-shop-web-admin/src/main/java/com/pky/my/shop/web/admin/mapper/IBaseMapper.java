package com.pky.my.shop.web.admin.mapper;

import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;

import java.util.List;
import java.util.Map;

public interface IBaseMapper<T extends AbstractBaseEmpty> {

    /**
     * 分页查询
     * @param param Map类型，传两个参数，start/数据开始位置，length/一页数据条数
     * @return
     */
    public List<T> page(Map<String,Object> param);

    /**
     * 查询数据条数
     * @return
     */
    public int count(T entity);

    /**
     * 根据id查询信息
     * @param id
     * @return
     */
    public T selectById(Long id);

    /**
     * 增加信息
     * @param entity
     */
    public void insert(T entity);


    /**
     * 修改信息
     * @param entity
     */
    public void update(T entity);

    /**
     * 删除
     * @param id
     */
    public void delete(Long id);
}
