package com.itheima.core.service.impl;

import com.itheima.core.dao.MemberDao;
import com.itheima.core.po.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.core.dao.UserDao;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;

/**
 * 用户登录接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    // 注入UserDao
    @Autowired
    private UserDao userDao;

    // 通过账号和密码查询管理员
    @Override
    public User findAdminUser(String usercode, String password) {
        User user = this.userDao.findAdminUser(usercode, password);
        return user;
    }
    // 通过账号和密码查询用户
    @Override
    public Member findUser(String membercode, String password) {
        Member member = this.userDao.findUser(membercode, password);
        return member;
    }
}
