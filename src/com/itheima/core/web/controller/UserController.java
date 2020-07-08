package com.itheima.core.web.controller;

import javax.servlet.http.HttpSession;

import com.itheima.core.po.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;

/**
 * 用户登录控制器类
 */
@Controller
public class UserController {
    // 依赖注入
    @Autowired
    private UserService userService;

    /**
     * 管理员登录
     */
    @RequestMapping(value = "/adminlogin.action", method = RequestMethod.POST)
    public String adminlogin(String usercode, String password, Model model,
                        HttpSession session) {
        // 通过账号和密码查询用户
        User user = userService.findAdminUser(usercode, password);
        if (user != null) {
            if (user.getUser_state() == 1) {
                // 将用户对象添加到Session
                session.setAttribute("ADMINUSER_SESSION", user);
                // 跳转到主页面
//			return "customer";
                return "redirect:systeminfo.action";
            } else {
                model.addAttribute("msg", "账号被锁定");
            }
        }else{
        model.addAttribute("msg", "账号或密码错误，请重新输入！");}
        // 返回到登录页面
        return "adminlogin";
    }
    /**
     * 用户登录
     */
    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    public String login(String membercode, String password, Model model,
                        HttpSession session) {
        // 通过账号和密码查询用户
        Member member = userService.findUser(membercode, password);
        if (member != null) {
            if (member.getMember_status() == 1) {
                // 将用户对象添加到Session
                session.setAttribute("USER_SESSION", member);
                // 跳转到主页面
//			return "customer";
                return "redirect:index.action";
            } else {
                model.addAttribute("msg", "账号被锁定");
            }
        }else{
        model.addAttribute("msg", "账号或密码错误，请重新输入！");}
        // 返回到登录页面
        return "login";
    }

    /**
     * 管理员退出登录
     */
    @RequestMapping(value = "/adminlogout.action")
    public String adminlogout(HttpSession session) {
        // 清除Session
        session.removeAttribute("ADMINUSER_SESSION");
        /*session.invalidate();*/
        // 重定向到登录页面的跳转方法
        return "redirect:adminlogin.action";
    }
    /**
     * 退出登录
     */
    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session) {
        // 清除Session
        session.removeAttribute("USER_SESSION");
        /*session.invalidate();*/
        // 重定向到登录页面的跳转方法
        return "index";
    }

    /**
     * 向管理员登陆页面跳转
     */
    @RequestMapping(value = "/adminlogin.action", method = RequestMethod.GET)
    public String toadminLogin() {
        return "adminlogin";
    }
    /**
     * 向用户登陆页面跳转
     */
    @RequestMapping(value = "/login.action", method = RequestMethod.GET)
    public String toLogin() {
        return "login";
    }


}
