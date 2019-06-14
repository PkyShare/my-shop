<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
    <!-- BEGIN SIDEBAR -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu page-sidebar-menu-closed" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
            <li class="nav-item ">
                <a href="/main" class="nav-link nav-toggle">
                    <i class="icon-home"></i>
                    <i class="arrow"></i>
                    <span class="title">主页</span>

                </a>
            </li>
            <li class="nav-item">
                <a href="/users/list" class="nav-link nav-toggle">
                    <i class="icon-users"></i>
                    <span class="title">用户管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="/users/list" class="nav-link ">
                            <i class="fa fa-user"></i>
                            <span class="title">用户列表</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="/users/form" class="nav-link ">
                            <i class="fa fa-user-plus"></i>
                            <span class="title">添加用户</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item static active open ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-diamond "></i>
                    <span class="title">商品管理</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="/item/list" class="nav-link ">
                            <span class="title">商品列表</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="/content/category/list" class="nav-link ">
                            <span class="title">分类列表</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="#" class="nav-link ">
                            <span class="title">添加商品</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-basket"></i>
                    <span class="title">订单管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="ecommerce_index.html" class="nav-link ">
                            <i class="icon-home"></i>
                            <span class="title">订单列表</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>
<!-- END SIDEBAR -->

