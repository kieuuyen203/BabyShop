<%-- 
    Document   : edit-account
    Created on : Jul 5, 2024, 7:03:06 PM
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

        <title>G6 - Quản lý | Sửa tài khoản nhân viên </title>

        <!-- Bootstrap -->
        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

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
                                <h3>Projects <small>Listing design</small></h3>
                            </div>

                            <div class="title_right">
                                <div class="col-md-5 col-sm-5   form-group pull-right top_search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-secondary" type="button">Go!</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Projects</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Settings 1</a>
                                                    <a class="dropdown-item" href="#">Settings 2</a>
                                                </div>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <p>Simple table with project listing with progress and editing options</p>

                                        <!-- start project list -->
                                        <table class="table table-striped projects">
                                            <thead>
                                                <tr>
                                                    <th style="width: 1%">#</th>
                                                    <th style="width: 20%">Project Name</th>
                                                    <th>Team Members</th>
                                                    <th>Project Progress</th>
                                                    <th>Status</th>
                                                    <th style="width: 20%">#Edit</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="57"></div>
                                                        </div>
                                                        <small>57% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="47"></div>
                                                        </div>
                                                        <small>47% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                                                        </div>
                                                        <small>77% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
                                                        </div>
                                                        <small>60% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="12"></div>
                                                        </div>
                                                        <small>12% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="35"></div>
                                                        </div>
                                                        <small>35% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="87"></div>
                                                        </div>
                                                        <small>87% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                                                        </div>
                                                        <small>77% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                                                        </div>
                                                        <small>77% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!-- end project list -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
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

        <!-- Custom Theme Scripts -->
        <script src="../build/js/custom.min.js"></script>
    </body>
</html>

