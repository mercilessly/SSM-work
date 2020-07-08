/**
 * FileName: MemberController
 * Author:   wlc
 * Date:     2019/6/14 下午9:44
 * Description: 会员列表
 */
package com.itheima.core.web.controller;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Member;
import com.itheima.core.po.User;
import com.itheima.core.service.MemberService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    /**
     * 客户列表
     * @return
     */
    @RequestMapping(value = "/member/list.action")
    @ResponseBody
    public ModelAndView list(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "5") Integer rows, Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有客户
        Page<Member> members = memberService.findMemberList(page, rows);
        model.addAttribute("page", members);
        mav.addObject("memberlist",members);
        mav.setViewName("memberlist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 创建客户
     */
    @RequestMapping("/member/create.action")
    @ResponseBody
    public String memberCreate(Member member, HttpSession session) {
        // 获取Session中的当前用户信息
        User user = (User) session.getAttribute("ADMINUSER_SESSION");
        // 将当前用户id存储在客户对象中
        member.setMember_create_code(user.getUser_code());
        // 创建Date对象
        Date date = new Date();
        // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
        Timestamp timeStamp = new Timestamp(date.getTime());
        member.setMember_status(1);
        member.setMember_createtime(timeStamp);
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = memberService.createMember(member);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 通过code获取客户信息
     */
    @RequestMapping("/member/getMemberByCode.action")
    @ResponseBody
    public Member getMemberByCode(Integer code) {
        Member member = memberService.getMemberByCode(code);
        return member;
    }

    /**
     * 通过多字段匹配查询会员信息
     */
    @RequestMapping("/member/selectmember.action")
    @ResponseBody
    public ModelAndView list2(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "5") Integer rows, String member_code,Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有客户
        Page<Member> members = memberService.findMemberListBy(page, rows,member_code);
        model.addAttribute("page", members);
        mav.addObject("memberlist",members);
        mav.setViewName("memberlist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 通过id获取客户信息
     */
    @RequestMapping("/member/getMemberById.action")
    @ResponseBody
    public Member getMemberById(Integer id) {
        Member member = memberService.getMemberById(id);
        return member;
    }

    /**
     * 更新客户
     */
    @RequestMapping("/member/update.action")
    @ResponseBody
    public String memberUpdate(Member member) {
        int rows = memberService.updateMember(member);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 删除客户
     */
    @RequestMapping("/member/delete.action")
    @ResponseBody
    public String memberDelete(Integer id) {
        int rows = memberService.deleteMember(id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 修改状态
     */
    @RequestMapping("/member/changeStatus.action")
    @ResponseBody
    public String changeMemberStatus(Integer id) {
        int rows = memberService.changeMemberStatus(id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 批量删除 batch
     */
    @RequestMapping("/member/batchDeletes.action")
    @ResponseBody
    public void batchDeletes(HttpServletRequest request, HttpServletResponse response){
        String items = request.getParameter("delitems");
        List<String> delList = new ArrayList<String>();
        String[] strs = items.split(",");
        System.out.println(items);
        for (String str : strs) {
            delList.add(str);
        }
        memberService.batchDeletes(delList);
    }

    /**
     * 注册客户
     */
    @RequestMapping("/member/register.action")
    @ResponseBody
    public String memberRegister(Member member) {
        member.setMember_create_code("自我注册");
        // 创建Date对象
        Date date = new Date();
        // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
        Timestamp timeStamp = new Timestamp(date.getTime());
        member.setMember_status(1);
        member.setMember_createtime(timeStamp);
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = memberService.createMember(member);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }
}
