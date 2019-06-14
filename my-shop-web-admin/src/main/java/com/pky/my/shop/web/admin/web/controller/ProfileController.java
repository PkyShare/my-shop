package com.pky.my.shop.web.admin.web.controller;

import com.pky.my.shop.commons.constants.Constants;
import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.abstracts.AbstractBaseController;
import com.pky.my.shop.web.admin.serviec.userserviceimpl.ProfileServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;


@Controller
@RequestMapping(value = "profile")
public class ProfileController extends AbstractBaseController<TbUser,ProfileServiceImpl> {

    /**
     * 返回个人描述
     * @return
     */
    @GetMapping(value = "/profile")
    public String profile(){
        return "profile/profile";
    }


    /**
     * 返回简介
     * @return
     */
    @GetMapping(value = "/info")
    public String info(){
        return "profile/info";
    }

    /**
     * 修改信息
     * @param tbUser
     * @return
     */
    @PostMapping(value = "/changeInfo")
    public String changeInfo(TbUser tbUser, Model model, RedirectAttributes redirectAttributes, HttpServletRequest request){
        //设置修改时间
        tbUser.setUpdated(new Date());
        BaseResult baseResult = service.updateTbUser(tbUser);

        //保存成功
        if (baseResult.getStatus() == Constants.STATUS_OK){
            //设置响应信息
            addMessage(redirectAttributes,"信息保存成功~");
            request.getSession().setAttribute("tbUser",service.selectById(tbUser.getId()));
            return "redirect:/profile/info";
        }
        //保存失败
        else {
            //设置响应信息
            addMessage(model,baseResult);
            return "/profile/info";
        }
    }

    /**
     * 修改密码
     * @return
     */
    @PostMapping(value = "change/pwd")
    public String changePwd(TbUser tbUser, RedirectAttributes redirectAttributes){

        int result = service.changePwd(tbUser);

        boolean flag = false;

        if(result == TbUser.CHACK_OK){
            flag = true;
            addMessage(redirectAttributes,"密码修改成功~");
        }

        else if(result == TbUser.CHACK_OLD_PWD_FALSE){
            flag = false;
            addMessage(redirectAttributes,"旧密码和原密码不一致！");
        }

        else {
            flag = false;
            addMessage(redirectAttributes,"新密码不符合规范");

        }

        if(flag){
            return "redirect:/profile/info";
        }
        else {
            return "redirect:/profile/info#tab_1_3";
        }
    }

}
