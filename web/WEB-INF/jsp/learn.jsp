<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/6/30
  Time: 下午8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags -->
    <title>网课、线上</title>
    <meta name="keywords" content=""/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>

    <!-- stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
    <link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lightbox.css">

    <!-- scripts -->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <%--<script src="${pageContext.request.contextPath}/js/numscroller-1.0.js"></script>--%>
    <!-- google fonts -->
    <%--<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">--%>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>--%>
</head>
<body>
<!--主导航栏开始-->
<header class="sub-header" style="margin-top: 60px;">

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
<!--主导航结束-->

<!--网络培训导航栏开始-->
<div class="agile-banner w3lshome" id="home">
    <div class="navbar navbar-default navbar-fixed-top w3ls-navbar">
        <div class="container brand1">

            <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- navbar collapse -->
            <div class="collapse navbar-collapse navHeaderCollapse">
                <ul class="nav navbar-nav navbar-right w3ls-nav">
                    <li><a class="scroll" href="#home">精选推荐</a></li>
                    <li><a class="scroll" href="#about">编程语言</a></li>
                    <li><a class="scroll" href="#team">名师简介</a></li>
                    <li><a class="scroll" href="#service">职业技能</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">学习阶段 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#gallery">高中</a></li>
                            <li><a href="#gallery">初中</a></li>
                            <li><a href="#gallery">小学</a></li>
                        </ul>
                    </li>
                    <li><a class="scroll" href="#stats">stats</a></li>
                    <li><a class="scroll" href="#blog">文艺修养</a></li>

                </ul>
            </div>
        </div>
    </div>
    <!-- navbar end-->
    <div class="w3-banner-heading"
         style="background: url('${pageContext.request.contextPath}/images/1-banner1.jpg')no-repeat;">
        <h1>Welcome To The World Unique Education Place.</h1>
        <P>Beyond Excellence Skills</p>
    </div>
</div><!-- banner ends -->

<!-- About Section -->
<div class="w3ls-about" id="about">
    <div class="container w3about">
        <div class="about-txt">
            <h2>编程语言 </h2>
            <br>
            <p>It is a long established fact that a reader will be distracted by the readable content of a page when
                looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution
                of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
            <br>
            <ul class="agile-list">

                <li><span class="arrow">&RBarr;</span><a href="#about"> Java架构师系统提升课程</a></li>
                <li><span class="arrow">&RBarr;</span><a href="#about"> PHP7从进阶到架构</a></li>
                <li><span class="arrow">&RBarr;</span><a href="#about"> C#/.net从开发到架构</a></li>
                <li><span class="arrow">&RBarr;</span><a href="#about"> 零基础C</a></li>
                <!--<li><span class="arrow">&RBarr;</span><a href="#about"> Complete Lab Facility</a></li>
                    <li><span class="arrow">&RBarr;</span><a href="#about"> Best Communication Skills</a></li> -->

            </ul>
        </div>
        <div class="about-img">
            <img src="${pageContext.request.contextPath}/images/banner3.jpg" class="img-responsive" alt="about image"/>
        </div>
    </div>
</div>
<!-- //About Section -->
<!-- team-inner-page -->
<div class="team" id="team">
    <div class="container">
        <h3 class="center">Our Team</h3>
        <div class="w3l_team_grids">
            <div class="col-md-3 col-sm-6 col-xs-6 w3l_team_grid">
                <div class="view view-second">
                    <img src="${pageContext.request.contextPath}/images/t6.jpg" alt=" " class="img-responsive"/>
                    <div class="mask"></div>
                    <div class="content">
                        <div class="w3l_social_icons w3l_social_icons1">
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="google_plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="pinterest"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <h4>段琛</h4>
                <p>Lorem Ipsum</p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 w3l_team_grid">
                <div class="view view-second">
                    <img src="${pageContext.request.contextPath}/images/t4.jpg" alt=" " class="img-responsive"/>
                    <div class="mask"></div>
                    <div class="content">
                        <div class="w3l_social_icons w3l_social_icons1">
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="google_plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="pinterest"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <h4>霍新运</h4>
                <p>Lorem Ipsum</p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 w3l_team_grid">
                <div class="view view-second">
                    <img src="${pageContext.request.contextPath}/images/t2.jpg" alt=" " class="img-responsive"/>
                    <div class="mask"></div>
                    <div class="content">
                        <div class="w3l_social_icons w3l_social_icons1">
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="google_plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="pinterest"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <h4>王帆</h4>
                <p>Lorem Ipsum</p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 w3l_team_grid">
                <div class="view view-second">
                    <img src="${pageContext.request.contextPath}/images/t5.jpg" alt=" " class="img-responsive"/>
                    <div class="mask"></div>
                    <div class="content">
                        <div class="w3l_social_icons w3l_social_icons1">
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="google_plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                </li>
                                <li><a href="#" class="pinterest"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <h4>李俊杰</h4>
                <p>Lorem Ipsum</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //team-inner-page -->

<!-- Our Services -->
<div class="w3-services" id="service">
    <div class="container service">
        <h3 class="center"> 职业技能</h3>
        <div class="col-md-6 col-sm-6 service1">
            <div class="col-md-8 col-sm-10 txt-align">
                <h4>电脑常识</h4>
                <p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the
                    industry's standard text ever.</p>
            </div>
            <div class="col-md-4 col-sm-2">
                <span class="service-icon fa fa-laptop fa-4x" aria-hidden="true"></span>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 col-sm-6 service2">
            <div class="col-md-4 col-sm-2">
                <span class="service-icon fa fa-book fa-4x" aria-hidden="true"></span>
            </div>
            <div class="col-md-8 col-sm-10 txt-align1">
                <h4>旅游攻略</h4>
                <p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the
                    industry's standard text ever.</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 col-sm-6 service1">
            <div class="col-md-8 col-sm-10 txt-align">
                <h4>运动指南</h4>
                <p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the
                    industry's standard text ever.</p>
            </div>

            <div class="col-md-4 col-sm-2">
                <span class="service-icon fa fa-bicycle fa-4x" aria-hidden="true"></span>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 col-sm-6 service2">
            <div class="col-md-4 col-sm-2">
                <span class="service-icon fa fa-graduation-cap fa-4x" aria-hidden="true"></span>
            </div>


            <div class="col-md-8 col-sm-10 txt-align1">
                <h4>面试技巧</h4>
                <p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the
                    industry's standard text ever.</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- Our Services -->
<!-- our stats -->
<div class="agile-stats" id="stats">
    <h3 class="center">Our Stats</h3>
    <div class="container">
        <div class="stats1">
            <div class="w3-stats">
                <span class="fa fa-user-o" aria-hidden="true"></span>
                <h4><span class='numscroller' data-min='1' data-max='5486' data-delay='3' data-increment='3'>5486</span>
                </h4>
                <p>students</p>
            </div>
            <div class="w3-stats">
                <span class="fa fa-thumbs-o-up" aria-hidden="true"></span>
                <h4><span class='numscroller' data-min='1' data-max='2451' data-delay='5' data-increment='3'>2451</span>
                </h4>
                <p>reviews</p>
            </div>
        </div>
        <div class="stats2">
            <div class="w3-stats">
                <span class="fa fa-id-badge" aria-hidden="true"></span>
                <h4><span class='numscroller' data-min='1' data-max='200' data-delay='5' data-increment='1'>200</span>
                </h4>
                <p>teachers</p>
            </div>
            <div class="w3-stats">
                <span class="fa fa-bookmark-o" aria-hidden="true"></span>
                <h4><span class='numscroller' data-min='1' data-max='2589' data-delay='5' data-increment='3'>2589</span>
                </h4>
                <p>records</p>
            </div>
        </div>
    </div>
</div>
<!-- //our stats -->
<!-- gallery -->
<div class="gallery" id="gallery">
    <h3 class="center">学习阶段</h3>

            <div class="container">
                <div class="gallery-grids">
                    <c:forEach items="${photos.rows}" var="row">
                        <c:if test="${row.type=='学习阶段'}">
                            <div class="col-md-4 col-sm-4 gallery-grid">
                                <div class="grid">
                                    <figure class="effect-apollo">
                                        <a class="example-image-link" href="${pageContext.request.contextPath}/${row.photo_path}"
                                           data-lightbox="example-set"
                                           data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut sem ac lectus mattis sagittis. Donec pulvinar quam sit amet est vestibulum volutpat. Phasellus sed nibh odio. Phasellus posuere at purus sit amet porttitor. Cras euismod egestas enim eget molestie. Aenean ornare condimentum odio, in lacinia felis finibus non. Nam faucibus libero et lectus finibus, sed porttitor velit pellentesque.">
                                            <img src="${pageContext.request.contextPath}/${row.photo_path}" alt=""/>
                                            <figcaption>
                                                <p>${row.name}</p>
                                            </figcaption>
                                        </a>
                                    </figure>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                    <div class="clearfix"></div>
                    <script src="${pageContext.request.contextPath}/js/lightbox-plus-jquery.min.js"></script>
                </div>
            </div>

</div>
<!-- //gallery -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/">自助建站</a></div>

<!-- our blog -->
<div class="wthree-blog" id="blog">
    <h3 class="center">文艺修养</h3>
    <div class="blog1">
        <c:forEach items="${photos.rows}" var="row">
            <c:if test="${row.type=='文艺修养'}">
                <div class="blog-box">
                    <a href="#" data-toggle="modal" data-target="#myModal1"><img
                            src="${pageContext.request.contextPath}/${row.photo_path}" alt="blog image" class="img-responsive"/></a>
                    <div class="blog-txt">
                        <h3><a href="#" data-toggle="modal" data-target="#myModal1">${row.name} </a></h3>
                        <p>${row.text}</p>
                        <!-- Trigger the modal with a button -->
                        <a href="#" data-toggle="modal" data-target="#myModal1">了解更多 &raquo; </a>
                        <!-- Modal -->

                        <!-- bootstrap-pop-up -->
                        <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        ${row.name}
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                                aria-hidden="true">&times;</span></button>
                                    </div>
                                    <section>
                                        <div class="modal-body">
                                            <img src="${pageContext.request.contextPath}/images/b1.png" alt=" "
                                                 class="img-responsive"/>
                                            <p>${row.text}</p>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>
                        <!-- //bootstrap-pop-up -->

                    </div>
                </div>
            </c:if>
        </c:forEach>

</div>
<!-- our blog -->
<!-- Map -->
<div class="w3ls-map">
    <div class="map1">
        <iframe src="" frameborder="0" allowfullscreen></iframe>
    </div>
</div>
<!-- //Map -->
<!-- cotact form -->

<!-- //cotact form -->
<!-- Contact Section -->
<div class="wrap-footer" style="background-color:#222324;">
    <div class="bottom-footer" style="height:250px;">
        <div class="container">
            <div class="copyright text-center">
                </br></br><span>Copyright © 拉拉工作室 </span></br><span>地址：甘肃省兰州市城关区北面滩400号 </span>
                </br><span>联系电话：0931-888888</span>
            </div>
        </div>
    </div>


    <!-- //Contact Section -->
    <!-- //footer -->
    <!-- copyright -->

</div>
<!-- //copyright -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
<!-- here stars scrolling icon -->
<script type="text/javascript">
    /*$(function () {
        $.ajax({
            type: "get",
            url: "<%=basePath%>photo/getPhotoByType2.action",
            dataType: "json",
            data:{"type":'文艺修养'},
            contentType: "application/json;charset=UTF-8",
            success: function (data) {

            }
        });
    });*/
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //here ends scrolling icon -->
<!-- scrolling script -->
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>

<!-- //scrolling script -->
</body>
</html>
