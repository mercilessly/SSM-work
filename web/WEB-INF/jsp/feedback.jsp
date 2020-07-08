<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/7/1
  Time: 下午9:36
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


    <title>客户售后反馈</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap3.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style3.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/H-ui.admin.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer2.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.page.js"></script>--%>
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
        text-align:center;font-size:20px;" class="dropdown">
            <c:if test="${USER_SESSION.member_name!=null}">
                <button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
                        data-toggle="dropdown">
                    帐号:${USER_SESSION.member_name}
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" href="#">个人信息</a>
                    </li>
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath }/logout.action">退出</a>
                    </li>
                    </li>
                </ul>
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
        <li><a href="index.html">主页</a></li>
        <li><a href="${pageContext.request.contextPath}/single.html">客户售后反馈</a></li>
    </ul>

    <div class="box-content">
        <div class="container">
            <!-----------------Content-------------------->
            <article class="single-post">
                <div class="wrap-post"><!--Start Box-->
                    <div class="entry-header text-center">
                        <h1 class="entry-title">产品质量反馈流程</h1>
                        <span class="entry-meta">
								<ul class="list-inline link">
									<li> <a href="#">xx网站</a></li>
									<li><a href="#">2019年</a></li>
									<li><a href="#">3月26日</a></li>
								</ul>
							</span>
                    </div>
                    <div class="post-thumbnail-wrap">
                        <div class="portfolio-box">
                            <img src="${pageContext.request.contextPath}/images/single.jpg" class="img-responsive" alt="">
                        </div>
                    </div>
                    <div class="entry-content">
							<span class="tags-links">
								<a href="#" rel="tag">回到顶部</a>
								<a href="#" rel="tag">售后反馈步骤</a>
								<a href="#" rel="tag">意见表</a>
								<a href="#" rel="tag">关于我们</a>
							</span>

                        <p>电话热线服务（免费）	</p>
                        <p>全年365天、每周7x24小时400电话服务（400-099-6608）及公司电话热线（010-58614775）服务支持。 </p>
                        <p>E-MAIL支持服务（免费）						  </p>
                        <p>全年365天、每周7x24小时E-mail服务支持。
                            E-mail：service@safenext.com</p>
                        <h2>步骤 1</h2>
                        <p>填写意见表并发送</p>
                        <h2>步骤 2</h2>
                        <p>客服与您邮箱联系并给出具体方案</p>
                        <h2>步骤 3</h2>
                        <p>具体为您实施方案</p>
                        <p>我们尊重顾客并且为客户着想，提出三个宗旨</p>
                        <div class="note">
                            <ol>
                                <li>服务于顾客</li>
                                <li>满意于顾客</li>
                                <li>尊重于顾客</li>
                            </ol>
                            <div class="clear"></div>
                        </div>
                        <p>  售后服务工作的宗旨，在售后服务工作中我们不断总结经验，不断提高服务质量，不断加强工作力度，逐步形成一套优质、完整的售后服务体系，解决了用户的后顾之优，提高了产品质量的可信度。我们的服务触及全国每一个角落，在全国任何地方的用户都能得到周到细致的服务。　</p>
                        <p>　没有最好，只有更好。为了更好的服务于客户，我们秉承“稳健、进取、创新、超越”的文化理念，积极抓住发展机遇，在稳健中进取，在进取中创新，在创新中超越。用卓越的智慧积累卓越的高度，不断注入更现代、更时尚、更和谐、国际化的元素，塑造中国企业新形象！</p>
                    </div>
                </div>
            </article>
        </div>
        <!-----------------Comments-are-------------------->
        <div class="comments-are">
            <div class="container">
                <div class="row">
                    <div id="comment">
                        <h3>反馈意见表 </h3>
                        <span>留下您珍贵的意见 </span>
                        <form name="formcomment" id="sendFeedBack_form" action="<%--<%=basePath%>feedBack/sendFeedBack.action--%>">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" name="name" id="name" placeholder="您的姓名" required />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control input-lg" name="email" id="email" placeholder="您的邮箱（通过邮箱我们会提交反馈进度）" required />
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control input-lg" name="phone" id="phone" placeholder="您的电活号码" required />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea name="text" id="message" class="form-control" rows="4" cols="25" required placeholder="您的意见和建议"></textarea>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-skin btn-sm" name="submitcomment" onclick="sendFeedBack()">发送</button>
                        </form>
                    </div>
                </div>
            </div>
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
<script>
<%--    提交反馈--%>
    function sendFeedBack() {
        /*$.post("<%=basePath%>feedBack/sendFeedBack.action",
            $("#sendFeedBack_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("客户创建成功！");
                    window.location.reload();
                } else {
                    alert("客户创建失败！");
                    window.location.reload();
                }
            });*/
        $.ajax({
            url: "<%=basePath%>feedBack/sendFeedBack.action",
            type: "POST",
            async: false,    //同步请求
            data: $("#sendFeedBack_form").serialize(),
            success: function(data){
                alert("反馈提交成功！");
                window.location.href="feedback.action";
            },
            error: function (data) {
                alert("反馈提交失败！");
                window.location.reload();
            }
        });
    }
</script>
</body>
</html>