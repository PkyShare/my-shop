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
    <title>我的商城 | 商品管理</title>
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
    <jsp:include page="../includes/item_menu.jsp"/>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <h1 class="page-title"> 商品管理管理
                <small> </small>
            </h1>
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box green">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>${item.id == null?'新增':'修改'}商品 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body">
                            <!-- BEGIN FORM-->
                            <form action="/item/save" id="inputForm" class="form-horizontal" method="post">
                                <div class="box-body">
                                    <div class="alert alert-block ${res == null ? 'display-hide':'alert-danger'} fade in">
                                        <button type="button" class="close" data-dismiss="alert"></button>
                                        ${res}
                                    </div>
                                    <input type="hidden" name="id" value="${item.id}">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">所属分类
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon ">
                                                <i class="fa fa-tree"></i>
                                                <input type="text" class="form-control required " name="cid" value="${item.cid}" placeholder="所属分类">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">名称
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon ">
                                                <i class="fa fa-gift"></i>
                                                <input type="text" class="form-control required " name="title" value="${item.title}" placeholder="商品名称">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">序号
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon ">
                                                <i class="fa fa-star"></i>
                                                <input type="text" class="form-control required " name="id" value="${item.id}" placeholder="序号">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">卖点
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon ">
                                                <i class="fa fa-thumbs-up"></i>
                                                <input type="text" class="form-control " name="sellPoint" value="${item.sellPoint}" placeholder="商品卖点">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">价格
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon ">
                                                <i class="fa fa-cny"></i>
                                                <input type="text" class="form-control required " name="price" value="${item.price}" placeholder="价格">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">库存
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon">
                                                <i class="fa fa-home"></i>
                                                <input type="text" class="form-control required " name="num" value="${item.num}" placeholder="库存">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">条形码
                                        </label>
                                        <div class="col-md-6">
                                            <div class="input-icon">
                                                <i class="fa fa-reorder"></i>
                                                <input type="text" class="form-control required " name="barcode" value="${item.barcode}" placeholder="条形码">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">图片</label>
                                        <div class="col-md-6">
                                            <div class="input-icon">
                                                <i class="fa fa-image"></i>
                                                <input type="text" class="form-control " name="image" value="${item.image}" placeholder="图片">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">状态</label>
                                        <div class="col-md-6">
                                            <div class="input-icon">
                                                <i class="fa fa-circle-o"></i>
                                                <input type="text" class="form-control required " name="status" value="${item.status}" placeholder="状态">
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


