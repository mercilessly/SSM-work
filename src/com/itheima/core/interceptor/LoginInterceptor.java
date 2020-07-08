package com.itheima.core.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itheima.core.po.Member;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.itheima.core.po.User;

/**
 * 登录拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)
            throws Exception {
        // 获取请求的URL
        String url = request.getRequestURI();
        System.out.println(url);
        // URL:除了登录请求外，其他的URL都进行拦截控制
        if (url.indexOf("/login.action") >= 0||
                url.indexOf("/adminlogin.action") >= 0||
                url.indexOf("/register.action") >= 0||
                url.indexOf("/member/register.action") >= 0) {
            System.out.println("未拦截");
            return true;
        }
        if(url.indexOf("admin") >= 0||
                url.indexOf("member") >= 0||
                url.indexOf("feedBack") >= 0||
                url.equals("/systeminfo.action")||
                url.equals("/upload.action")||
                url.equals("/download.action")||
                /*url.equals("/photo/list.action")||*/
                url.indexOf("feedBack")>=0 ){
            System.out.println("后台拦截");
            // 获取Session
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("ADMINUSER_SESSION");
            // 判断Session中是否有用户数据，如果有，则返回true,继续向下执行
            if (user != null) {
                return true;
            }else{
                System.out.println("前台拦截");
            // 不符合条件的给出提示信息，并转发到登录页面
            request.setAttribute("msg", "您还没有登录，请先登录！");
            request.getRequestDispatcher("/WEB-INF/jsp/adminlogin.jsp")
                    .forward(request, response);
            return false;}
        }else{
            // 获取Session
            HttpSession session = request.getSession();
            Member member = (Member) session.getAttribute("USER_SESSION");
            // 判断Session中是否有用户数据，如果有，则返回true,继续向下执行
            if (member != null) {
                return true;
            }
            // 不符合条件的给出提示信息，并转发到登录页面
            request.setAttribute("msg", "您还没有登录，请先登录！!");
            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                    .forward(request, response);
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }
}
