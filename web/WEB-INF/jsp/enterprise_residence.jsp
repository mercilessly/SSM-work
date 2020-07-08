<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/7/1
  Time: 下午9:31
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


    <title>企业入驻培训</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style3.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>


    <![endif]-->
    <link href="${pageContext.request.contextPath}/css/bootstrap4.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/css/style4.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>

    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Study Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--Google Fonts-->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smoth-scrolling -->
    <script src="${pageContext.request.contextPath}/js/menu_jquery.js"></script>
    <!--script-->
    <script src="${pageContext.request.contextPath}/js/modernizr.custom.97074.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.chocolat.js"></script>
    <!--light-box-files -->
    <script type="text/javascript" charset="utf-8">
        $(function() {
            $('.gallery a').Chocolat();
        });
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.hoverdir.js"></script>


</head>
<body>
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
                        <a href="<%=basePath%>photo/teacher.action?page=financial_consulting">金融咨询
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

</header>
<!-- /Section: intro -->

<!-- /////////////////////////////////////////Content -->
<div id="page-content">

    <!---------------Breadcrumb------------------>
    <ul class="breadcrumb container">
        主页
        <li><a href=""></a></li>
        <li>培训企业入驻</li>
    </ul>

    <div class="gallery">
        <div class="container">
            <div class="gallery-top heading">
                <h2>培训企业</h2>
                <p>精品中的精品</p>
            </div>
            <section>
                <ul id="da-thumbs" class="da-thumbs">
                    <c:forEach items="${resources.rows}" var="row">
                        <li>
                            <%--<a href="${pageContext.request.contextPath}/${row.photo_path}" rel="title" class="b-link-stripe b-animate-go  thickbox">--%>
                                <img src="${pageContext.request.contextPath}/${row.photo_path}" alt="" class="img-responsive">
                                <div>
                                    <h5>${row.name}</h5>
                                    <span>${row.text}</span>
                                </div>
                            <%--</a>--%>
                        </li>
                    </c:forEach>
                    <div class="clearfix"> </div>
                </ul>
            </section>

            <script type="text/javascript">
                $(function() {

                    $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

                });
            </script>
        </div>
    </div>

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