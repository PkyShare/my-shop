package com.pky.my.shop.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import com.pky.my.shop.commons.utils.RegexpUtils;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.validator.constraints.Length;

import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

@Data
@EqualsAndHashCode(callSuper = false)
public class TbUser extends AbstractBaseEmpty {
    /**
     * 校验成功
     */
    public static final int CHACK_OK = 0;

    /**
     * 旧密码校验失败
     */
    public static final int CHACK_OLD_PWD_FALSE = 1;

    /**
     * 新密码校验失败
     */
    public static final int CHACK_NEW_PWD_FALSE = 2;

    @Length(min = 1, max = 20, message = "用户名长度必须介于 1 和 20 之间")
    private String username;
    @JsonIgnore
    @Length(min = 1, max = 40, message = "密码长度必须介于 1 和 40 之间")
    private String password;
    @Pattern(regexp = RegexpUtils.PHONE, message = "手机号格式不正确")
    private String phone;
    @Pattern(regexp = RegexpUtils.EMAIL, message = "邮箱格式不正确")
    private String email;

    //------------拓展属性---------------

    /**
     * 用于修改时判断密码
     */
    @Transient
    private String oldPwd;
    @Transient
    private String newPwd;
}
