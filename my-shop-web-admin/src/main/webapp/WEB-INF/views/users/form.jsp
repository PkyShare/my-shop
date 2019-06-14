<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-cn" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-cn" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh-cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>我的商城 | 用户列表</title>
    <jsp:include page="../includes/head.jsp"/>
</head>
<!-- END HEAD -->
</html>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
<!-- BEGIN HEADER -->
    <jsp:include page="../includes/header.jsp"/>
    <!-- END HEADER -->
    <!-- BEGIN HEADER & CONTENT DIVIDER -->
    <div class="clearfix"> </div>
    <!-- END HEADER & CONTENT DIVIDER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <jsp:include page="../includes/profile_users_menu.jsp"/>
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <!-- BEGIN CONTENT BODY -->
            <div class="page-content">
                <!-- BEGIN PAGE HEADER-->
                <h1 class="page-title"> 用户管理
                    <small> </small>
                </h1>
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box green">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-globe"></i>${tbUser.id == null?'新增':'修改'}用户 </div>
                                <div class="tools"> </div>
                            </div>
                            <div class="portlet-body">
                                <!-- BEGIN FORM-->
                                <form action="/users/save" id="inputForm" class="form-horizontal" method="post">
                                    <div class="box-body">
                                        <div class="alert alert-block ${res == null ? 'display-hide':'alert-danger'} fade in">
                                            <button type="button" class="close" data-dismiss="alert"></button>
                                            ${res}
                                        </div>
                                        <input type="hidden" name="id" value="${tbUser.id}">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">姓名
                                            </label>
                                            <div class="col-md-5">
                                                <div class="input-icon ">
                                                    <i class="fa fa-user"></i>
                                                    <input type="text" class="form-control required " name="username" value="${tbUser.username}" placeholder="username">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">密码
                                            </label>
                                            <div class="col-md-5">
                                                <div class="input-icon ">
                                                    <i class="fa fa-lock"></i>
                                                    <input type="password" class="form-control required " name="password" value="${tbUser.password}" placeholder="password">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">手机
                                            </label>
                                            <div class="col-md-5">
                                                <div class="input-icon">
                                                    <i class="fa fa-phone"></i>
                                                    <input type="text" class="form-control required mobile" name="phone" value="${tbUser.phone}" placeholder="phone">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">邮箱
                                            </label>
                                            <div class="col-md-5">
                                                <div class="input-icon">
                                                    <i class="fa fa-envelope"></i>
                                                    <input type="text" class="form-control required email" name="email" value="${tbUser.email}" placeholder="Email Address">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-offset-3 col-md-9">
                                                <button onClick="history.go(-1);" type="button" class="btn grey-salsa btn-outline">返回</button>
                                                <button type="submit" class="btn green">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!-- END FORM-->
                            </div>

                        <!-- END EXAMPLE TABLE PORTLET-->
                    </div>
                </div>

            </div>
            <!-- END CONTENT BODY -->
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOT -->
    <jsp:include page="../includes/foot.jsp"/>
    <!-- END FOOT -->
</body>

