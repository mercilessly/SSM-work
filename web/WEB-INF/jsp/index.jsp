<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>数字化资讯平台</title>
	<!-- 引入css样式文件 -->
    <link href="${pageContext.request.contextPath}/css/style3.css" rel="stylesheet">
	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- jQuery and Modernizr-->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>

	
</head>
<body>
<!--Top-->
<!--Top-->
<header class="sub-header">

    <!--Navigation-->
    <nav id="menu" class="navbar">
        <div class="container">
            <div class="navbar-header">
                <div class="navbar-brand">
                    <a class="navbar-brand-link" href="<%=basePath%>home_page.action">
                        <img src="${pageContext.request.contextPath}/images/logo.png" />
                    </a>
                </div>
                <center><button type="button" class="btn btn-navbar navbar-toggle visible-xs" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button></center>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<%=basePath%>home_page.action">主页
                            <div class="menu-item__desc">Homepage</div>
                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath%>photo/getPhotoByType.action?page=learn">网课、线上
                            <div class="menu-item__desc">Online course</div>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="<%=basePath%>photo/teacher.action?page=financial_consulting" class="dropdown-toggle" data-toggle="dropdown">金融咨询
                            <div class="menu-item__desc">Financial Consulting</div>
                        </a>

                    </li>
                    <li>
                        <a href="<%=basePath%>photo/resources.action?page=enterprise_residence">培训企业入驻
                            <div class="menu-item__desc">Enterprise residence</div>
                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath%>feedback.action">意见反馈
                            <div class="menu-item__desc">Feedback</div>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <div style="width:300px;height:40px;float:right;
        text-align:center;font-size:20px;">
            <c:if test="${USER_SESSION.member_name!=null}">
                    <li class="dropDown dropDown_hover"><a href="#" class="dropDown_A" style="color:white;">帐号:${USER_SESSION.member_name}<i
                            class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="#" onClick="myselfinfo()">个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath }/logout.action">退出</a></li>
                        </ul>
                    </li>
            </c:if>
            <c:if test="${USER_SESSION.member_name==null}">
                <a href="<%=basePath%>index.action" style="color:white;">登录</a>
                <a href="<%=basePath%>register.action" style="color:white;">注册</a>
            </c:if>
        </div>
    </nav>

</header>
<!--主导航结束-->
<!-- 顶部 -->
<!--顶部-->
<div class="top">
    <p style="width:100%;height: 600px;background-image: url('${pageContext.request.contextPath}/images/index_top.jpg');background-size: 100% 600px;">
        <br/> <br/> <br/> <br/> <br/> <br/> <br/><br/><a class="top1">大数据</a>&nbsp;&nbsp;&nbsp;
        <a class="font">分析支撑业务，运营提效快</a><br/><br/>
        <a class="font1">流程指数，精准化数字培训</a>
    </p>
</div>
<!--中间-->
<div class="center">
    <div class="center1">
        <p>产品介绍</p>
    </div>
    <div class="center2">
        <div class="chan">
            <div class="chan1">
                <div id="Household" class="HouseholdT">
                    <div class="HouseholdTTop">
                        <dl>
                                <img src="${pageContext.request.contextPath}/images/timg.jpg" alt=""/>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="chan2">
               <br/><br/><br/><br/><a class="wang">网络课程</a><br/><br/>
                <p>网络课程全称：网络课程与网络资源开发</p><br/>
                <p>网络课程就是通过某种软件在网络上进行的远程课程。</p><br/>
                <p>开设机构:加州大学伯克利分校，麻省理工学院</p>
                <div class="catenate">
                    <a href="<%=basePath%>photo/teacher.action?page=learn">立即体验</a>
                </div>
            </div>
        </div>
        <div class="chan">
            <div class="chan3">
                <br/><br/><br/><br/><a class="wang">线上培训</a><br/><br/>
                <p>优势：时间短，快捷，方便</p><br/>
                <p>作用：实现员工的自动化管理。</p><br/>
                <div class="catenate">
                    <a href="<%=basePath%>learn.action">立即体验</a>
                </div>
            </div>
            <div class="chan4">
                <div id="Household1" class="HouseholdT">
                    <div class="HouseholdTTop">
                        <dl>
                             <img src="${pageContext.request.contextPath}/images/online_training.jpg" alt=""/>
                        </dl>
                     </div>
                </div>
        </div>
        </div>
        <div class="chan">
            <div class="chan1">
                <div id="Household2" class="HouseholdT">
                    <div class="HouseholdTTop">
                        <dl>
                                <img src="${pageContext.request.contextPath}/images/financial_consultation.jpg" alt=""/>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="chan2">
                <br/><br/><br/><br/><a class="wang">金融咨询</a><br/><br/>
                <p>范围：管控模式与组织设计、人力资源管理、财务管理</p><br/>
                <p>服务对象：商业银行、保险公司、证券公司与投资银行、基金与资产管理公司</p><br/>
                <p>优势领域：金融政策、金融市场进入策略、金融市场竞争战略</p>
                <div class="catenate">
                    <a href="<%=basePath%>photo/teacher.action?page=financial_consulting    ">立即体验</a>
                </div>
            </div>
        </div>
        <div class="chan">
            <div class="chan3">
                <br/><br/><br/><br/><a class="wang">培训企业入驻</a><br/><br/>
                <p>培训类型：以能力为主，以绩效为主，以岗位为主</p><br/>
                <p>组合：跨国连锁企业能力为主线+岗位为主线+课程为主线</p><br/>
                <div class="catenate">
                    <a href="<%=basePath%>enterprise_residence.action">立即体验</a>
                </div>
            </div>
            <div class="chan4">
                <div id="Household3" class="HouseholdT">
                    <div class="HouseholdTTop">
                        <dl>
                                <img src="${pageContext.request.contextPath}/images/training_admission.jpg" alt=""/>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
        <div class="chan">
            <div class="chan1">
                <div id="Household4" class="HouseholdT">
                    <div class="HouseholdTTop">
                        <dl>
                                <img src="${pageContext.request.contextPath}/images/feedback.jpg" alt=""/>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="chan2">
                <br/><br/><br/><br/><a class="wang">客户售后反馈</a><br/><br/>
                <p>网络课程全称：网络课程与网络资源开发</p><br/>
                <p>网络课程就是通过某种软件在网络上进行的远程课程。</p><br/>
                <p>开设机构:加州大学伯克利分校，麻省理工学院</p>
                <div class="catenate">
                    <a href="<%=basePath%>feedback.action">立即体验</a>
                </div>

            </div>
        </div>
    </div>
</div>
<!--底部-->
<div class="dibu">
    <p style="width:100%;height: 300px;background-image: url('${pageContext.request.contextPath}/images/index_f.png');background-size: 100% 300px;">
        <br/><br/><br/><br/><br/><a>开始使用数字化咨询平台吧</a>
        <div class="box">
            <a href="<%=basePath%>home_page.action">开始体验</a>
        </div>
    </p>
</div>
</body>
<script>
    function myselfinfo(){
        layer.open({
            type: 1,
            area: ['300px','200px'],
            fix: false, //不固定
            maxmin: true,
            shade:0.4,
            title: '查看信息',
            content: '<div>会员信息</div>'
        });
    }
</script>
</html>