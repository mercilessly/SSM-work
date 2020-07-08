/**
 * FileName: AdminDao
 * Author:   wlc
 * Date:     2019/6/28 上午10:05
 * Description:
 */
package com.itheima.core.dao;

import com.itheima.core.po.User;

import java.util.List;

public interface AdminDao {
    // 管理员列表
    List<User> selectAdminList(User user);

    // 管理员数
    Integer selectAdminListCount(User user);

    // 创建管理员
    int createAdmin(User user);

    // 通过code查询管理员
    User getAdminByCode(Integer user_code);

    // 通过id查询管理员
    User getAdminById(Integer user_id);

    // 更新管理员信息
    int updateAdmin(User user);

    // 删除管理员
    int deleteAdmin(Integer user_id);

    // 条件查看管理员数
    Integer selectAdminListByCount(String user_code);

    //多字段匹配查询
    List<User> selectAdminListBy(String user_code);

    // 修改状态
    int changeAdminState(Integer user_id);

    /**
     * 批量删除
     */
    void batchDeletes(List delList);
}
