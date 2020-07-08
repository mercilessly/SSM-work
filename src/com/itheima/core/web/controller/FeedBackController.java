/**
 * FileName: FeedBackController
 * Author:   wlc
 * Date:     2019/7/1 下午4:09
 * Description: 反馈控制器
 */
package com.itheima.core.web.controller;

import com.itheima.common.utils.Page;
import com.itheima.core.po.FeedBack;
import com.itheima.core.po.Member;
import com.itheima.core.service.FeedBackService;
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
public class FeedBackController {
    @Autowired
    private FeedBackService feedBackService;

    /**
     * 反馈列表
     * @return
     */
    @RequestMapping(value = "/feedBack/list.action")
    @ResponseBody
    public ModelAndView list(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "5") Integer rows, Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有反馈
        Page<FeedBack> feedBacks = feedBackService.findFeedBackList(page, rows);
        model.addAttribute("page", feedBacks);
        mav.addObject("feedBacklist",feedBacks);
        mav.setViewName("feedbacklist");
        System.out.println(mav);
        return mav;
    }
    /**
     * 未读反馈列表
     * @return
     */
    @RequestMapping(value = "/feedBackStatus/list.action")
    @ResponseBody
    public ModelAndView statuslist(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "5") Integer rows, Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有反馈
        Page<FeedBack> feedBacks = feedBackService.findFeedBackStatusList(page, rows);
        model.addAttribute("page", feedBacks);
        mav.addObject("feedBackStatuslist",feedBacks);
        mav.setViewName("feedbacklist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 通过code获取反馈信息
     */
    @RequestMapping("/feedBack/getFeedBackByCode.action")
    @ResponseBody
    public FeedBack getFeedBackByCode(String feedBack_code) {
        FeedBack feedBack = feedBackService.getFeedBackByCode(feedBack_code);
        return feedBack;
    }

    /**
     * 通过多字段匹配查询反馈信息
     */
    @RequestMapping("/feedBack/selectfeedBack.action")
    @ResponseBody
    public ModelAndView list2(@RequestParam(defaultValue = "1") Integer page,
                              @RequestParam(defaultValue = "5") Integer rows, String feedBack_code,Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有反馈
        Page<FeedBack> feedBacks = feedBackService.findFeedBackListBy(page, rows,feedBack_code);
        model.addAttribute("page", feedBacks);
        mav.addObject("feedBacklist",feedBacks);
        mav.setViewName("feedbacklist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 通过id获取反馈信息
     */
    @RequestMapping("/feedBack/getFeedBackById.action")
    @ResponseBody
    public FeedBack getFeedBackById(Integer id) {
        FeedBack feedBack = feedBackService.getFeedBackById(id);
        return feedBack;
    }

    /**
     * 删除反馈
     */
    @RequestMapping("/feedBack/delete.action")
    @ResponseBody
    public String feedBackDelete(Integer id) {
        int rows = feedBackService.deleteFeedBack(id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 修改状态
     */
    @RequestMapping("/feedBack/changeStatus.action")
    @ResponseBody
    public String changeFeedBackStatus(Integer id) {
        int rows = feedBackService.changeFeedBackStatus(id);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 批量删除 batch
     */
    @RequestMapping("/feedBack/batchDeletes.action")
    @ResponseBody
    public void batchDeletes(HttpServletRequest request, HttpServletResponse response){
        String items = request.getParameter("delitems");
        List<String> delList = new ArrayList<String>();
        String[] strs = items.split(",");
        System.out.println(items);
        for (String str : strs) {
            delList.add(str);
        }
        feedBackService.batchDeletes(delList);
    }
    /**
     * 提交反馈
     */
    @RequestMapping("/feedBack/sendFeedBack.action")
    @ResponseBody
    public String sendFeedBack(FeedBack feedBack, HttpSession session) {
        // 获取Session中的当前用户信息
        Member member = (Member) session.getAttribute("USER_SESSION");
        // 将当前用户id存储在客户对象中
        feedBack.setMember_code(member.getMember_code());
        feedBack.setStatus(1);
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = feedBackService.sendFeedBack(feedBack);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }
}
