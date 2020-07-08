<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/6/15
  Time: 上午11:12
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
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="<%=basePath%>systeminfo.action" class="maincolor">首页</a> <span class="c-gray en">&gt;</span> 会员管理 <span
            class="c-gray en">&gt;</span> 会员列表<a class="btn btn-success radius r"
                                                 style="line-height:1.6em;margin-top:3px"
                                                 href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="text-c">
                <input type="text" class="input-text" style="width:250px" placeholder="输入会员名称、电话、邮箱" id="member_code"
                       name="">
                <button type="submit" class="btn btn-success radius" name="" onclick="findMemberBy()"><i
                        class="Hui-iconfont">&#xe665;</i>
                    搜用户
                </button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l">
                    <a href="#" class="btn btn-danger radius" id="deleteButton">
                        <i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
                    <a href="" data-toggle="modal"
                       data-target="#newMemberDialog" onclick="clearMember()"
                       class="btn btn-primary radius">
                        <i class="Hui-iconfont">&#xe600;</i> 添加用户
                    </a>
                </span>
                <span class="r">共有数据：<strong>${memberlist.total}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-hover table-bg table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25px"><input type="checkbox" id="SelectAll" onclick="selectAll();"/></th>
                        <th width="50px">ID</th>
                        <th width="60px">CODE</th>
                        <th width="70px">用户名</th>
                        <th width="40px">性别</th>
                        <th width="110px">手机</th>
                        <th width="110px">邮箱</th>
                        <th width="120px">地址</th>
                        <th width="100px">加入时间</th>
                        <th width="70px">状态</th>
                        <th width="80px">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${memberlist.rows}" var="row">
                        <tr class="text-c">
                            <td><input type="checkbox" value="${row.id}" name="check"></td>
                            <td>${row.id}</td>
                            <td>${row.member_code}</td>
                            <td>
                                <u style="cursor:pointer" class="text-primary"
                                   onclick="member_show('${row.member_name}','${row.member_photo_path}','${row.member_photo_name}')">${row.member_name}</u>
                            </td>
                            <td>${row.member_gender}</td>
                            <td>${row.member_phone}</td>
                            <td>${row.member_email}</td>
                            <td class="text-l">${row.member_address}</td>
                            <td>${row.member_createtime}</td>
                            <td class="td-status">
                                <c:if test="${row.member_status==1}">
                                    <span class="label label-success radius">已启用</span>
                                </c:if>
                                <c:if test="${row.member_status==0}">
                                    <span class="label radius">锁定</span>
                                </c:if>
                            </td>
                            <td class="td-manage">
                                <a style="text-decoration:none" onClick="uploadPhoto(${row.id})"
                                   href="#" title="上传图片">
                                    <i class="Hui-iconfont">&#xe642;</i>
                                </a>
                                <a title="编辑" href="#" onclick="editMember(${row.id})"
                                   data-toggle="modal"
                                   data-target="#memberEditDialog"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="Hui-iconfont">&#xe6df;</i>
                                </a>
                                <a style="text-decoration:none" class="ml-5"
                                   onClick="change_status(${row.id})"
                                   href="#" title="修改状态">
                                    <i class="Hui-iconfont">&#xe63f;</i>
                                </a>
                                <a title="删除" href="#" onclick="deleteMember(${row.id})" class="ml-5"
                                   style="text-decoration:none">
                                    <i class="Hui-iconfont">&#xe6e2;</i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col-md-12 text-right">
                    <itheima:page url="${pageContext.request.contextPath }/member/list.action"/>
                </div>
            </div>
        </article>
    </div>
</section>
<%----%>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newMemberDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="z-index:10000">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建会员信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_member_form">
                    <div class="form-group">
                        <label for="new_memberCode" class="col-sm-4 control-label">
                            会员编号
                        </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_memberCode" placeholder="会员编号"
                                   name="member_code"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_memberPassword" class="col-sm-4 control-label">
                            会员密码
                        </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_memberPassword" placeholder="会员密码"
                                   name="member_password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_memberName" class="col-sm-4 control-label">
                            会员姓名
                        </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_memberName" placeholder="会员姓名"
                                   name="member_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_memberGender" class="col-sm-4 control-label">
                            性别
                        </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_memberGender" placeholder="性别"
                                   name="member_gender"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_email" class="col-sm-4 control-label">邮箱</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_email" placeholder="邮箱"
                                   name="member_email"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_phone" class="col-sm-4 control-label">手机</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_phone" placeholder="手机"
                                   name="member_phone"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_address" class="col-sm-4 control-label">联系地址</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="new_address" placeholder="联系地址"
                                   name="member_address"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createMember()">创建会员</button>
            </div>
        </div>
    </div>
</div>
<%----%>
<!-- 修改客户模态框 -->
<div class="modal fade" id="memberEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document" style="z-index:10000">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">修改会员信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_member_form">
                    <input type="hidden" class="form-control" id="edit_id" name="id">
                    <div class="form-group">
                        <label for="edit_memberCode" class="col-sm-4 control-label">编号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberCode" placeholder="编号"
                                   name="member_code"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_memberPassword" class="col-sm-4 control-label">密码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberPassword" placeholder="密码"
                                   name="member_password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_memberName" class="col-sm-4 control-label">姓名</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberName" placeholder="客户名称"
                                   name="member_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_memberGender" class="col-sm-4 control-label">性别</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberGender" placeholder="性别"
                                   name="member_gender"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_memberEmail" class="col-sm-4 control-label">email</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberEmail" placeholder="email"
                                   name="member_email"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_memberPhone" class="col-sm-4 control-label">手机</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberPhone" placeholder="手机"
                                   name="member_phone"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_memberAddress" class="col-sm-4 control-label">联系地址</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="edit_memberAddress" placeholder="联系地址"
                                   name="member_address"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateMember()">保存修改</button>
            </div>
        </div>
    </div>
</div>
<%----%>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min1.9.1.js"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<%--<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.15/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>--%>
<script type="text/javascript">

    //全选
    function selectAll(){
        if ($("#SelectAll").is(":checked")) {
            $(":checkbox").prop("checked", true);//所有选择框都选中
        } else {
            $(":checkbox").prop("checked", false);
        }
    }

    //批量删除
    $("#deleteButton").on("click", function() {
        //判断至少写了一项
        var checkedNum = $("input[name='check']:checked").length;
        if (checkedNum == 0) {
            layer.alert("请至少选择一项!");
            return false;
        }
        var checkedList = new Array();
        $("input[name='check']:checked").each(function() {
            checkedList.push($(this).val());
        });
        layer.confirm('确定删除所选项目?', {
            title : '提示'
        }, function(index) {

            // $("body").mLoading('show'); //加遮罩

            $.ajax({
                type : "POST",
                url : '<%=basePath%>member/batchDeletes.action',
                data : {
                    "delitems" : checkedList.toString()
                },
                datatype : "html",
                success : function(data) {
                    $(":checkbox").attr("checked", false);
                    layer.close();
                    window.location.reload();
                },
                error : function(data) {
                    alert("删除失败！");
                    layer.close();
                }
            });

        });
    })
    //清空新建客户窗口中的数据
    function clearMember() {
        $("#new_memberCode").val("");
        $("#new_memberPassword").val("")
        $("#new_memberName").val("")
        $("#new_memberGender").val("")
        $("#new_email").val("");
        $("#new_phone").val("");
        $("#new_address").val("");
    }

    // 创建客户
    function createMember() {
        $.post("<%=basePath%>member/create.action",
            $("#new_member_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("客户创建成功！");
                    window.location.reload();
                } else {
                    alert("客户创建失败！");
                    window.location.reload();
                }
            });
    }

    // 通过id获取修改的客户信息
    function editMember(id) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>member/getMemberById.action",
            data: {"id": id},
            success: function (data) {
                $("#edit_id").val(data.id);
                $("#edit_memberCode").val(data.member_code);
                $("#edit_memberPassword").val(data.member_password);
                $("#edit_memberName").val(data.member_name);
                $("#edit_memberGender").val(data.member_gender);
                $("#edit_memberEmail").val(data.member_email);
                $("#edit_memberPhone").val(data.member_phone);
                $("#edit_memberAddress").val(data.member_address);
            }
        });
    }

    // 通过id上传会员头像
    function uploadPhoto(id) {
        var kid = id;
        layer.open({
            title: '上传头像'
            , content: '<form action="<%=basePath%>upload.action"\n' +
                '    method="post" enctype="multipart/form-data" onsubmit="return check()">\n' +
                '    <input id="member_id" name="member_id" type="hidden"/>\n' +
                '    <input type="file" name="uploadfile" id="file" multiple="multiple"/>\n' +
                '     <input type="submit" value="上传" />\n' +
                '</form>'
        });
        document.getElementById("member_id").value = kid;
    }

    // 执行修改会员操作
    function updateMember() {
        $.post("<%=basePath%>member/update.action", $("#edit_member_form").serialize(), function (data) {
            if (data == "OK") {
                alert("客户信息更新成功！");
                window.location.reload();
            } else {
                alert("客户信息更新失败！");
                window.location.reload();
            }
        });
    }

    // 删除客户
    function deleteMember(id) {
        if (confirm('确实要删除该客户吗?')) {
            $.post("<%=basePath%>member/delete.action", {"id": id},
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

    function findMemberBy() {
        var member_code = $("#member_code").val();
        window.location.href = "<%=basePath%>member/selectmember.action?member_code=" + member_code;
    }

    /*信息显示*/
    function member_show(member_name, member_photo_path, member_photo_name) {
        layer.open({
            type: 1 //Page层类型
            , area: ['300px', '500px']
            , title: member_name
            , shade: 0.6 //遮罩透明度
            , maxmin: false //允许全屏最小化
            , anim: 1 //0-6的动画形式，-1不开启
            , content: '<div style="width:300px;height:300px;">' +
                '<img id="memberPhotoPath" style="width: 100%;height: 100%;padding:20px;"/>' +
                '</div>' +
                '<div>' +
                '<a id="memberPhotoName">'+
                '<button type="button" id="memberPhotoName" class="btn btn-primary radius" style="display:block;margin: 0 auto;margin-top: 100px;">下载' +
                '</button>'+
                '</a>'+
                '</div>'
        });
        document.getElementById("memberPhotoPath").src = member_photo_path;
        document.getElementById("memberPhotoName").href = "<%=basePath%>download.action?filename="+member_photo_name;
    }

    // 修改状态
    function change_status(id) {
        if (confirm('确实要修改该客户的状态?')) {
            $.post("<%=basePath%>member/changeStatus.action", {"id": id},
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