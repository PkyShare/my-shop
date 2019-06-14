<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-CN" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-CN" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<!--<![endif]-->
<html lang="zh-CN">
<head>
    <title>我的商城 | 后台登陆</title>
    <jsp:include page="includes/head.jsp"/>
    <link href="static/assets/pages/css/login-3.min.css" rel="stylesheet" type="text/css" />
</head>
<body class=" login">
    <!-- BEGIN LOGO -->
    <div class="logo">
        <a href="index.html">
            <img src="static/img/my-logo.png" alt="" /> </a>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form class="login-form" action="/login" method="post">
            <h3 class="form-title">我的商城后台登陆</h3>
            <div class="alert alert-block ${msg == null ? 'display-hide':msg.contains('错误')?'alert-danger':'alert-success'} fade in">
                <button type="button" class="close" data-dismiss="alert"></button>
                <span> ${msg} </span>
            </div>
            <div class="form-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="账号" name="username" value="${username}"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="密码" name="password" value="${password}"/>
                </div>
            </div>
            <div class="form-actions">
                <label class="rememberme mt-checkbox mt-checkbox-outline">
                    <input type="checkbox" name="remember" value="1" checked="checked"/> 记住账号
                    <span></span>
                </label>
                <button type="submit" class="btn green pull-right"> 登陆 </button>
            </div>
            <div class="forget-password">
                <h4>忘记密码 ?</h4>
                <p> 不是问题, 点击
                    <a href="javascript:;" id="forget-password"> 这里 </a>找回您的密码。
                </p>
            </div>
        </form>
        <!-- END LOGIN FORM -->
        <!-- BEGIN FORGOT PASSWORD FORM -->
        <form class="forget-form" action="index.html" method="post">
            <h3>忘记密码 ?</h3>
            <p> 输入您的邮箱地址来找回密码。 </p>
            <div class="form-group">
                <div class="input-icon">
                    <i class="fa fa-envelope"></i>
                    <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
            </div>
            <div class="form-actions">
                <button type="button" id="back-btn" class="btn grey-salsa btn-outline"> 返回 </button>
                <button type="submit" class="btn green pull-right"> 提交 </button>
            </div>
        </form>
        <!-- END FORGOT PASSWORD FORM -->
    </div>
    <!-- END LOGIN -->
    <jsp:include page="includes/foot.jsp"/>
</body>

</html>