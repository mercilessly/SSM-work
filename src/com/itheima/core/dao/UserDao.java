package com.itheima.core.dao;

import com.itheima.core.po.Member;
import org.apache.ibatis.annotations.Param;
import com.itheima.core.po.User;

/**
 * 用户DAO层接口
 */
public interface UserDao {
    /**
     * 通过账号和密码查询用户
     */
    User findAdminUser(@Param("usercode") String usercode,
                  @Param("password") String password);
    /**
     * 通过账号和密码查询用户
     */
    Member findUser(@Param("membercode") String usercode,
                    @Param("password") String password);
}
