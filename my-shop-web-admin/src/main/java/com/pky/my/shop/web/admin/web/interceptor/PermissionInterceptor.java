package com.pky.my.shop.web.admin.web.interceptor;

import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.commons.constants.Constants;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PermissionInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        //获取session中的tbUser
        TbUser tbUser = (TbUser) httpServletRequest.getSession().getAttribute(Constants.SYSTEM_USER);
        //判断tbUser是否为空，并且返回的视图名是否为login
        if(tbUser != null &&modelAndView != null && modelAndView.getViewName().endsWith("login")){
            //是则重定向回主页
            System.out.println("----1");
            httpServletResponse.sendRedirect("/main");
        }
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
