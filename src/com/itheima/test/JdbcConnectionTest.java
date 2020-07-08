/**
 * FileName: JdbcConnectionTest
 * Author:   cheng
 * Date:     19-5-28 上午8:20
 * Description: 数据库连接测试
 */
package com.itheima.test;

import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class JdbcConnectionTest {

    @Test
    public void LoginTest() {
        ApplicationContext act = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = act.getBean(UserService.class);
        User user = userService.findAdminUser("m0001", "123");
        System.out.println(user);
    }
}
