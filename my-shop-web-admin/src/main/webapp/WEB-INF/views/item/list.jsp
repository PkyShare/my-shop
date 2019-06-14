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
    <jsp:include page="../includes/head.jsp"/>
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="/static/assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
</head>
<!-- END HEAD -->
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
            <h1 class="page-title"> 商品管理
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
                                <i class="fa fa-globe"></i>商品列表 </div>
                            <div class="tools"> </div>
                        </div>
                        <div class="portlet-body">
                            <div class="alert alert-block  ${res == null ? 'display-hide':res.contains('成功')?'alert-success':'alert-danger'} fade in">
                                <button type="button" class="close" data-dismiss="alert"></button>
                                ${res}
                            </div>
                            <div class="row">
                                <div class="col-md-11">
                                    <a href="/users/form" type="button" class="btn green btn-outline">
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
                            <table style="margin-top: 10px" class="table table-striped table-bordered table-hover text-nowrap" id="dataTable">
                                <thead>
                                <tr>
                                    <th width="2%" class="sorting_disabled" rowspan="1" colspan="1">
                                        <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                            <input id="select_all" name="select_all"  type="checkbox" class="group-checkable">
                                            <span></span>
                                        </label>
                                    </th>
                                    <th> 商品标题 </th>
                                    <th> 商品卖点 </th>
                                    <th> 价格 </th>
                                    <th> 库存 </th>
                                    <th> 更新时间 </th>
                                    <th style="width: 160px"> 操作 </th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
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
<jsp:include page="../includes/foot.jsp"/>
<!-- END FOOT -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/static/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="/static/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/static/assets/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN SWEETALERT -->
<script src="/static/assets/apps/sweetalert.js"></script>
<!-- END SWEETALERT -->
<!-- BEGIN MYDATATABLES -->
<script src="/static/assets/apps/datatable.js"></script>
<!-- END MYDATATABLES -->
<!-- BEGIN DATETIME -->
<script src="/static/assets/apps/datetime.js"></script>
<!-- END DATETIME -->

<script>
    var _dataTable;
    var columns =[
        {data: function(row,type,val,meta ) {
                return '<th width="2%" class="sorting_disabled" rowspan="1" colspan="1">' +
                    '<label style="margin-left:8px" class="mt-checkbox mt-checkbox-single mt-checkbox-outline">' +
                    '<input id="'+row.id+'" name="select_one" type="checkbox" class="group-checkable">' +
                    '<span ></span></label>' +
                    '</th>'
            }
        },
        { data: 'title' },
        { data: 'sellPoint' },
        { data: 'price' },
        { data: 'num' },
        {
            "data": function (row, type, val, meta) {
                return DateTime.format(row.updated, 'yyyy-MM-dd HH:mm:ss');
            }
        },

        {data: function(row,type,val,meta ) {
                return '<a href="javascript:;" id="'+row.id+'" class="btn btn-xs yellow"> 查看<i class="fa fa-search"></i></a>'+
                    '<a href="/users/form?id='+row.id+'" class="btn btn-xs purple"> 编辑<i class="fa fa-edit"></i></a>'+
                    '<button class="btn btn-xs red mt-sweetalert" \n' +
                    '\tdata-title="确定删除该选项?" \n' +
                    '\tdata-type="warning" \n' +
                    '\tdata-show-confirm-button="true" \n' +
                    '\tdata-confirm-button-class="btn-success" \n' +
                    '\tdata-show-cancel-button="true" \n' +
                    '\tdata-cancel-button-class="btn-default" \n' +
                    '\tdata-close-on-confirm="false" \n' +
                    '\tdata-close-on-cancel="false" \n' +
                    '\tdata-confirm-button-text="确定" \n' +
                    '\tdata-cancel-button-text="取消" \n' +
                    '\tdata-popup-title-success="已删除" \n' +
                    '\tdata-popup-title-cancel="已取消" \n' +
                    '\tdata-url="/users/delete?id='+row.id+'"\n'+
                    '>删除<i class="fa fa-trash"></i></button>'
            }
        }
    ];
    $(function () {
        _dataTable = DataTables.initDataTables("/item/page",columns);
    })

    function search() {
        console.log("123")
        var username = $("#username").val();
        var phone = $("#phone").val();
        var email = $("#email").val();

        var param = {
            "username":username,
            "phone":phone,
            "email":email
        }
        _dataTable.settings()[0].ajax.data = param;
        _dataTable.ajax.reload();
    }

</script>
</body>
</html>


