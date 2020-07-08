/**
 * FileName: adminService
 * Author:   wlc
 * Date:     2019/6/28 上午9:57
 * Description:
 */
package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.User;

import java.util.List;

public interface AdminService {
    // 查询管理员列表
    Page<User> findAdminList(Integer page, Integer rows);

    int createAdmin(User user);

    // 通过code查询管理员
    User getAdminByCode(Integer user_code);

    // 通过多字段查询管理员
    Page<User> findAdminListBy(Integer page, Integer rows, String user_code);

    // 通过id查询管理员
    User getAdminById(Integer user_id);

    // 更新管理员
    int updateAdmin(User user);


    // 删除管理员
    int deleteAdmin(Integer user_id);


    // 修改状态
    int changeAdminState(Integer user_id);

    /**
     * 批量删除
     */
    void batchDeletes(List delList);
}
