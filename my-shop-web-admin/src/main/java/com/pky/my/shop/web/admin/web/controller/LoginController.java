package com.pky.my.shop.web.admin.web.controller;

import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.abstracts.AbstractBaseController;
import com.pky.my.shop.commons.constants.Constants;
import com.pky.my.shop.web.admin.serviec.userserviceimpl.ProfileServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController extends AbstractBaseController<TbUser,ProfileServiceImpl> {

    /**
     * 回到登录页
     * @return
     */
    @GetMapping(value = {"","login"})
    public String login(){
        return "login";
    }

    /**
     * 登陆
     * @param username
     * @param password
     * @return
     */
    @PostMapping(value = "login")
    public String login(String username, String password, Model model, HttpServletRequest request){
        //获取session中的user
        TbUser tbUser = service.getTbUser(username,password);

        //登陆成功
        if(tbUser != null){
            //设置session
            request.getSession().setAttribute(Constants.SYSTEM_USER,tbUser);
            return "redirect:/main";
        }

        //登陆失败
        else {
            addMessage(model,"用户名或密码错误！");
            return "/login";
        }
    }
}
