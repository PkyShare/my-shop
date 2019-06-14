package com.pky.my.shop.web.admin.abstracts;

import com.pky.my.shop.commons.constants.Constants;
import com.pky.my.shop.commons.dto.BaseResult;
import com.pky.my.shop.commons.dto.PageInfo;
import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.serviec.IBaseCrudService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.ParameterizedType;
import java.util.List;


public abstract class AbstractBaseController<T extends AbstractBaseEmpty, S extends IBaseCrudService<T>> {
    @Autowired
    protected S service;

    /**
     * 添加响应信息
     *
     * @param model
     * @param message
     */
    protected void addMessage(Model model, String message) {
        model.addAttribute(Constants.MESSAGE, message);
    }

    protected void addMessage(RedirectAttributes redirectAttributes, String message) {
        redirectAttributes.addFlashAttribute(Constants.STATUS_RESULT, message);
    }

    protected void addMessage(Model model, List<TbUser> tbUserList) {
        model.addAttribute(Constants.MESSAGE, tbUserList);
    }

    protected void addMessage(RedirectAttributes redirectAttributes, BaseResult baseResult) {
        redirectAttributes.addFlashAttribute(Constants.STATUS_RESULT, baseResult.getMessage());
    }

    protected void addMessage(Model model, BaseResult baseResult) {
        model.addAttribute(Constants.STATUS_RESULT, baseResult.getMessage());
    }

    /**
     * 根据id是否为null创建/获取用户实例
     * @param id
     * @return
     */
    @ModelAttribute
    public T getById(Long id) throws IllegalAccessException, InstantiationException {
        if(id == null){
            ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
            Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
            T o = (T)clazz.newInstance();
            return o;
        } else {
            return (T) service.selectById(id);
        }
    }

    /**
     * 分页
     * @param request
     * @return
     */
    @ResponseBody
    @GetMapping(value = "page")
    public PageInfo<T> page(HttpServletRequest request, T entity){
        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        int draw = strDraw == null ? 0 : Integer.parseInt(strDraw);
        int start = strDraw == null ? 0 : Integer.parseInt(strStart);
        int length = strDraw == null ? 10 : Integer.parseInt(strLength);

        PageInfo<T> pageInfo = service.page(draw, start, length, entity);

        return pageInfo;
    }
}
