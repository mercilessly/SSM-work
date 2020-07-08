/**
 * FileName: AdminService
 * Author:   wlc
 * Date:     2019/6/28 上午9:58
 * Description:
 */
package com.itheima.core.service.impl;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.AdminDao;
import com.itheima.core.po.User;
import com.itheima.core.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    @Override
    public Page<User> findAdminList(Integer page, Integer rows) {
        User user=new User();
        // 当前页
        user.setStart((page - 1) * rows);
        // 每页数
        user.setRows(rows);
        // 查询管理员列表
        List<User> users =
                adminDao.selectAdminList(user);
        // 查询管理员列表总记录数
        Integer count = adminDao.selectAdminListCount(user);
        // 创建Page返回对象
        Page<User> result = new Page<>();
        result.setPage(page);
        result.setRows(users);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Page<User> findAdminListBy(Integer page, Integer rows,String user_code) {
        User user=new User();
        // 当前页
        user.setStart((page - 1) * rows);
        // 每页数
        user.setRows(rows);
        // 查询管理员列表
        List<User> users =
                adminDao.selectAdminListBy(user_code);
        // 查询管理员列表总记录数
        Integer count = adminDao.selectAdminListByCount(user_code);
        // 创建Page返回对象
        Page<User> result = new Page<>();
        result.setPage(page);
        result.setRows(users);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int createAdmin(User user) {
        return adminDao.createAdmin(user);
    }

    @Override
    public User getAdminByCode(Integer user_code) {
        User user = adminDao.getAdminByCode(user_code);
        return user;
    }
    @Override
    public User getAdminById(Integer user_id) {
        User user = adminDao.getAdminById(user_id);
        return user;
    }

    @Override
    public int updateAdmin(User user) {
        return adminDao.updateAdmin(user);
    }

    @Override
    public int deleteAdmin(Integer user_id) {
        return adminDao.deleteAdmin(user_id);
    }

    @Override
    public int changeAdminState(Integer user_id) {
        return adminDao.changeAdminState(user_id);
    }

    /**
     * 批量删除
     */
    @Override
    public void batchDeletes(List delList) {
        adminDao.batchDeletes(delList);
    }
}
