<%-- 
    Document   : blog
    Created on : Jul 3, 2024, 9:08:33 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Baby Shop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img\favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="css\bootstrap.min.css">
        <link rel="stylesheet" href="css\plugin.css">
        <link rel="stylesheet" href="css\bundle.css">
        <link rel="stylesheet" href="css\style.css">
        <link rel="stylesheet" href="css\responsive.css">
        <script src="js\vendor\modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!-- Add your site or application content here -->

        <!--pos page start-->
        <div class="pos_page">
            <div class="container">
                <!--pos page inner-->
                <div class="pos_page_inner">  
                    <!--header area -->
                    <div class="header_area">
                        <!--header top--> 
                        <div class="header_top">
                            <div class="row align-items-center">

                                <div class="col-lg-6 col-md-6">
                                    <div class="header_links">
                                        <ul>
                                            <c:if test="${us ==null}">
                                                <li>
                                                    <a href="authen?action=login">Login</a>
                                                </li>
                                            </c:if>

                                            <c:if test="${us!=null}"> 
                                                <li>
                                                    <a href="authen?action=editprofile" style="color: red;">Welcome to ${sessionScope.us.fullName}</a>
                                                </li>
                                            </c:if>

                                            <c:if test="${us!=null}">
                                                <li>
                                                    <a href="authen?action=logout">Sign out</a>
                                                </li>
                                            </c:if>

                                            <c:if test="${not empty notification || not empty sessionScope.notification}">
                                                <div class="notification-container">
                                                    <div class="alert alert-info alert-dismissible notification">
                                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                        ${not empty notification ? notification : sessionScope.notification}
                                                    </div>
                                                </div>
                                                <%
                                                    // Xóa thông báo khỏi session sau khi hiển thị
                                                    session.removeAttribute("notification");
                                                %>
                                            </c:if>

                                            <script>
                                                setTimeout(function () {
                                                    var notificationContainer = document.querySelector('.notification-container');
                                                    if (notificationContainer) {
                                                        notificationContainer.remove();
                                                    }
                                                }, 3000); // 3 giây
                                            </script>


                                        </ul>
                                    </div>   
                                </div>
                            </div> 
                        </div> 
                        <!--header top end-->

                        <!--header middel--> 
                        <div class="header_middel">
                            <div class="row align-items-center">
                                <div class="col-lg-3 col-md-3">
                                    <div class="logo">
                                        <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}\img\logo\G6 shop.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-9">
                                    <div class="header_right_info">
                                        <div class="search_bar">
                                            <form class="input-search" action="list">
                                                <div>
                                                    <input type="text" name="key" value="${key}" placeholder="Tìm kiếm sản phẩm..." class="filter-search__control" >
                                                    <button type="submit" class="button-search"><i class="fa fa-search"></i></button>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="shopping_cart">
                                            <a href="cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>     
                        <!--header middel end-->     

                        <div class="header_bottom">
                            <div class="row">
                                <div class="col-12">
                                    <div class="main_menu_inner">
                                        <div class="main_menu d-none d-lg-block">
                                            <nav>
                                                <ul>
                                                    <li class="active"><a href="home">trang chủ</a>
                                                    </li>
                                                    <li><a href="list">sản phẩm</a> </li>
                                                    <li><a href="listblog">blog</a></li>
                                                    <li><a href="contact.html">contact us</a></li>

                                                </ul>
                                            </nav>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="breadcrumbs_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="breadcrumb_content">
                                    <ul>
                                        <li><a href="home">Trang chủ</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>Cùng bé lớn khôn</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->
                    <!-- bắt đầu -->                      
                    <!--blog area start-->
                        <div class="blog_area">
                            <c:forEach var="b" items="${requestScope.listBlog}" varStatus="status">
                                <c:if test="${status.index % 3 == 0}">
                                    <div class="row">
                                    </c:if>

                                    <div class="col-lg-4 col-md-6">
                                        <div class="single_blog">
                                            <div class="blog_thumb">
                                                <a href="listblog?service=detail&blogId=${b.blogId}"><img src="img2/${b.image}" alt=""></a>
                                            </div>
                                            <div class="blog_content">
                                                <h3><a href="listblog?service=detail&blogId=${b.blogId}">${b.title}</a></h3>
                                                <p>${b.heading}</p>
                                                <div class="post_footer">
                                                    <div class="post_meta">
                                                        <ul>
                                                            <li>${b.createDate}</li>
                                                        </ul>
                                                    </div>
                                                    <div class="Read_more">
                                                       <a href="listblog?service=detail&blogId=${b.blogId}">Chi tiết <i class="fa fa-angle-double-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <c:if test="${status.index % 3 == 2 || status.last}">
                                    </div> <!-- close row after 3 blogs or if it's the last blog -->
                                </c:if>
                            </c:forEach>
                        </div>

                    <!--blog area end-->

                    <!--pagination style start--> 
                    <div class="pagination-container" >
                        <ul class="pagination" >
                            <c:set var="ser" value="${service}" />
                            <c:forEach begin="1" end="${end}" var="i">
                                <li class="page-item"style="text-align: center">
                                    <a class="page-link" href="listblog?index=${i}&service=${ser != null ? ser : 'Checkagain'}&searchblog=${textSearch}">
                                        ${i}
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!--pagination style end--> 

                </div>
            </div>
            <!--pos page inner end-->
        </div>

        <!--pos page end-->
        <div class="footer_area">
            <div class="footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer_widget">
                                <h3>About us</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <div class="footer_widget_contect">
                                    <p><i class="fa fa-map-marker" aria-hidden="true"></i>  19 Interpro Road Madison, AL 35758, USA</p>

                                    <p><i class="fa fa-mobile" aria-hidden="true"></i> (012) 234 432 3568</p>
                                    <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Contact@plazathemes.com </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer_widget">
                                <h3>My Account</h3>
                                <ul>
                                    <li><a href="#">Your Account</a></li>
                                    <li><a href="#">My orders</a></li>
                                    <li><a href="#">My credit slips</a></li>
                                    <li><a href="#">My addresses</a></li>
                                    <li><a href="#">Login</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer_widget">
                                <h3>Informations</h3>
                                <ul>
                                    <li><a href="#">Specials</a></li>
                                    <li><a href="#">Our store(s)!</a></li>
                                    <li><a href="#">My credit slips</a></li>
                                    <li><a href="#">Terms and conditions</a></li>
                                    <li><a href="#">About us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer_widget">
                                <h3>extras</h3>
                                <ul>
                                    <li><a href="#"> Brands</a></li>
                                    <li><a href="#"> Gift Vouchers </a></li>
                                    <li><a href="#"> Affiliates </a></li>
                                    <li><a href="#"> Specials </a></li>
                                    <li><a href="#"> Privacy policy </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="copyright_area">
                                <ul>
                                    <li><a href="#"> about us </a></li>
                                    <li><a href="#">  Customer Service  </a></li>
                                    <li><a href="#">  Privacy Policy  </a></li>
                                </ul>
                                <p>Copyright &copy; 2018 <a href="#">Pos Coron</a>. All rights reserved. </p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="footer_social text-right">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li><a class="pinterest" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>

                                    <li><a href="#"><i class="fa fa-wifi" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>





        <!-- all js here -->
        <script src="js\vendor\jquery-1.12.0.min.js"></script>
        <script src="js\popper.js"></script>
        <script src="js\bootstrap.min.js"></script>
        <script src="js\ajax-mail.js"></script>
        <script src="js\plugins.js"></script>
        <script src="js\main.js"></script>
    </body>
</html>
