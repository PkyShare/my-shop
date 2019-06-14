package com.pky.my.shop.web.admin.web.controller;

import com.pky.my.shop.domain.Item;
import com.pky.my.shop.web.admin.abstracts.AbstractBaseController;
import com.pky.my.shop.web.admin.serviec.IItemService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "item")
public class ItemController extends AbstractBaseController<Item,IItemService> {

    /**
     * 商品列表
     * @return
     */
    @GetMapping(value = "list")
    public String itemList(){
        return "item/list";
    }

}
