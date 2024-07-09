<%-- 
    Document   : add-blog
    Created on : Jul 5, 2024, 7:00:11 PM
    Author     : FPT
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>G6-Quản lý | Thêm bài viết</title>
        <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="../css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="../jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
        <!-- http://api.jqueryui.com/datepicker/ -->
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="../css/templatemo-style.css">
        <script>
            body {
            background - color: #f8f9fa;
            font - family: 'Arial', sans - serif;
            }

            .card {
            border: none;
            border - radius: 10px;
            box - shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .card - header {
            background - color: #ff6f61;
            color: white;
            border - top - left - radius: 10px;
            border - top - right - radius: 10px;
            padding: 15px;
            text - align: center;
            }

            .card - body {ss
                    padding: 30px;
            }

            .form - control {
            border - radius: 5px;
            }

            .btn - primary {
            background - color: #ff6f61;
            border: none;
            border - radius: 5px;
            }

            .btn - primary:hover {
            background - color: #ff3f3f;
            }

        </script>
        <!-- Bootstrap -->
        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

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



                <div class="container-sm">
                    <div class="card">
                        <div class="card-header" style="font-size: 35px; color: #24292e">
                            <h2 class="text-center">Thêm bài viết mới</h2>
                        </div>
                        <div class="card-body">
                            <form action="addblog" method="post" enctype="multipart/form-data">
                                <c:if test="${not empty error}">
                                    <p style="color: red">${error}</p>
                                </c:if>  
                                <div class="mb-3">
                                    <label for="title" class="form-label">Tiêu đề</label>
                                    <input type="text" class="form-control" id="title" name="title" placeholder="Nhập tiêu đề" required>
                                </div>
                                <div class="mb-3">
                                    <label for="heading" class="form-label">Nội dung ngắn</label>
                                    <input type="text" class="form-control" id="heading" placeholder="Nhập nội dung ngắn" name="heading" required>
                                </div>
                                <div class="mb-3" >
                                    <label class="control-label">Nội dung bài viết</label>
                                    <div id="editor" style="height: 300px ;color: black"></div>
                                    <input type="hidden" id="editorContent" name="content" placeholder="Nhập nội dung bài viết">
                                </div>
                                <div class="mb-3">
                                    <label for="image" class="form-label">Hình ảnh</label>
                                    <input type="file" class="form-control" id="image" name="image" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Thêm </button>
                                <a class="btn btn-primary" style="background-color: red" href="addblog">Huỷ</a>
                                                         
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


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
        <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
        <script>
            // Initialize Quill
            var quill = new Quill('#editor', {
            theme: 'snow', // 'snow' is one of the themes available
                    modules: {
                    toolbar: {
                    container: [
                    [{'header': [1, 2, false]}],
                    ['bold', 'italic', 'underline', 'strike'],
                    [{'color': []}, {'background': []}],
                    [{'align': []}],
                    ['link', 'image'],
                    ['clean']
                    ],
                    },
                    },
            });
            document.querySelector('form').addEventListener('submit', function (event) {
            // Get Quill's HTML content
            var htmlContent = quill.root.innerHTML;
            // Set the content to the input field with name "content"
            document.querySelector('input[name="content"]').value = htmlContent;
            });
        </script>
    </body>
</html>

