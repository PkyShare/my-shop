package com.pky.my.shop.web.admin.serviec.userserviceimpl;

import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.commons.validation.BeanValidator;
import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.mapper.TbUserDao;
import com.pky.my.shop.web.admin.serviec.IProfileService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


@Service
public class ProfileServiceImpl extends BaseCrudServiceImpl<TbUser,TbUserDao> implements IProfileService {
    @Autowired
    private TbUserDao tbUserDao;

    /**
     * 获取登录用户信息
     * @param loginId(用户名，邮箱，手机号)
     * @return
     */
    @Override
    public TbUser getTbUser(String loginId,String password) {
        TbUser tbUser = new TbUser();
        tbUser.setUsername(loginId);
        tbUser.setPhone(loginId);
        tbUser.setEmail(loginId);

        tbUser = tbUserDao.getTbUser(loginId);

        if (tbUser != null){
            //密码加密
            password = DigestUtils.md5DigestAsHex(password.getBytes());
            //密码正确
            if(password.equals(tbUser.getPassword())){
                return tbUser;
            }
            //密码错误
            else {
                return null;
            }
        }
        return null;
    }

    /**
     * 修改用户信息
     * @param tbUser
     */
    @Override
    public BaseResult updateTbUser(TbUser tbUser) {
        String validator = BeanValidator.validator(tbUser);
        if(validator == null){
            tbUserDao.update(tbUser);
            return BaseResult.success("修改用户成功");
        }
        return BaseResult.faile(validator);
    }

    /**
     * 修改密码
     * @param tbUser
     * @return 0/成功，1/旧密码校验失败，2/新密码校验失败
     */
    @Override
    public int changePwd(TbUser tbUser) {
        //根据id查询用户实例
        TbUser profile = tbUserDao.selectById(tbUser.getId());

        //加密旧密码
        String oldPwd = DigestUtils.md5DigestAsHex(tbUser.getOldPwd().getBytes());

        //校验旧密码
        if(!StringUtils.equals(profile.getPassword(),oldPwd)){
            return TbUser.CHACK_OLD_PWD_FALSE;
        }

        //校验新密码
        if (StringUtils.isBlank(tbUser.getNewPwd())){
            return TbUser.CHACK_NEW_PWD_FALSE;
        }


        //修改密码
        profile.setPassword(DigestUtils.md5DigestAsHex(tbUser.getNewPwd().getBytes()));
        tbUserDao.update(profile);
        return TbUser.CHACK_OK;
    }


}
