package com.pky.my.shop.web.admin.serviec;

import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.commons.dto.PageInfo;
import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import org.springframework.stereotype.Repository;

@Repository
public interface IBaseCrudService<T extends AbstractBaseEmpty> {

    /**
     * 通过id查询
     * @param id
     * @return
     */
    public T selectById(Long id);

    /**
     * 分页
     * @return
     */
    public PageInfo<T> page(int draw, int start, int length, T entity);

    /**
     * 查询数据总条数
     * @return
     */
    public int count(T entity);

    /**
     * 保存信息
     */
    public BaseResult save(T entity);

    /**
     * 删除
     * @param id
     */
    public void delete(Long id);

}
