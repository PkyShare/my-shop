package com.pky.my.shop.web.admin.web.controller;

import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.abstracts.AbstractBaseController;
import com.pky.my.shop.web.admin.serviec.IUsersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "users")
public class UsersController extends AbstractBaseController<TbUser,IUsersService> {

    /**
     * 跳转用户表单
     * @param tbUser
     * @return
     */
    @GetMapping(value = "form")
    public String form(TbUser tbUser){
        return "users/form";
    }

    /**
     * 用户列表
     * @return
     */
    @GetMapping(value = "list")
    public String usersList(){
        return "users/list";
    }

    /**
     * 保存用户
     * @param model
     * @param redirectAttributes
     * @param tbUser
     * @return
     */
    @PostMapping(value = "save")
    public String save(Model model, RedirectAttributes redirectAttributes, TbUser tbUser){
        BaseResult result = service.save(tbUser);
        if(result.getMessage().contains("成功")){
            addMessage(redirectAttributes,result);
            return "redirect:/users/list";
        }
        addMessage(model,result);
        return "/users/form";
    }


    @GetMapping(value = "delete")
    public String delete(TbUser tbUser){
        service.delete(tbUser.getId());
        return "redirect:/users/list";
    }
}
