<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/6/10
  Time: 下午10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link rel="Bookmark" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/respond.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skin.css"/>

    <title>boot.admin v3.0</title>
</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container-fluid cl"><a class="logo navbar-logo f-l mr-10 hidden-xs" href="#">H-ui.admin</a>
            <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="#">H-ui</a>
            <span class="logo navbar-slogan f-l mr-10 hidden-xs">v3.0</span>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="#">&#xe667;</a>
            <nav class="nav navbar-nav">
                <ul class="cl">
                    <li class="dropDown dropDown_hover"><a href="#" class="dropDown_A"><i
                            class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="#" onclick="article_add('添加资讯','article-add.html')"><i
                                    class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
                            <li><a href="#" onclick="picture_add('添加资讯','picture-add.html')"><i
                                    class="Hui-iconfont">&#xe613;</i> 图片</a></li>
                            <li><a href="#" onclick="product_add('添加资讯','product-add.html')"><i
                                    class="Hui-iconfont">&#xe620;</i> 产品</a></li>
                            <li><a href="#" onclick="member_add('添加用户','member-add.html','','510')"><i
                                    class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li><c:if test="${ADMINUSER_SESSION.user_power==1}">
                        超级管理员
                        </c:if>
                        <c:if test="${ADMINUSER_SESSION.user_power!=1}">
                            普通管理员
                        </c:if></li>
                    <li class="dropDown dropDown_hover"><a href="#" class="dropDown_A">${ADMINUSER_SESSION.user_name}<i
                            class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="#" onClick="myselfinfo()">个人信息</a></li>
                            <li><a href="#">切换账户</a></li>
                            <li><a href="${pageContext.request.contextPath }/adminlogout.action">退出</a></li>
                        </ul>
                    </li>
                    <li id="Hui-msg"><a href="#" title="消息"><span class="badge badge-danger">1</span><i
                            class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a></li>
                    <li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:void(0)"
                                                                               class="dropDown_A" title="换肤"><i
                            class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:void(0)" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
                            <li><a href="javascript:void(0)" data-val="blue" title="蓝色">蓝色</a></li>
                            <li><a href="javascript:void(0)" data-val="green" title="绿色">绿色</a></li>
                            <li><a href="javascript:void(0)" data-val="red" title="红色">红色</a></li>
                            <li><a href="javascript:void(0)" data-val="yellow" title="黄色">黄色</a></li>
                            <li><a href="javascript:void(0)" data-val="orange" title="橙色">橙色</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <dl id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> 资讯管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="#" title="资讯管理">资讯管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-picture">
            <dt><i class="Hui-iconfont">&#xe613;</i> 图片管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=basePath%>adminphoto/list.action?start=1&&rows=5" title="图片管理">图片管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 产品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="#" title="品牌管理">品牌管理</a></li>
                    <li><a href="#" title="分类管理">分类管理</a></li>
                    <li><a href="#" title="产品管理">产品管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-comments">
            <dt><i class="Hui-iconfont">&#xe622;</i> 评论管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="http://h-ui.duoshuo.com/admin/" title="评论列表">评论列表</a></li>
                    <li><a href="<%=basePath%>feedBack/list.action?start=1&&rows=5" title="意见反馈">意见反馈</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i> 会员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=basePath%>member/list.action?start=1&&rows=5" title="会员列表">会员列表</a></li>
                </ul>
            </dd>
        </dl>
        <c:if test="${ADMINUSER_SESSION.user_power==1}">
            <dl id="menu-admin">
                <dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
                </dt>
                <dd>
                    <ul>
                        <li><a href="<%=basePath%>admin/list.action?start=1&&rows=5" title="管理员列表">管理员列表</a></li>
                    </ul>
                </dd>
            </dl>
        </c:if>
        <dl id="menu-tongji">
            <dt><i class="Hui-iconfont">&#xe61a;</i> 系统统计<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="#" title="折线图">折线图</a></li>
                    <li><a href="#" title="时间轴折线图">时间轴折线图</a></li>
                    <li><a href="#" title="区域图">区域图</a></li>
                    <li><a href="#" title="柱状图">柱状图</a></li>
                    <li><a href="#" title="饼状图">饼状图</a></li>
                    <li><a href="#" title="3D柱状图">3D柱状图</a></li>
                    <li><a href="#" title="3D饼状图">3D饼状图</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-system">
            <dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="#" title="系统设置">系统设置</a></li>
                    <li><a href="#" title="栏目管理">栏目管理</a></li>
                    <li><a href="#" title="数据字典">数据字典</a></li>
                    <li><a href="#" title="屏蔽词">屏蔽词</a></li>
                    <li><a href="#" title="系统日志">系统日志</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="<%=basePath%>systeminfo.action"
                                                             class="maincolor">首页</a>
        <span class="c-999 en">&gt;</span>
        <span class="c-666">系统信息</span>
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
           href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <p class="f-20 text-success">欢迎使用boot.admin
                <span class="f-14">v3.0</span>
                后台！</p>
            <table class="table table-border table-bordered table-bg mt-20">
                <thead>
                <tr>
                    <th colspan="2" scope="col">系统信息</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th type="width=30%;">计算机名</th>
                    <td><span id="lbServerName">${computername}</span></td>
                </tr>
                <tr>
                    <td>操作系统的名称</td>
                    <td>${osversion}</td>
                </tr>
                <tr>
                    <td>Java的运行环境版本</td>
                    <td>${javaversion}</td>
                </tr>
                <tr>
                    <td>Java的运行环境供应商</td>
                    <td>${javavendor}</td>
                </tr>
                <tr>
                    <td>系统框架</td>
                    <td>${osarch}</td>
                </tr>
                <tr>
                    <td>Java的安装路径</td>
                    <td>${javahome}</td>
                </tr>
                <tr>
                    <td>cpu</td>
                    <td>${cpu}</td>
                </tr>
                <tr>
                    <td>CPU的总MHz</td>
                    <td>${mhz}</td>
                </tr>
                <tr>
                    <td>cpu个数</td>
                    <td>${cputotal}</td>
                </tr>
                <tr>
                    <td>cpu使用情况</td>
                    <td>${cpuused}</td>
                </tr>
                <tr>
                    <td>内存总量</td>
                    <td>${mentotal}</td>
                </tr>
                <tr>
                    <td>内存使用量</td>
                    <td>${menused}</td>
                </tr>
                <tr>
                    <td>内存剩余量</td>
                    <td>${menfree}</td>
                </tr>
                <tr>
                    <td>ip</td>
                    <td>${ip}</td>
                </tr>
                </tbody>
            </table>
        </article>
        <footer class="footer">
            <p></p>
        </footer>
    </div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<script type="text/javascript">
    //1、页面加载完成以后，直接去发送ajax请求
    $(function () {
        $.ajax({
            type: "get",
            url: "<%=basePath%>systeminfo.action",
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            success: function (data) {

            }
        });
    });

    function memberlist() {
        $.ajax({
            type: "get",
            url: "<%=basePath%>member/list.action",
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            success: function (data) {

            }
        });
    }
</script>

</body>
</html>
