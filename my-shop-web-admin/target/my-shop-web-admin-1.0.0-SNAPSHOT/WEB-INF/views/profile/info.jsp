<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>User Profile</title>

    <jsp:include page="../includes/head.jsp"/>
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="/static/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="/static/assets/pages/css/profile.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->

</head>
<!-- END HEAD -->
<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-sidebar-closed">
<jsp:include page="../includes/header.jsp"/>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <jsp:include page="../includes/profile_users_menu.jsp"/>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-3">
                    <h1 class="page-title"> 账户设置
                        <small></small>
                    </h1>
                </div>
                <div class="col-md-9">

                </div>
            </div>
            <!-- END PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PROFILE SIDEBAR -->
                    <div class="profile-sidebar">
                        <!-- BEGIN PORTLET MAIN -->
                        <div class="portlet light profile-sidebar-portlet ">
                            <!-- SIDEBAR USERPIC -->
                            <div class="profile-userpic">
                                <img src="/static/assets/pages/media/profile/profile_user.jpg" class="img-responsive" alt=""> </div>
                            <!-- END SIDEBAR USERPIC -->
                            <!-- SIDEBAR USER TITLE -->
                            <div class="profile-usertitle">
                                <div class="profile-usertitle-name"> ${sessionScope.tbUser.username} </div>
                                <div class="profile-usertitle-job"> ${sessionScope.tbUser.email} </div>
                            </div>
                            <!-- END SIDEBAR USER TITLE -->
                            <!-- BEGIN MENU -->
                            <div class="profile-usermenu">
                                <ul class="nav">
                                    <li class="">
                                        <a href="/profile/profile">
                                            <i class="icon-user"></i> 描述 </a>
                                    </li>
                                    <li class="active">
                                        <a href="/profile/info">
                                            <i class="icon-settings"></i> 账户设置 </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- END MENU -->
                        </div>
                        <!-- END PORTLET MAIN -->
                    </div>
                    <!-- END PROFILE SIDEBAR -->
                    <!-- BEGIN PROFILE CONTENT -->
                    <div class="profile-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light ">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption caption-md">
                                            <i class="icon-globe theme-font hide"></i>
                                            <span class="caption-subject font-blue-madison bold uppercase">简介</span>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab_1_1" data-toggle="tab">修改信息</a>
                                            </li>
                                            <li>
                                                <a href="#tab_1_2" data-toggle="tab">更换头像</a>
                                            </li>
                                            <li>
                                                <a href="#tab_1_3" data-toggle="tab">修改密码</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="alert alert-block ${res == null ? 'display-hide':res.contains('成功')?'alert-success':'alert-danger'} fade in">
                                            <button type="button" class="close" data-dismiss="alert"></button>
                                            ${res}
                                        </div>
                                        <div class="tab-content">
                                            <!-- PERSONAL INFO TAB -->
                                            <div class="tab-pane active" id="tab_1_1">
                                                <form action="/profile/changeInfo" id="inputForm" class="form-horizontal" method="post">
                                                    <input type="hidden" name="id" value="${sessionScope.tbUser.id}">
                                                    <div class="box-body">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">姓名<span>&nbsp :</span>
                                                            </label>
                                                            <div class="col-md-10">
                                                                <div class="input-icon ">
                                                                    <i class="fa fa-user"></i>
                                                                    <input type="text" name="username" placeholder="${sessionScope.tbUser.username}" class="form-control required" value="${sessionScope.tbUser.username}"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">手机<span>&nbsp :</span>
                                                            </label>
                                                            <div class="col-md-10">
                                                                <div class="input-icon">
                                                                    <i class="fa fa-phone"></i>
                                                                    <input type="text" class="form-control required mobile" name="phone" placeholder="${sessionScope.tbUser.phone}" value="${sessionScope.tbUser.phone}" >
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">邮箱<span>&nbsp :</span>
                                                            </label>
                                                            <div class="col-md-10">
                                                                <div class="input-icon">
                                                                    <i class="fa fa-envelope"></i>
                                                                    <input type="text" name="email" placeholder="${sessionScope.tbUser.email}" class="form-control required email" value="${sessionScope.tbUser.email}"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-actions">
                                                        <div class="row">
                                                            <div class="col-md-offset-2 col-md-10">
                                                                <button onClick="history.go(-1);" type="button" class="btn grey-salsa btn-outline">返回</button>
                                                                <button type="submit" class="btn green">提交</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <!-- END PERSONAL INFO TAB -->
                                            <!-- CHANGE AVATAR TAB -->
                                            <div class="tab-pane" id="tab_1_2">
                                                <p> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                                                    eiusmod. </p>
                                                <form action="#" role="form">
                                                    <div class="form-group">
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" /> </div>
                                                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                            <div>
                                                                <span class="btn default btn-file">
                                                                    <span class="fileinput-new"> Select image </span>
                                                                    <span class="fileinput-exists"> Change </span>
                                                                    <input type="file" name="...">
                                                                </span>
                                                                <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                            </div>
                                                        </div>
                                                        <div class="clearfix margin-top-10">
                                                            <span class="label label-danger">NOTE! </span>
                                                            <span>Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only </span>
                                                        </div>
                                                    </div>
                                                    <div class="margin-top-10">
                                                        <a href="javascript:;" class="btn green"> Submit </a>
                                                        <a href="javascript:;" class="btn default"> Cancel </a>
                                                    </div>
                                                </form>
                                            </div>
                                            <!-- END CHANGE AVATAR TAB -->
                                            <!-- CHANGE PASSWORD TAB -->
                                            <div class="tab-pane" id="tab_1_3">
                                                <form id="passwordForm" action="/profile/change/pwd" class="form-horizontal" method="post">
                                                    <input type="hidden" name="id" value="${sessionScope.tbUser.id}">
                                                    <div class="box-body">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">旧密码<span>&nbsp :</span>
                                                            </label>
                                                            <div class="col-md-10">
                                                                <div class="input-icon ">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input type="password" class="form-control required" name="oldPwd"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">新密码<span>&nbsp :</span>
                                                            </label>
                                                            <div class="col-md-10">
                                                                <div class="input-icon">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input id="newPwd" type="password" class="form-control required" name="newPwd" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-md-2">确认密码<span>&nbsp :</span>
                                                            </label>
                                                            <div class="col-md-10">
                                                                <div class="input-icon">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input id="confirmPwd" type="password" class="form-control required" name="confirmPwd" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-actions">
                                                        <div class="row">
                                                            <div class="col-md-offset-2 col-md-10">
                                                                <button onClick="history.go(-1);" type="button" class="btn grey-salsa btn-outline">返回</button>
                                                                <button type="submit" class="btn green">提交</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <!-- END CHANGE PASSWORD TAB -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PROFILE CONTENT -->
                </div>

            </div>

        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<jsp:include page="../includes/foot.jsp"/>
</body>
</html>
