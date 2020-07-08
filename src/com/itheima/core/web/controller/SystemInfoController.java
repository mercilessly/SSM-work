/**
 * FileName: SystemInfo
 * Author:   wlc
 * Date:     2019/6/10 下午10:49
 * Description: 获取系统信息
 */
package com.itheima.core.web.controller;

import org.hyperic.sigar.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.net.InetAddress;
import java.text.DecimalFormat;
import java.util.*;

@Controller
public class SystemInfoController {

    private Sigar sigar = new Sigar();

    @RequestMapping(value = "/systeminfo.action")
    @ResponseBody
    public ModelAndView getSystemInfo() {
        ModelAndView mav = new ModelAndView();
        try {
            Properties props = System.getProperties();//获取java信息
            InetAddress addr = InetAddress.getLocalHost();//计算机名
            OperatingSystem OS = OperatingSystem.getInstance();//获取操作系统信息
            NetInterfaceConfig cfg = sigar.getNetInterfaceConfig();
            CpuInfo[] infos = this.sigar.getCpuInfoList();
            DecimalFormat df = new DecimalFormat("#0.00");
            Mem mem = sigar.getMem();
            CpuInfo info = infos[0];

            mav.addObject("computername", addr.getHostName());
            mav.addObject("javaversion", props.getProperty("java.version"));
            mav.addObject("javavendor", props.getProperty("java.vendor"));
            mav.addObject("javahome", props.getProperty("java.home"));
            mav.addObject("osarch", OS.getArch());
            mav.addObject("osversion", OS.getDescription());
            mav.addObject("osvender", info.getVendor());
            mav.addObject("mhz", info.getMhz());
            mav.addObject("cpu", info.getModel());
            mav.addObject("cputotal", info.getTotalSockets());
            mav.addObject("cpuused", this.sigar.getCpuPerc());
            mav.addObject("mentotal", df.format((float) mem.getTotal() / 1024 / 1024 / 1024) + "G");
            mav.addObject("menused", df.format((float) mem.getUsed() / 1024 / 1024 / 1024) + "G");
            mav.addObject("menfree", df.format((float) mem.getFree() / 1024 / 1024 / 1024) + "G");
            mav.addObject("ip", cfg.getAddress());

        } catch (Exception e) {

        }

        mav.setViewName("systeminfo");
        System.out.println(mav);
        return mav;
    }
}
