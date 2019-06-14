package com.pky.my.shop.web.admin.service.test;

import com.pky.my.shop.domain.TbUser;
import com.pky.my.shop.web.admin.mapper.IItemMapper;
import com.pky.my.shop.web.admin.mapper.TbUserDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml","classpath:spring-context-druid.xml","classpath:spring-context-mybatis.xml"})
public class TbUserServiceTest {

    @Autowired
    private TbUserDao tbUserDao;

    @Test
    public void testGetTbUser(){
        TbUser tbUser = tbUserDao.getTbUser("pky");
        System.out.println(tbUser.toString());
    }


    @Test
    public void testInsetTbUser(){
        TbUser tbUser = new TbUser();
        tbUser.setUsername("pky11");
        //加密
        tbUser.setPassword(DigestUtils.md5DigestAsHex("123456".getBytes()));
        tbUser.setPhone("22");
        tbUser.setEmail("1689988@qq.com");
        tbUser.setCreated(new Date());
        tbUser.setUpdated(new Date());
        tbUserDao.insert(tbUser);
    }

    @Test
    public void testDeleteTbUser(){
        tbUserDao.delete(37L);
    }

    @Test
    public void testPage(){
        Map map = new HashMap();
        map.put("start",0);
        map.put("length",10);
        TbUser tbUser = new TbUser();
        tbUser.setUsername("k");
        List<TbUser> tbUserList = tbUserDao.page(map);
        for(TbUser user:tbUserList){
            System.out.println(user);
        }
    }
    @Test
    public void testCount(){
    }
}
