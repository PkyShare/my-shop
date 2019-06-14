<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <h1 class="page-title"> 个人介绍
                    <small></small>
                </h1>
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
                                        <li class="active">
                                            <a href="/profile/profile">
                                                <i class="icon-user"></i> 描述 </a>
                                        </li>
                                        <li>
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
                                    <div class="portlet light portlet-fit ">
                                        <div class="portlet-body">
                                            <div class="timeline">
                                                <!-- TIMELINE ITEM -->
                                                <div class="timeline-item">
                                                    <div class="timeline-badge">
                                                        <img class="timeline-badge-userpic" src="/static/assets/pages/media/profile/profile_user.jpg"> </div>
                                                    <div class="timeline-body">
                                                        <div class="timeline-body-arrow"> </div>
                                                        <div class="timeline-body-head">
                                                            <div class="timeline-body-head-caption">
                                                                <a href="javascript:;" class="timeline-body-title font-blue-madison">${sessionScope.tbUser.username}</a>
                                                                <span class="timeline-body-time font-grey-cascade">Replied at 17:45 PM</span>
                                                            </div>
                                                        </div>
                                                        <div class="timeline-body-content">
                                                                <span class="font-grey-cascade"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut consectetuer adipiscing elit laoreet dolore magna aliquam erat volutpat. Ut wisi enim
                                                                    ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END TIMELINE ITEM -->
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
