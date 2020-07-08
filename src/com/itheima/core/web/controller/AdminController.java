/**
 * FileName: adminController
 * Author:   wlc
 * Date:     2019/6/28 上午9:53
 * Description: 管理员管理
 */
package com.itheima.core.web.controller;

import com.itheima.common.utils.Page;
import com.itheima.core.po.User;
import com.itheima.core.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    /**
     * 管理员列表
     * @return
     */
    @RequestMapping(value = "/admin/list.action")
    @ResponseBody
    public ModelAndView list(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "5") Integer rows, Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有客户
        Page<User> users = adminService.findAdminList(page, rows);
        model.addAttribute("page", users);
        mav.addObject("adminlist",users);
        mav.setViewName("adminlist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 创建管理员
     */
    @RequestMapping("/admin/create.action")
    @ResponseBody
    public String memberCreate(User user) {
        user.setUser_state(1);
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = adminService.createAdmin(user);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 通过code获取管理员信息
     */
    @RequestMapping("/admin/getAdminByCode.action")
    @ResponseBody
    public User getAdminByCode(Integer user_code) {
        User user = adminService.getAdminByCode(user_code);
        return user;
    }

    /**
     * 通过多字段匹配查询管理员信息
     */
    @RequestMapping("/admin/selectAdmin.action")
    @ResponseBody
    public ModelAndView list2(@RequestParam(defaultValue = "1") Integer page,
                              @RequestParam(defaultValue = "5") Integer rows, String user_code,Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有客户
        Page<User> users = adminService.findAdminListBy(page, rows,user_code);
        model.addAttribute("page", users);
        mav.addObject("adminlist",users);
        mav.setViewName("adminlist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 通过id获取管理员信息
     */
    @RequestMapping("/admin/getAdminById.action")
    @ResponseBody
    public User getAdminById(Integer id) {
        User user = adminService.getAdminById(id);
        return user;
    }

    /**
     * 更新管理员
     */
    @RequestMapping("/admin/update.action")
    @ResponseBody
    public String adminUpdate(User user) {
        int rows = adminService.updateAdmin(user);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 删除管理员
     */
    @RequestMapping("/admin/delete.action")
    @ResponseBody
    public String adminDelete(Integer id) {
        int rows = adminService.deleteAdmin(id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 修改状态
     */
    @RequestMapping("/admin/changeState.action")
    @ResponseBody
    public String changeAdminState(Integer user_id) {
        int rows = adminService.changeAdminState(user_id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 批量删除 batch
     */
    @RequestMapping("/admin/batchDeletes.action")
    @ResponseBody
    public void batchDeletes(HttpServletRequest request, HttpServletResponse response){
        String items = request.getParameter("delitems");
        List<String> delList = new ArrayList<String>();
        String[] strs = items.split(",");
        System.out.println(items);
        for (String str : strs) {
            delList.add(str);
        }
        adminService.batchDeletes(delList);
    }
}
