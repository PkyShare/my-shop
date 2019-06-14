package com.pky.my.shop.web.admin.serviec.userserviceimpl;

import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.commons.validation.BeanValidator;
import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.mapper.TbUserDao;
import com.pky.my.shop.web.admin.serviec.IUsersService;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

import java.util.Date;

@Service
public class UsersServiceImpl extends BaseCrudServiceImpl<TbUser,TbUserDao> implements IUsersService {

    /**
     * 保存用户信息
     * @param tbUser
     * @return
     */
    @Override
    public BaseResult save(TbUser tbUser) {
        String validator = BeanValidator.validator(tbUser);
        //验证不通过
        if(validator != null){
            return BaseResult.faile(validator);
        }
        //验证通过
        else {
            tbUser.setUpdated(new Date());
            Long id = tbUser.getId();
            //新增
            if(id == null){
                tbUser.setCreated(new Date());
                tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
                mapper.insert(tbUser);
            }

            //修改
            else {
                String oldPwd = mapper.selectById(id).getPassword();
                String newPwd = tbUser.getPassword();
                //修改了密码
                if(!StringUtils.pathEquals(oldPwd,newPwd)){
                    //加密
                    tbUser.setPassword(DigestUtils.md5DigestAsHex(newPwd.getBytes()));
                }
                mapper.update(tbUser);
            }

            return BaseResult.success("保存用户成功");
        }
    }

}
