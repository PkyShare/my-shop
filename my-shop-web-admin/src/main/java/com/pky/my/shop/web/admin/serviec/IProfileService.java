package com.pky.my.shop.web.admin.serviec;

import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.domain.TbUser;

public interface IProfileService extends IBaseCrudService<TbUser> {


    /**
     * 获取登录用户信息
     * @param loginId(用户名，邮箱，手机号)
     * @param password 密码
     * @return
     */
    public TbUser getTbUser(String loginId,String password);

    /**
     * 修改用户
     */
    public BaseResult updateTbUser(TbUser tbUser);

    /**
     * 修改密码
     * @param tbUser
     * @return
     */
    public int changePwd(TbUser tbUser);

}
