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
    <title>我的商城 | 商品列表</title>
    <jsp:include page="../../includes/head.jsp"/>
</head>
<!-- END HEAD -->
<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
<!-- BEGIN HEADER -->
<jsp:include page="../../includes/header.jsp"/>
<!-- END HEADER -->
<!-- BEGIN HEADER & CONTENT DIVIDER -->
<div class="clearfix"> </div>
<!-- END HEADER & CONTENT DIVIDER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <jsp:include page="../../includes/item_menu.jsp"/>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <h1 class="page-title"> 商品分类
                <small> </small>
            </h1>
            <!-- BEGIN SEARCH -->
            <div class="row search-area" style="display: none;">
                <div class="col-md-12">
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>高级搜索 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->
                            <div class="horizontal-form">
                                <div class="form-body ">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">商品</label>
                                                <input id="title" type="text" class="form-control" placeholder="商品名称">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">卖点</label>
                                                <input id="sellPoint" type="text" class="form-control" placeholder="商品卖点">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-11"></div>
                                            <div class="col-md-1">
                                                <button type="button" class="btn blue" onclick="search();"> 搜索</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END FORM-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- END SEARCH -->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>分类列表 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body">
                            <div class="alert alert-block  ${res == null ? 'display-hide':res.contains('成功')?'alert-success':'alert-danger'} fade in">
                                <button type="button" class="close" data-dismiss="alert"></button>
                                ${res}
                            </div>
                            <div class="row">
                                <div class="col-md-11">
                                    <a href="#" type="button" class="btn green btn-outline">
                                        <i class="fa fa-user-plus"></i>新增
                                    </a>
                                    <a href="#" type="button" class="btn red btn-outline">
                                        <i class="fa fa-times"></i>删除
                                    </a>
                                    <a href="#" type="button" class="btn yellow btn-outline">
                                        <i class="fa fa-cloud-download"></i>导入
                                    </a>
                                    <a type="button" class="btn dark btn-outline">
                                        <i class="fa fa-cloud-upload"></i>导出
                                    </a>
                                </div>
                                <div class="col-md-1">
                                    <span class="input-group-btn">
                                        <button class="btn btn-info submit"  title="搜索" onclick="$('.search-area').toggle('fast');">
                                            <i class="icon-magnifier"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
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
<jsp:include page="../../includes/foot.jsp"/>
<!-- END FOOT -->

</body>
</html>



