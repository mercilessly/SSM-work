<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/7/1
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link rel="Bookmark" href="${pageContext.request.contextPath}/images/favicon.ico">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/images/favicon.ico"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/respond.min.js"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css"/>--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skin.css"/>

    <title>boot.admin</title>
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
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="<%=basePath%>systeminfo.action" class="maincolor">首页</a> <span class="c-gray en">&gt;</span> 评论管理 <span
            class="c-gray en">&gt;</span> 意见反馈 <a class="btn btn-success radius r"
                                                  style="line-height:1.6em;margin-top:3px"
                                                  href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="text-c">
                <input type="text" class="input-text" style="width:250px" placeholder="输入用户名、电话、邮箱" id="feedBack_code"
                       name="">
                <button type="submit" class="btn btn-success radius" id="" name="" onclick="findFeedBackBy()"><i
                        class="Hui-iconfont">&#xe665;</i>
                    搜意见
                </button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:void(0);" onclick="datadel()"
                                                                       class="btn btn-danger radius"
                                                                       id="deleteButton"><i
                    class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> </span> <span class="r">共有数据：<strong>${feedBacklist.total}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-hover table-bg table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25px"><input type="checkbox" id="SelectAll" onclick="selectAll();"></th>
                        <th width="60px">ID</th>
                        <th width="100px">用户名</th>
                        <th width="120px">姓名</th>
                        <th width="150px">邮箱</th>
                        <th width="150px">电话</th>
                        <th>留言内容</th>
                        <th width="50px">状态</th>
                        <th width="80px">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${feedBacklist.rows}" var="row">
                        <tr class="text-c">
                            <td><input type="checkbox" value="${row.id}" name="check"></td>
                            <td>${row.id}</td>
                            <td>${row.member_code}</td>
                            <td>${row.name}</td>
                            <td>${row.email}</td>
                            <td>${row.phone}</td>
                            <td>${row.text}</td>
                            <td class="td-status">
                                <c:if test="${row.status==1}">
                                    <span class="label label-success radius">未读</span>
                                </c:if>
                                <c:if test="${row.status==0}">
                                    <span class="label radius">已读</span>
                                </c:if>
                            </td>
                            <td class="td-manage">
                                <a style="text-decoration:none" class="ml-5"
                                   onClick="change_status(${row.id})"
                                   href="#" title="标记已读">
                                    <i class="Hui-iconfont">&#xe63f;</i>
                                </a>
                                <a title="删除" href="#" onclick="deleteFeedBack(${row.id})" class="ml-5"
                                   style="text-decoration:none">
                                    <i class="Hui-iconfont">&#xe6e2;</i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col-md-12 text-right">
                    <itheima:page url="${pageContext.request.contextPath }/feedBack/list.action"/>
                </div>
            </div>
        </article>
    </div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min1.9.1.js"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<script type="text/javascript">

    //全选
    function selectAll() {
        if ($("#SelectAll").is(":checked")) {
            $(":checkbox").prop("checked", true);//所有选择框都选中
        } else {
            $(":checkbox").prop("checked", false);
        }
    }

    //批量删除
    $("#deleteButton").on("click", function () {
        //判断至少写了一项
        var checkedNum = $("input[name='check']:checked").length;
        if (checkedNum == 0) {
            layer.alert("请至少选择一项!");
            return false;
        }
        var checkedList = new Array();
        $("input[name='check']:checked").each(function () {
            checkedList.push($(this).val());
        });
        layer.confirm('确定删除所选项目?', {
            title: '提示'
        }, function (index) {

            // $("body").mLoading('show'); //加遮罩

            $.ajax({
                type: "POST",
                url: '<%=basePath%>feedBack/batchDeletes.action',
                data: {
                    "delitems": checkedList.toString()
                },
                datatype: "html",
                success: function (data) {
                    $(":checkbox").attr("checked", false);
                    layer.close();
                    window.location.reload();
                },
                error: function (data) {
                    alert("删除失败！");
                    layer.close();
                }
            });

        });
    })

    // 删除客户
    function deleteFeedBack(id) {
        if (confirm('确实要删除该客户吗?')) {
            $.post("<%=basePath%>feedBack/delete.action", {"id": id},
                function (data) {
                    if (data == "OK") {
                        alert("客户删除成功！");
                        window.location.reload();
                    } else {
                        alert("删除客户失败！");
                        window.location.reload();
                    }
                });
        }
    }

    function findFeedBackBy() {
        var feedBack_code = $("#feedBack_code").val();
        window.location.href = "<%=basePath%>feedBack/selectfeedBack.action?feedBack_code=" + feedBack_code;
    }

    // 修改状态
    function change_status(id) {
        if (confirm('确实要修改该客户的状态?')) {
            $.post("<%=basePath%>feedBack/changeStatus.action", {"id": id},
                function (data) {
                    if (data == "OK") {
                        alert("状态修改成功！");
                        window.location.reload();
                    } else {
                        alert("状态修改失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>