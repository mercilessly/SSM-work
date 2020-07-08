<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/7/1
  Time: 下午9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Responsive Html5 Templates">


    <title>金融咨询</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>
</head>
<body>
<!--Top-->
<header class="main-header">

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
                <a href="<%=basePath%>register.jsp" style="color:white;">注册</a>
            </c:if>

        </div>
    </nav>

    <!-- Static Header -->

    <div class="header-text">
        <div class="col-md-12 text-center" >

        </div>
    </div><!-- /header-text -->

</header>
<!-- /Section: intro -->

<!-- /////////////////////////////////////////Content -->
<div id="page-content">

    <!-- ////////////Content Box 01 -->
    <section class="box-content box-1" id="nav-work">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 nopadding">
                    <div class="box-item">
                        <div class="icon"><h1>01</h1></div>
                        <h3>金融<em>研究</em></h3>
                        <p>客户将指定金融相关课题委托给汉唐集团进行研究，支付课题研究经费，汉唐集团在约定的时间里提交研究报告和结论 </p>
                    </div>
                </div>
                <div class="col-sm-3 nopadding">
                    <div class="box-item">
                        <div class="icon"><h1>02</h1></div>
                        <h3>财税<em>咨询</em></h3>
                        <p>我们为客户的企业并购融资交易提供从并购战略和咨询、融资到业务出售的一系列企业顾问服务。</p>
                    </div>
                </div>
                <div class="col-sm-3 nopadding">
                    <div class="box-item">
                        <div class="icon"><h1>03</h1></div>
                        <h3>股权激励 <em>咨询</em></h3>
                        <p>代企业的竞争，本质是人才的竞争，让人力资本能够分享公司发展成果是企业收入分配体系改革的方向。 </p>
                    </div>
                </div>
                <div class="col-sm-3 nopadding">
                    <div class="box-item">
                        <div class="icon"><h1>04</h1></div>
                        <h3>上市挂牌 <em>咨询</em></h3>
                        <p>站在企业角度，独立客观帮助规划上市挂牌进程，并贴身协助推进各项上市挂牌工作</p>
                    </div>
                </div><!-- end inner row -->
            </div>
        </div>
    </section>

    <!-- ////////////Content Box 02 -->
    <section class="box-content box-2" id="nav-about">
        <div class="container-fluid">
            <div class="row heading">
                <div class="col-lg-12">
                    <h2>项目案例</h2>
                    <div class="intro">OF project case CLASSES</div>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
                    <article class="home-post position-top">
                        <div class="entry-header">
                            <div class="entry-thumb">
                                <a class="portfolio-box zoom-effect" href="${pageContext.request.contextPath}/single.html">
                                    <img src="${pageContext.request.contextPath}/images/2-1.jpg" class="img-responsive" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="entry-content">
                            <h6 class="entry-title">
                                <a href="${pageContext.request.contextPath}/single.html" alt="">区域中小企业市场及授信政策调研项目</a>

                            </h6>
                            <p>由于经济环境、政策环境、信用环境等的差别，不同区域中开展中小企业业务的注意事项也不同，汉…</p>
                            <ul class="team-social list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </article>
                </div>
                <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
                    <article class="home-post position-bottom">
                        <div class="entry-header">
                            <div class="entry-thumb">
                                <a class="portfolio-box zoom-effect" href="${pageContext.request.contextPath}/single.html">
                                    <img src="${pageContext.request.contextPath}/images/2-2.jpg" class="img-responsive" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="entry-content">
                            <h6 class="entry-title">
                                <a href="${pageContext.request.contextPath}/single.html" alt="">某银行网点建设布局规划</a>

                            </h6>
                            <p>对北京地区区域经济环境和金融同业环境进行全面分析和研究，紧密结合地区房地产行业发展运行状…</p>
                            <ul class="team-social list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </article>
                </div>
                <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12 nopadding">
                    <article class="home-post position-top">
                        <div class="entry-header">
                            <div class="entry-thumb">
                                <a class="portfolio-box zoom-effect" href="single.html">
                                    <img src="${pageContext.request.contextPath}/images/2-3.jpg" class="img-responsive" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="entry-content">
                            <h6 class="entry-title">
                                <a href="${pageContext.request.contextPath}/single.html" alt="">某中小银行五年发展规划咨询</a>

                            </h6>
                            <p>为了进一步细化发展战略，落实经营方针，明确未来的发展路径，某中小银行委托汉唐咨询为其制定…</p>
                            <ul class="team-social list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <!-- ////////////Content Box 05 -->

    <!-- ////////////Content Box 07 -->
    <section class="box-content box-7 box-style-2">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="box-item">
                        <div class="box-item-header">
                            <p>So Yummy it will Melt Your Heart !</p>
                            <h3>Summertime <b>Discounts</b></h3>
                            <div class="deal"><span>25%</span> OFF</div>
                        </div>
                        <div class="box-item-content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et adipisicing elit</p>
                            <div class="signature">
                                <span>--- ChokoCake ---</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ////////////Content Box 04 -->
    <section class="box-content box-4" style="background: #F8F9F0">
        <div class="container">
            <div class="row heading">
                <div class="col-lg-12">

                    <div class="intro">领衔专家</div>
                    <hr>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${teacher.rows}" var="row">
                <div class="col-md-4">
                    <div class="box-item">
                        <img src="${pageContext.request.contextPath}/${row.photo_path}" class="img-responsive icon"/>
                            <h3>${row.name}</h3>
                        <p>${row.text}</p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>




</div>

<footer>


    <div class="bottom-footer">
        <div class="container">
            <div class="copyright text-center">
					<span>Copyright © 拉拉工作室  地址：甘肃省兰州市城关区北面滩400号
					联系电话：0931-888888</span>
            </div>
        </div>
    </div>
</footer>
<!-- Footer -->

<!-- JS -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>



</body>
</html>
