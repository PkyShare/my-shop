package com.pky.my.shop.web.admin.web.controller;

import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.abstracts.AbstractBaseController;
import com.pky.my.shop.web.admin.serviec.IProfileService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    /**
     * 回到主页面
     * @return
     */
    @GetMapping(value = "main")
    public String mian(){
        return "main";
    }

    /**
     * 注销
     * @param request
     * @return
     */
    @GetMapping(value = "logout")
    public String logout(HttpServletRequest request){
        //清除session
        request.getSession().invalidate();
        return "login";
    }
}
