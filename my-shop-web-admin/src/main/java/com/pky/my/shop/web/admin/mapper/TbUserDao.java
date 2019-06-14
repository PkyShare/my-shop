package com.pky.my.shop.web.admin.mapper;

import com.pky.my.shop.domain.TbUser;
import org.springframework.stereotype.Repository;


@Repository
public interface TbUserDao extends IBaseMapper<TbUser>{

    /**
     * 获取登录用户信息
     * @param loginId (用户名，邮箱，手机号)
     * @return
     */
    public TbUser getTbUser(String loginId);

}
