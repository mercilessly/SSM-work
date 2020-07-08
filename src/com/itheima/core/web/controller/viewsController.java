/**
 * FileName: viewsController
 * Author:   wlc
 * Date:     2019/6/30 下午4:11
 * Description: 前台
 */
package com.itheima.core.web.controller;

import com.itheima.core.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class viewsController {
    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/index.action")
    @ResponseBody
    public ModelAndView indexView(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        System.out.println(mav);
        return mav;
    }
}
