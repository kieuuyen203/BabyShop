<%-- 
    Document   : add-account
    Created on : Jul 4, 2024, 10:12:09 PM
    Author     : FPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>G6- Quản lý | Thêm tài khoản </title>

        <!-- Bootstrap -->
        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- bootstrap-wysiwyg -->
        <link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
        <!-- Select2 -->
        <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
        <!-- Switchery -->
        <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
        <!-- starrr -->
        <link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
        <!-- bootstrap-daterangepicker -->
        <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="../build/css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="home.jsp" class="site_title"><i class="fa fa-paw"></i> <span>G6 - Quản lý</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile clearfix">
                            <div class="profile_pic">
                                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Chào mừng</span>
                                <h2>Họ và tên</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>Tổng quan</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-home"></i> Trang chủ <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="home.jsp">Trang quản lý</a></li>
                                            <li><a><i class="fa fa-home"></i>Trang khách hàng<span class="fa fa-chevron-down"></span></a>
                                                <ul class="nav child_menu">
                                                    <li><a href="../view/homepage/index.jsp">Trang người dùng</a></li> 
                                                    <li><a href="../view/homepage/product.jsp">Trang Sản Phẩm</a></li>
                                                    <li><a href="../view/homepage/blog.jsp">Tin tức</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-edit"></i> Quản Lý Người Dùng<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="list-user.jsp">Danh sách người dùng</a></li>
                                            <li><a href="add-account.jsp">Thêm tài khoản nhân viên</a></li>
                                            <li><a href="list-user.jsp">Khóa tài khoản</a></li>
                                        </ul>
                                    </li>

                                    <li><a><i class="fa fa-table"></i> Quản lý Sản Phẩm <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="products.jsp">Danh sách Sản Phẩm</a></li>
                                            <li><a href="add-product.jsp">Thêm sản phẩm</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-table"></i> Quản lý Đơn Hàng <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="list-order.jsp">Danh sách Đơn Hàng</a></li>
                                            <li><a href="add-product.jsp">Danh sách đơn hàng chờ xác nhận</a></li>
                                            <li><a href="add-product.jsp">Danh sách đơn hàng đã hủy</a></li>
                                            <li><a href="add-product.jsp">Danh sách đơn hàng đã giao</a></li>
                                            <li><a href="add-product.jsp">Danh sách đơn hàng yêu cầu hoàn trả</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-edit"></i> Quản lý trang tin tức<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="list-blog.jsp">Danh sách bài viết</a></li>
                                            <li><a href="add-blog.jsp">Thêm bài viết</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-edit"></i> Quản lý phản hồi<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="list-feedback.jsp">Danh sách phản hồi</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-bar-chart-o"></i> Chart <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="echarts.html">ECharts</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>


                        </div>
                        <!-- /sidebar menu -->


                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>
                        <nav class="nav navbar-nav">
                            <ul class=" navbar-right">
                                <li class="nav-item dropdown open" style="padding-left: 15px;">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                                        <img src="images/img.jpg" alt="">Họ và tên
                                    </a>
                                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item"  href="form.html"> Thông tin cá nhân</a>
                                        <a class="dropdown-item"  href="javascript:;">Trợ giúp</a>
                                        <a class="dropdown-item"  href="login.html"><i class="fa fa-sign-out pull-right"></i> Đăng xuất</a>
                                    </div>
                                </li>

                                <li role="presentation" class="nav-item dropdown open">
                                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="badge bg-green">Số thông báo chưa đọc</span>
                                    </a>
                                    <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">

                                        <li class="nav-item">
                                            <a class="dropdown-item">
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>Tên thông báo</span>
                                                    <span class="time">Thời gian</span>
                                                </span>
                                                <span class="message">
                                                    Nội dung ...
                                                </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <div class="text-center">
                                                <a class="dropdown-item">
                                                    <strong> Thấy nhiều hơn</strong>
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->


                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Thêm Tài Khoản Nhân Viên</h3>
                            </div>

                            <div class="title_right">
                                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">Tìm kiếm</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="x_panel">

                                    <div class="x_content">
                                        <br />
                                        <form class="form-label-left input_mask">
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-3 col-sm-3 ">Email</label>
                                                <div class="col-md-9 col-sm-9 ">
                                                    <input type="text" class="form-control" name="username" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-3 col-sm-3 ">Mật Khẩu </label>
                                                <div class="col-md-9 col-sm-9 ">
                                                    <input type="password" class="form-control" name="password" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-3 col-sm-3 ">Nhập Lại Mật Khẩu</label>
                                                <div class="col-md-9 col-sm-9 ">
                                                    <input type="password" class="form-control" name="repassword" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-md-9 col-sm-9  offset-md-3">
                                                    <button type="button" class="btn btn-primary">Hủy</button>
                                                    <button class="btn btn-primary" type="reset">Cài Lại</button>
                                                    <button type="submit" class="btn btn-success">Thêm</button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /page content -->


                    </div>
                </div>

                <!-- jQuery -->
                <script src="../vendors/jquery/dist/jquery.min.js"></script>
                <!-- Bootstrap -->
                <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
                <!-- FastClick -->
                <script src="../vendors/fastclick/lib/fastclick.js"></script>
                <!-- NProgress -->
                <script src="../vendors/nprogress/nprogress.js"></script>
                <!-- bootstrap-progressbar -->
                <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
                <!-- iCheck -->
                <script src="../vendors/iCheck/icheck.min.js"></script>
                <!-- bootstrap-daterangepicker -->
                <script src="../vendors/moment/min/moment.min.js"></script>
                <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
                <!-- bootstrap-wysiwyg -->
                <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
                <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
                <script src="../vendors/google-code-prettify/src/prettify.js"></script>
                <!-- jQuery Tags Input -->
                <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
                <!-- Switchery -->
                <script src="../vendors/switchery/dist/switchery.min.js"></script>
                <!-- Select2 -->
                <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
                <!-- Parsley -->
                <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
                <!-- Autosize -->
                <script src="../vendors/autosize/dist/autosize.min.js"></script>
                <!-- jQuery autocomplete -->
                <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
                <!-- starrr -->
                <script src="../vendors/starrr/dist/starrr.js"></script>
                <!-- Custom Theme Scripts -->
                <script src="../build/js/custom.min.js"></script>

                </body></html>

