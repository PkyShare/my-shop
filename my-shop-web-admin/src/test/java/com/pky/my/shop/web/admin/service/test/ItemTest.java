package com.pky.my.shop.web.admin.service.test;

import com.pky.my.shop.web.admin.serviec.IItemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml","classpath:spring-context-druid.xml","classpath:spring-context-mybatis.xml"})
public class ItemTest {
    @Autowired
    private IItemService itemService;

    @Test
    public void testSelectById(){
        System.out.println(itemService.selectById(536563L));
    }
}
