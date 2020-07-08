package com.itheima.core.service;

import com.itheima.core.po.Member;
import com.itheima.core.po.User;

/**
 * 登录层接口
 */
public interface UserService {
    // 通过账号和密码查询管理员
    User findAdminUser(String usercode, String password);
    // 通过账号和密码查询用户
    Member findUser(String membercode, String password);
}
