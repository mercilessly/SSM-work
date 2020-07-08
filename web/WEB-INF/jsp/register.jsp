<%--
  Created by IntelliJ IDEA.
  User: wlc
  Date: 2019/7/1
  Time: 下午9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>注册页面</title>
    <style>
        .pg_header{
            position: fixed;
            height: 48px;
            top: 0;
            left: 0;
            right: 0;
            background-color: #222324;
            line-height: 48px;
        }
        .pg_header .logo{
            margin: 0 auto;
            float: left;
            width: 200px;
            text-align: center;
            line-height: 48px;
            font-size: 28px;
            color: white;
        }
        .pg_dl{
            left: 400px;
            display: inline-block;
            padding: 0 40px;
            color: white;
        }
        .pg_header .pg_dl:hover{
            background-color: #2459fb;
            cursor: pointer;
        }
        .left{
            margin-top: 20px;
            width: 400px;
            display: inline-block;
            float: left;
        }
        .pg_body{
            margin-top: 50px;
            font-size: 18px;
            display: inline-block;
            width: 200px;
        }
        .pg_body .menu{
            width: 800px;
            padding: 15px;
            float: left;
            font-weight: bold;
        }
        input[type="text"]{
            width: 200px;
            height: 25px;
            border-radius: 6px;
        }
        input[type="password"]{
            width: 200px;
            height: 25px;
            border-radius: 6px;
        }
        input[type="button"]{
            background-color: #555555;
            border: none;
            color: white;
            padding: 12px 29px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]{
            background-color: #555555;
            border: none;
            color: white;
            padding: 12px 29px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        .kong{
            margin-top: -54px;
            margin-left: 200px;
            float:left;
            padding: 15px;
        }
        .can{
            width: 1220px;
            height: 40px;
            line-height: 40px;
            margin: 0 auto;
            text-align: center;
            display: inline-block;
        }
        .tian{
            color: red;
            float: right;
            font-size: 12px;
            margin-right: -120px;
            margin-top: -25px;
        }
    </style>
</head>
<body id="i88" style="margin: 0">
<div class = "pg_header">
    <a class = "logo">LOGO</a>
    <a class="pg_dl" id="i77">注册</a>
</div>
<form name="tijiao" id="new_member_form" onsubmit="return check()" action="<%=basePath%>member/register.action">
    <div class="left"></div>
    <div class="pg_body">
        <div class="menu">用户名:</div>
        <div class="kong">
            <input id="text1" type="text" name="member_code" placeholder="请输入用户名" onblur="check()"><span id="div1" class="tian" style="margin-top: 4px">*(为必填)</span>
        </div>
        <div class="menu">真实姓名:</div>
        <div class="kong">
            <input id="i2" type="text" name="member_name">
        </div>
        <div class="menu">性别:</div>
        <div class="kong" style="width:200px;">
            男<input type="radio" name="member_gender" value="男">
            女 <input type="radio" name="member_gender" value="女">
        </div>
        <div class="menu">密码:</div>
        <div class="kong">
            <input id="text2" type="password" name="member_password" placeholder="请输入密码" onblur="check()">
            <span id="div2" class="tian" style="margin-top: -25px">*(为必填)</span>
        </div>
        <div class="menu">确认密码:</div>
        <div class="kong">
            <input id="text3" type="password" placeholder="确认密码" onblur="check()">
            <span id="div3" class="tian">*(为必填)</span>
        </div>
        <div class="menu">电话号码:</div>
        <div class="kong">
            <input id="i5" type="text" name="member_phone">
        </div>
        <div class="menu">邮箱地址:</div>
        <div class="kong">
            <input id="text4" type="text" name="member_email" onblur="check()">
            <span id="div4" class="tian">*(为必填)</span>
        </div>
        <div class="menu">个人地址:</div>
        <div class="kong">
            <input  type="text" name="member_address">
        </div>
    </div>
    <div class="can">
        <button type="submit" id="i111" onclick="registerMember()">注  册</button>
        <%--<input type="submit" value="注  册"  onclick="registerMember()">--%>
        <p style="width: 200px;display: inline-block;"></p>
        <button type="submit" id="i222">取  消</button>
        <%--<input id="i222" type="button" value="取  消">--%>

    </div>
</form>
<script type="text/javascript">
    //刷新or取消
    document.getElementById('i77').onclick = function(){
        location.reload();
    }
    document.getElementById('i222').onclick = function(){
        location.reload();
    }

    //用户名验证
    function checkname(){
        var div = document.getElementById("div1");
        div.innerHTML = "";
        var name1 = document.tijiao.text1.value;
        if (name1 == "") {
            div.innerHTML = "用户名不能为空！";
            document.tijiao.text1.focus();
            return false;
        }
        if (name1.length < 4 || name1.length > 16) {
            div.innerHTML = "长度4-16个字符";
            document.tijiao.text1.select();
            return false;
        }
        var charname1 = name1.toLowerCase();
        for (var i = 0; i < name1.length; i++) {
            var charname = charname1.charAt(i);
            if (!(charname >= 0 && charname <= 9) && (!(charname >= 'a' && charname <= 'z')) && (charname != '_')) {
                div.innerHTML = "用户名包含非法字符";
                document.form1.text1.select();
                return false;
            }
        }
        return true;
    }

    //密码验证
    function checkpassword(){
        var div = document.getElementById("div2");
        div.innerHTML = "";
        var password = document.tijiao.text2.value;
        if (password == "") {
            div.innerHTML = "密码不能为空";
            document.tijao.text2.focus();
            return false;
        }
        if (password.length < 4 || password.length > 16) {
            div.innerHTML = "密码长度为4-16位";
            document.tijiao.text2.select();
            return false;
        }
        return true;
    }

    function checkrepassword(){
        var div = document.getElementById("div3");
        div.innerHTML = "";
        var password = document.tijiao.text2.value;
        var repass = document.tijiao.text3.value;
        if (repass == "") {
            div.innerHTML = "密码不能为空";
            document.tijiao.text3.focus();
            return false;
        }
        if (password != repass) {
            div.innerHTML = "密码不一致";
            document.tijiao.text3.select();
            return false;
        }
        return true;
    }
    //邮箱验证
    function checkEmail(){
        var div = document.getElementById("div4");
        div.innerHTML = "";
        var email = document.tijiao.text5.value;
        var sw = email.indexOf("@", 0);
        var sw1 = email.indexOf(".", 0);
        var tt = sw1 - sw;
        if (email.length == 0) {
            div.innerHTML = "邮箱不能为空";
            document.tijiao.text5.focus();
            return false;
        }

        if (email.indexOf("@", 0) == -1) {
            div.innerHTML = "必须包含@符号";
            document.tijiao.text5.select();
            return false;
        }

        if (email.indexOf(".", 0) == -1) {
            div.innerHTML = "必须包含.符号";
            document.tijiao.text5.select();
            return false;
        }

        if (tt == 1) {
            div.innerHTML = "@和.不能一起";
            document.tijiao.text5.select();
            return false;
        }

        if (sw > sw1) {
            div.innerHTML  = "@符号必须在.之前";
            document.tijiao.text5.select();
            return false;
        }
        else {
            return true;
        }
        return ture;
    }

    function check(){
        if (checkname() && checkpassword() && checkrepassword() && checkEmail()) {
            return true;
        }
        else {
            return false;
        }
    }
</script>
<script>
    // 注册客户
    function registerMember() {
        /*$.post("<%=basePath%>member/register.action",
            $("#new_member_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("注册成功！");
                    window.location.reload();
                } else {
                    alert("注册失败！");
                    window.location.reload();
                }
            });*/
        /*$.ajax({
            url: "<%=basePath%>member/register.action",
            type: "POST",
            async:true,
            data:$("#new_member_form").serialize(),
            success: function (data) {
                alert("注册成功！");
                window.location.reload();
            },
            error: function (data) {
                alert("注册失败！");
                window.location.reload();
            }
        });*/
    }
</script>
</body>
</html>