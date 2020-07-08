/**
 * FileName: viewForwardController
 * Author:   wlc
 * Date:     2019/7/1 下午9:52
 * Description:
 */
package com.itheima.core.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class viewForwardController {
    /*测试跳转*/

    @RequestMapping(value = "/home_page.action", method = RequestMethod.GET)
    public String toinedx() {
        return "index";
    }

    @RequestMapping(value = "/learn.action", method = RequestMethod.GET)
    public String tolearn() {
        return "learn";
    }

    @RequestMapping(value = "/financial_consulting.action", method = RequestMethod.GET)
    public String tofinancial_consulting() {
        return "financial_consulting";
    }

    @RequestMapping(value = "/enterprise_residence.action", method = RequestMethod.GET)
    public String toenterprise_residence() {
        return "enterprise_residence";
    }

    @RequestMapping(value = "/feedback.action", method = RequestMethod.GET)
    public String tofeedback() {
        return "feedback";
    }

    @RequestMapping(value = "/register.action", method = RequestMethod.GET)
    public String toregister() {
        return "register";
    }
}
