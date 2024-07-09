<%-- 
    Document   : myorder
    Created on : Jun 27, 2024, 12:55:04 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Coron-wishlist</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets\img\favicon.png">

        <link rel="stylesheet" href="${pageContext.request.contextPath}\css\bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\css\plugin.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\css\bundle.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\css\style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}\css\responsive.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"
              integrity="sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg=="
              crossorigin="anonymous"
              referrerpolicy="no-referrer" />
        <style>
            .notification-container {
                width: 100%;
                text-align: center;
                position: fixed;
                top: 20px;
                left: 50%;
                transform: translateX(-50%);
                z-index: 1050;
            }

            .notification {
                display: inline-block;
                margin: 0 auto;
                border-radius: 5px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: auto;
                max-width: 80%;
                position: relative; /* Đặt vị trí tương đối */
                padding-right: 40px; /* Để tạo không gian cho nút đóng */
            }

            .alert-dismissible .close {
                position: absolute;
                top: 50%;
                right: 10px;
                transform: translateY(-50%);
                font-size: 1.2rem;
                padding: 0;
                color: inherit;
            }
        </style> 
        <style>
            .mtop {
                margin-top: 6%;
            }
            .title-order {
                display: flex;
                justify-content: center;
                color: rgb(0, 187, 166);
            }
        </style>

    </head>
    <body>
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
                                    <div class="switcher">
                                        <ul>
                                            <li class="languages"><a href="#"><img src="{pageContext.request.contextPath}\img\logo\fontlogo.jpg" alt=""> English <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown_languages">
                                                    <li><a href="#"><img src="{pageContext.request.contextPath}\img\logo\fontlogo.jpg" alt=""> English</a></li>
                                                    <li><a href="#"><img src="{pageContext.request.contextPath}\img\logo\fontlogo2.jpg" alt=""> French </a></li>
                                                </ul>   
                                            </li> 

                                            <li class="currency"><a href="#"> Currency : $ <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown_currency">
                                                    <li><a href="#"> Dollar (USD)</a></li>
                                                    <li><a href="#"> Euro (EUR)  </a></li>
                                                </ul> 
                                            </li> 
                                        </ul>
                                    </div>
                                </div>
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

                                            <c:if test="${sessionScope.us.role_Id == 2}">
                                                <li><a class="dropdown-item" href="admin-dashboard">Quản lý hệ thống</a></li>
                                                </c:if>

                                            <c:if test="${sessionScope.us.role_Id == 1}">
                                                <li><a class="dropdown-item" href="myorder">Danh sách đơn hàng</a></li>
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
                                                    <li><a href="list">sản phẩm</a>                                                              
                                                    </li>

                                                    <li><a href="blog.html">blog</a>
                                                        <div class="mega_menu jewelry">
                                                            <div class="mega_items jewelry">
                                                                <ul>
                                                                    <li><a href="blog-details.html">blog details</a></li>
                                                                    <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                                    <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>  
                                                    </li>
                                                    <li><a href="contact.html">Liên hệ </a></li>

                                                </ul>
                                            </nav>
                                        </div>
                                        <div class="mobile-menu d-lg-none">
                                            <nav>
                                                <ul>
                                                    <li><a href="index.html">Home</a>
                                                        <div>
                                                            <div>
                                                                <ul>
                                                                    <li><a href="index.html">Home 1</a></li>
                                                                    <li><a href="index-2.html">Home 2</a></li>
                                                                </ul>
                                                            </div>
                                                        </div> 
                                                    </li>
                                                    <li><a href="shop.html">shop</a>
                                                        <div>
                                                            <div>
                                                                <ul>
                                                                    <li><a href="shop-list.html">shop list</a></li>
                                                                    <li><a href="shop-fullwidth.html">shop Full Width Grid</a></li>
                                                                    <li><a href="shop-fullwidth-list.html">shop Full Width list</a></li>
                                                                    <li><a href="shop-sidebar.html">shop Right Sidebar</a></li>
                                                                    <li><a href="shop-sidebar-list.html">shop list Right Sidebar</a></li>
                                                                    <li><a href="single-product.html">Product Details</a></li>
                                                                    <li><a href="single-product-sidebar.html">Product sidebar</a></li>
                                                                    <li><a href="single-product-video.html">Product Details video</a></li>
                                                                    <li><a href="single-product-gallery.html">Product Details Gallery</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>  
                                                    </li>
                                                    <li><a href="#">women</a>
                                                        <div>
                                                            <div>
                                                                <div>
                                                                    <h3><a href="#">Accessories</a></h3>
                                                                    <ul>
                                                                        <li><a href="#">Cocktai</a></li>
                                                                        <li><a href="#">day</a></li>
                                                                        <li><a href="#">Evening</a></li>
                                                                        <li><a href="#">Sundresses</a></li>
                                                                        <li><a href="#">Belts</a></li>
                                                                        <li><a href="#">Sweets</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div>
                                                                    <h3><a href="#">HandBags</a></h3>
                                                                    <ul>
                                                                        <li><a href="#">Accessories</a></li>
                                                                        <li><a href="#">Hats and Gloves</a></li>
                                                                        <li><a href="#">Lifestyle</a></li>
                                                                        <li><a href="#">Bras</a></li>
                                                                        <li><a href="#">Scarves</a></li>
                                                                        <li><a href="#">Small Leathers</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div>
                                                                    <h3><a href="#">Tops</a></h3>
                                                                    <ul>
                                                                        <li><a href="#">Evening</a></li>
                                                                        <li><a href="#">Long Sleeved</a></li>
                                                                        <li><a href="#">Shrot Sleeved</a></li>
                                                                        <li><a href="#">Tanks and Camis</a></li>
                                                                        <li><a href="#">Sleeveless</a></li>
                                                                        <li><a href="#">Sleeveless</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div>
                                                                    <a href="#"><img src="${pageContext.request.contextPath}\img\banner\banner1.jpg" alt=""></a>
                                                                </div>
                                                                <div>
                                                                    <a href="#"><img src="${pageContext.request.contextPath}\img\banner\banner2.jpg" alt=""></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li><a href="#">men</a>
                                                        <div>
                                                            <div>
                                                                <div>
                                                                    <h3><a href="#">Rings</a></h3>
                                                                    <ul>
                                                                        <li><a href="#">Platinum Rings</a></li>
                                                                        <li><a href="#">Gold Ring</a></li>
                                                                        <li><a href="#">Silver Ring</a></li>
                                                                        <li><a href="#">Tungsten Ring</a></li>
                                                                        <li><a href="#">Sweets</a></li>
                                                                    </ul>
                                                                    <div>
                                                                        <h3><a href="#">Bands</a></h3>
                                                                        <ul>
                                                                            <li><a href="#">Platinum Bands</a></li>
                                                                            <li><a href="#">Gold Bands</a></li>
                                                                            <li><a href="#">Silver Bands</a></li>
                                                                            <li><a href="#">Silver Bands</a></li>
                                                                            <li><a href="#">Sweets</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div>
                                                                        <a href="#"><img src="${pageContext.request.contextPath}\img\banner\banner3.jpg" alt=""></a>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                    </li>
                                                    <li><a href="#">pages</a>
                                                        <div>
                                                            <div>
                                                                <div>
                                                                    <h3><a href="#">Column1</a></h3>
                                                                    <ul>
                                                                        <li><a href="portfolio.html">Portfolio</a></li>
                                                                        <li><a href="portfolio-details.html">single portfolio </a></li>
                                                                        <li><a href="about.html">About Us </a></li>
                                                                        <li><a href="about-2.html">About Us 2</a></li>
                                                                        <li><a href="services.html">Service </a></li>
                                                                        <li><a href="my-account.html">my account </a></li>
                                                                    </ul>
                                                                </div>
                                                                <div>
                                                                    <h3><a href="#">Column2</a></h3>
                                                                    <ul>
                                                                        <li><a href="blog.html">Blog </a></li>
                                                                        <li><a href="blog-details.html">Blog  Details </a></li>
                                                                        <li><a href="blog-fullwidth.html">Blog FullWidth</a></li>
                                                                        <li><a href="blog-sidebar.html">Blog  Sidebar</a></li>
                                                                        <li><a href="faq.html">Frequently Questions</a></li>
                                                                        <li><a href="404.html">404</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div>
                                                                    <h3><a href="#">Column3</a></h3>
                                                                    <ul>
                                                                        <li><a href="contact.html">Contact</a></li>
                                                                        <li><a href="cart.html">cart</a></li>
                                                                        <li><a href="checkout.html">Checkout  </a></li>
                                                                        <li><a href="wishlist.html">Wishlist</a></li>
                                                                        <li><a href="login.html">Login</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li><a href="blog.html">blog</a>
                                                        <div>
                                                            <div>
                                                                <ul>
                                                                    <li><a href="blog-details.html">blog details</a></li>
                                                                    <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                                    <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>  
                                                    </li>
                                                    <li><a href="contact.html">contact us</a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--header end -->

                    <!--pos home section-->
                    <div class="pos_home_section">
                        <div class="row">
                            <!--banner slider start-->

                        </div>  

                        <!--header end -->
                        <!--breadcrumbs area start-->
                        <div class="breadcrumbs_area">
                            <div class="row">
                                <div class="col-12">
                                    <div class="breadcrumb_content">
                                        <ul>
                                            <li><a href="home">home</a></li>
                                            <li><i class="fa fa-angle-right"></i></li>
                                            <li>Danh sách các đơn hàng</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--breadcrumbs area end-->

                        <!--shopping cart area start -->
                        <div class="shopping_cart_area">
                            <form action="#"> 
                                <div class="row">
                                    <div class="col-12">
                                        <div class="table_desc wishlist">
                                            <h2 class="mtop title-order" >Danh sách các đơn hàng</h2>

                                            <div class="cart_page table-responsive">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th class="product_remove">OrderID</th>
                                                            <th class="product_thumb">Ngày mua hàng</th>
                                                            <th class="product_name">Sản phẩm</th>
                                                            <th class="product-price">Tổng chi phí</th>
                                                            <th class="product_quantity">Tình Trạng</th>
                                                            <th class="product_total">Trạng Thái</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items ="${listMyOrder}" var="c">
                                                            <tr>
                                                                <td class="product_remove"><a href="order-detail?orderId=${c.orderID}">
                                                                        ${c.orderID}</a></td>
                                                                <td class="product_thumb">${c.date}</td>
                                                                <c:if test="${c.countProduct != 0}">
                                                                    <td>${c.fullNameFirstProduct} và ${c.countProduct} sản phẩm khác</td>
                                                                </c:if>
                                                                <c:if test="${c.countProduct == 0}">
                                                                    <td>${c.fullNameFirstProduct}</td>
                                                                </c:if>

                                                                <td class="product_name">${c.total_cost}</td>
                                                                <td class="product-price">${c.status_order_name}</td>
                                                                <td class="product_quantity">
                                                                    <c:if test="${c.status_order_name eq 'Đang gửi'}">
                                                                        
                                                                            <a href="cancel-order?order_id=${c.orderID}" class="btn btn-danger btn-lg active cancel-button" role="button" aria-pressed="true"> Hủy </a>
                                                                   
                                                                    </c:if>
                                                                </td>
                                                            </tr>

                                                        </c:forEach>
                                                    </tbody>
                                                </table>   
                                            </div>  

                                        </div>
                                    </div>
                                </div>

                            </form> 
                            <div class="row">
                                <div class="col-12">
                                    <div class="wishlist-share">
                                        <h4>Share on:</h4>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-rss"></i></a></li>           
                                            <li><a href="#"><i class="fa fa-vimeo"></i></a></li>           
                                            <li><a href="#"><i class="fa fa-tumblr"></i></a></li>           
                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>        
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>        
                                        </ul>      
                                    </div>
                                </div> 
                            </div>

                        </div>
                        <!--shopping cart area end -->

                    </div>
                    <!--pos page inner end-->
                </div>
            </div>
            <!--pos page end-->

            <!--footer area start-->
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
            <!--footer area end-->






            <!-- all js here -->
            <script src="${pageContext.request.contextPath}\js\vendor\modernizr-2.8.3.min.js"></script>
            <script src="${pageContext.request.contextPath}\js\vendor\jquery-1.12.0.min.js"></script>
            <script src="${pageContext.request.contextPath}\js\popper.js"></script>
            <script src="${pageContext.request.contextPath}\js\bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}\js\ajax-mail.js"></script>
            <script src="${pageContext.request.contextPath}\js\plugins.js"></script>
            <script src="${pageContext.request.contextPath}\js\main.js"></script>
            <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

    </body>
</html>

