<%-- 
    Document   : index
    Created on : Jun 25, 2024, 1:32:17 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>BabyShop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}\img\favicon.png">

        <!-- all css here -->
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

                                                    <li><a href="listblog?service=blog">blog</a></li>
                                                    <li><a href="contact.html">Liên hệ </a></li>

                                                </ul>
                                            </nav>
                                        </div>
                                        <div class="mobile-menu d-lg-none">
                                            <nav>
                                                <ul>
                                                    <li><a href="home">Home</a>
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
                                                                        <li><a href="listblog?service=blog">Blog </a></li>
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

                                                    <li><a href="listblog?service=blog">blog</a>
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
                            <div class="col-12">
                                <div class="banner_slider slider_two">
                                    <div class="slider_active owl-carousel">
                                        <div class="single_slider" style="background-image: url(${pageContext.request.contextPath}/img/slider/G6.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1>BabyShop</h1>
                                                    <p>BaByShop đồng hành cùng các mẹ</p>
                                                    <a href="list">mua ngay</a>
                                                </div>     
                                            </div>
                                        </div>
                                        <div class="single_slider" style="background-image: url(${pageContext.request.contextPath}/img/slider/G6_2.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1></h1>
                                                    <p></p>
                                                    <a href="list">mua ngay</a>
                                                </div>     
                                            </div> 
                                        </div>
                                        <div class="single_slider" style="background-image: url(${pageContext.request.contextPath}/img/slider/G6_3.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1></h1>
                                                    <p></p>
                                                    <a href="list">mua ngay</a>
                                                </div>     
                                            </div>
                                        </div>
                                    </div>
                                </div> 


                            </div>    
                        </div>  
                       <div class="new_product_area product_two">
                     
                            <div class="row">
                                <div class="col-12">
                                    <div class="block_title">
                                        <h3> SẢN PHẨM TIÊU BIỂU </h3>
                                    </div>
                                </div> 
                            </div>
                            <div class="row">
                                <c:forEach items="${sessionScope.list4product}" var="p">
                                    <div class="col-lg-3">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="list-detail?productId=${p.id}&categoryId=${p.category_id}">
                                                    <img src="${p.image}" height="300px" width="300px" alt="">
                                                </a>
                                                <!--                                                   <div class="img_icone">
                                                                                                       <img src="${p.image}" alt="">
                                                                                                   </div>-->
                                                <div class="product_action">
                                                    <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                </br>
                                                <h3 class="product_title"><a href="#">${p.name}</a></h3>
                                                <span class="product_price">${p.sale_price} VND</span
                                                </br>
                                            </div>

                                        </div>
                                    </div> 
                                </c:forEach>
                            </div> 
                        </div>  
                        
                        
                           <div class="blog_area blog_two">
                              <div class="row">
                                <div class="col-12">
                                    <div class="block_title">
                                        <h3> BLOG ĐÁNG CHÚ Ý </h3>
                                    </div>
                                </div> 
                            </div>
                            <div class="row">   
                                <c:forEach items="${sessionScope.list3blog}" var="b">
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
                                </c:forEach>

                            </div>    
                        </div>
                    </div> 
                                                    
                </div>
                <!--pos home section end-->
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

    <!-- modal area start --> 
    <div class="modal fade" id="modal_box" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal_body">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-12">
                                <div class="modal_tab">  
                                    <div class="tab-content" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="${pageContext.request.contextPath}\img\product\product13.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab2" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="${pageContext.request.contextPath}\img\product\product14.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab3" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="${pageContext.request.contextPath}\img\product\product15.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal_tab_button">    
                                        <ul class="nav product_navactive" role="tablist">
                                            <li>
                                                <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="${pageContext.request.contextPath}\img\cart\cart17.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="${pageContext.request.contextPath}\img\cart\cart18.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="${pageContext.request.contextPath}\img\cart\cart19.jpg" alt=""></a>
                                            </li>
                                        </ul>
                                    </div>    
                                </div>  
                            </div> 
                            <div class="col-lg-7 col-md-7 col-sm-12">
                                <div class="modal_right">
                                    <div class="modal_title mb-10">
                                        <h2>Handbag feugiat</h2> 
                                    </div>
                                    <div class="modal_price mb-10">
                                        <span class="new_price">$64.99</span>    
                                        <span class="old_price">$78.99</span>    
                                    </div>
                                    <div class="modal_content mb-10">
                                        <p>Short-sleeved blouse with feminine draped sleeve detail.</p>    
                                    </div>
                                    <div class="modal_size mb-15">
                                        <h2>size</h2>
                                        <ul>
                                            <li><a href="#">s</a></li>
                                            <li><a href="#">m</a></li>
                                            <li><a href="#">l</a></li>
                                            <li><a href="#">xl</a></li>
                                            <li><a href="#">xxl</a></li>
                                        </ul>
                                    </div>
                                    <div class="modal_add_to_cart mb-15">
                                        <form action="#">
                                            <input min="0" max="100" step="2" value="1" type="number">
                                            <button type="submit">add to cart</button>
                                        </form>
                                    </div>   
                                    <div class="modal_description mb-15">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>    
                                    </div> 
                                    <div class="modal_social">
                                        <h2>Share this product</h2>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>    
                                    </div>      
                                </div>    
                            </div>    
                        </div>     
                    </div>
                </div>    
            </div>
        </div>
    </div> 

    <!-- modal area end --> 




    <!-- all js here -->
    <script src="${pageContext.request.contextPath}\js\vendor\modernizr-2.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}\js\vendor\jquery-1.12.0.min.js"></script>
    <script src="${pageContext.request.contextPath}\js\popper.js"></script>
    <script src="${pageContext.request.contextPath}\js\bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}\js\ajax-mail.js"></script>
    <script src="${pageContext.request.contextPath}\js\plugins.js"></script>
    <script src="${pageContext.request.contextPath}\js\main.js"></script>
</body>
</html>
