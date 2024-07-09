<%-- 
    Document   : products
    Created on : Jul 5, 2024, 8:05:21 PM
    Author     : FPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>G6 - Quản lý | Danh sách sản phẩm và danh mục</title>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="../css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="../css/templatemo-style.css">
        <link rel="stylesheet" href="../css/templatemo-style.css">
        <!-- Bootstrap -->
        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
        <!--
            Product Admin CSS Template
            https://templatemo.com/tm-524-product-admin
        -->
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

                <div class="container-sm">

                    <div class="row tm-content-row">
                        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                            <div class="tm-bg-primary-dark tm-block tm-block-products">
                                <div class="tm-product-table-container">
                                    <table class="table table-hover tm-table-small tm-product-table">
                                        <thead>
                                            <tr>
                                                <th scope="col">&nbsp;</th>
                                                <th scope="col">PRODUCT NAME</th>
                                                <th scope="col">UNIT SOLD</th>
                                                <th scope="col">IN STOCK</th>
                                                <th scope="col">EXPIRE DATE</th>
                                                <th scope="col">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 1</td>
                                                <td>1,450</td>
                                                <td>550</td>
                                                <td>28 March 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 2</td>
                                                <td>1,250</td>
                                                <td>750</td>
                                                <td>21 March 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 3</td>
                                                <td>1,100</td>
                                                <td>900</td>
                                                <td>18 Feb 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 4</td>
                                                <td>1,400</td>
                                                <td>600</td>
                                                <td>24 Feb 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 5</td>
                                                <td>1,800</td>
                                                <td>200</td>
                                                <td>22 Feb 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 6</td>
                                                <td>1,000</td>
                                                <td>1,000</td>
                                                <td>20 Feb 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 7</td>
                                                <td>500</td>
                                                <td>100</td>
                                                <td>10 Feb 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 8</td>
                                                <td>1,000</td>
                                                <td>600</td>
                                                <td>08 Feb 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 9</td>
                                                <td>1,200</td>
                                                <td>800</td>
                                                <td>24 Jan 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 10</td>
                                                <td>1,600</td>
                                                <td>400</td>
                                                <td>22 Jan 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><input type="checkbox" /></th>
                                                <td class="tm-product-name">Lorem Ipsum Product 11</td>
                                                <td>2,000</td>
                                                <td>400</td>
                                                <td>21 Jan 2019</td>
                                                <td>
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- table container -->
                                <a
                                    href="add-product.jsp"
                                    class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
                                <button class="btn btn-primary btn-block text-uppercase">
                                    Delete selected products
                                </button>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
                            <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
                                <h2 class="tm-block-title">Product Categories</h2>
                                <div class="tm-product-table-container">
                                    <table class="table tm-table-small tm-product-table">
                                        <tbody>
                                            <tr>
                                                <td class="tm-product-name">Product Category 1</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 2</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 3</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 4</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 5</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 6</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 7</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 8</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 9</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 10</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm-product-name">Product Category 11</td>
                                                <td class="text-center">
                                                    <a href="#" class="tm-product-delete-link">
                                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- table container -->

                                <a href="add-category.jsp" class="btn btn-primary btn-block text-uppercase mb-3">Add new category</a>        

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script src="../js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
        <script>
            $(function () {
                $(".tm-product-name").on("click", function () {
                    window.location.href = "edit-product.jsp";
                });
            });
        </script>
        <!-- jQuery -->
        <script src="../vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <!-- FastClick -->
        <script src="../vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../vendors/nprogress/nprogress.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="../build/js/custom.min.js"></script>
    </body>
</html>
