package com.pky.my.shop.web.admin.serviec.userserviceimpl;

import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.commons.dto.PageInfo;
import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import com.pky.my.shop.web.admin.mapper.IBaseMapper;
import com.pky.my.shop.web.admin.serviec.IBaseCrudService;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.HashMap;
import java.util.List;

public abstract class BaseCrudServiceImpl<T extends AbstractBaseEmpty, M extends IBaseMapper<T>> implements IBaseCrudService<T> {
    @Autowired
    protected M mapper;

    /**
     * 通过id查询用户
     * @param id
     * @return
     */
    @Override
    public T selectById(Long id) {
        return mapper.selectById(id);
    }

    /**
     * 分页查询
     * @param draw
     * @param start
     * @param length
     * @return
     */
    @Override
    public PageInfo<T> page(int draw, int start, int length, T entity) {
        //获取分页信息
        HashMap<String, Object> param = new HashMap<>();
        param.put("start",start);
        param.put("length",length);
        param.put("entity",entity);
        List<T> page = mapper.page(param);

        int count = count(entity);

        //设置分页信息
        PageInfo<T> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setRecordsTotal(count);
        pageInfo.setData(page);
        return pageInfo;
    }

    /**
     * 查询总数据数
     * @return
     */
    @Override
    public int count(T entity) {
        return mapper.count(entity);
    }

    /**
     * 保存
     * @param entity
     * @return
     */
    @Override
    public BaseResult save(T entity) {

        return null;
    }

    /**
     * 删除
     * @param id
     */
    @Override
    public void delete(Long id){
        mapper.delete(id);
    }

}
