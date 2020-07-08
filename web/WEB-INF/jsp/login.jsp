<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/style.css"
	   type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/login.css"
	   type=text/css rel=stylesheet>
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var membercode = $("#membercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>
<body style="width:100%;height: 837px;background-image: url('${pageContext.request.contextPath}/images/loginbg.png');background-size: 100% 837px;">
	<div class="box">
	<div class="box2">
		<p class="zi">用数字化资讯平台培养人才</p><br/><br/>
		<p class="zi1">定制化人才解决方案，全渠道连接客户触点，建立忠诚度计划，数据驱动客户管理</p>
	</div>
		<table border="0"  cellspacing="0" cellpadding="0" id="table1"style="margin-left:1100px;margin-top:-100px;border-radius: 5px;">
	<tr>
		<td height="93"></td>
		<td></td>
	</tr>
	<tr>
   <td class="login_msg" width="400" align="center" >
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: auto; margin: 250px auto;border-radius: 8px;height:200px;">
		  <legend style="color:white;font-size:30px;">
		     <p style="font-size:30px" face="宋体;">
		         数字化咨询平台
		     </p>
		  </legend> 
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
		<form action="${pageContext.request.contextPath }/login.action"
			                       method="post" onsubmit="return check()">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /><br/> 
        <a style="color:white;text-decoration:none;font-size:19px;"> 账&nbsp;号</a>&nbsp;&nbsp;
        <input id="membercode" type="text" name="membercode" style="border-radius: 8px;"/>
          <br /><br />
         <a style="color:white;text-decoration:none;font-size:19px;"> 密&nbsp;码</a>&nbsp;&nbsp;
         <input id="password" type="password" name="password" style="border-radius: 8px;"/>
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <center><input type="submit" value="登录"style="border-radius: 8px;" /></center>
		 </form>
	 </fieldset>
	</td>
	</tr>
</table>

	</div>
</body>
</html>
