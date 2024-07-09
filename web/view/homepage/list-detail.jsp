<%-- 
    Document   : product_details
    Created on : Jun 5, 2024, 12:40:44 AM
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
        <link rel="shortcut icon" type="image/x-icon" href="assets\img\favicon.png">

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
            [type="checkbox"]:checked,
            [type="checkbox"]:not(:checked),
            [type="radio"]:checked,
            [type="radio"]:not(:checked){
                position: absolute;
                left: -9999px;
                width: 0;
                height: 0;
                visibility: hidden;
            }



            .checkbox-size:checked + label,
            .checkbox-size:not(:checked) + label{
                position: relative;
                display: inline-block;
                padding: 1%;
                width: 10%;
                font-size: 14px;
                margin-left: 5px;
                margin-right: 5px;
                margin-bottom: 10px;
                text-align: center;
                border-radius: 4px;
                cursor: pointer;
                color: white;
                -webkit-transition: all 300ms linear;
                transition: all 300ms linear; 
            }
            .checkbox-size:not(:checked) + label{
                background-color: white;
                border: 1px solid black;
                color: black;
            }

            .checkbox-size:not(:checked) + label:hover{
                box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
            }
            .checkbox-size:checked + label::before,
            .checkbox-size:not(:checked) + label::before{
                position: absolute;
                content: '';
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: 4px;
                background-color: black;
                z-index: -1;
            }

            [type="checkbox"]:checked,
            [type="checkbox"]:not(:checked),
            [type="radio"]:checked,
            [type="radio"]:not(:checked){
                position: absolute;
                left: -9999px;
                width: 0;
                height: 0;
                visibility: hidden;
            }
            .checkbox-color:checked + label,
            .checkbox-color:not(:checked) + label{
                position: relative;
                display: inline-block;
                padding: 4%;
                width: 4%;
                font-size: 14px;
                text-align: center;
                border-radius: 50%;
                cursor: pointer;
                color: black;
                border: 3px solid black;
                -webkit-transition: all 300ms linear;
                transition: all 300ms linear; 
            }
            .checkbox-color:not(:checked) + label{
                border: 3px solid white;
                border-radius: 50%;
            }

            .checkbox-color:not(:checked) + label:hover{
                box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
            }
            .checkbox-color:checked + label::before,
            .checkbox-color:not(:checked) + label::before{
                position: absolute;
                content: '';
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: 50%;
                background-color: black;
                z-index: -1;
            }

            .marketing_feedback_margin{
                margin-left: 5%;
                margin-right: 5%
            }
            .marketing_feedbac_displayinline{
                display: inline;
            }
            textarea{
                width: 90%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }


            .countProduct{
                position: absolute;
                display: flex;
                border: 1px solid black;
                border-radius: 45px;
            }
            input[type="number"]{
                text-align: center;
                font-size: 20px;
                border: none;
                color: #202030;
            }
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button{
                -webkit-appearance: none;
                margin: 0;
            }
            button{
                color: black;
                background-color: #ffffff;
                border: none;
                font-size: 20px;
                cursor: pointer;
            }
            #decrement{
                padding: 5px 0px 5px 15px;
                border-radius: 45px 0 0 45px;
                cursor: pointer;
                font-size: 20px;
            }
            #increment{
                padding: 5px 15px 5px 0px;
                border-radius: 0 45px 45px 0;
                cursor: pointer;
                font-size: 20px;
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
                                            <li class="languages"><a href="#"><img src="${pageContext.request.contextPath}\img\logo\fontlogo.jpg" alt=""> English <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown_languages">
                                                    <li><a href="#"><img src="${pageContext.request.contextPath}\img\logo\fontlogo.jpg" alt=""> English</a></li>
                                                    <li><a href="#"><img src="${pageContext.request.contextPath}\img\logo\fontlogo2.jpg" alt=""> French </a></li>
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
                                            <form action="#">
                                                <input placeholder="Search..." type="text">
                                                <button type="submit"><i class="fa fa-search"></i></button>
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
                                                    <li><a href="shop.html">sản phẩm</a>

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
                                                    <li><a href="contact.html">contact us</a></li>

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
                                                                    <a href="#"><img src="assets\img\banner\banner1.jpg" alt=""></a>
                                                                </div>
                                                                <div>
                                                                    <a href="#"><img src="assets\img\banner\banner2.jpg" alt=""></a>
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
                                                                </div>
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
                                                                    <a href="#"><img src="assets\img\banner\banner3.jpg" alt=""></a>
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
                    <!--breadcrumbs area start-->
                    <div class="breadcrumbs_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="breadcrumb_content">
                                    <ul>
                                        <li><a href="home">trang chủ</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>Thông tin chi tiết sản phẩm</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->


                    <!-- product wrapper start -->
                    <div class="product_details">
                        <div class="row">
                            <div class="col-lg-5 col-md-6">
                                <div class="product_tab fix"> 
                                    <div class="product_tab_button">    

                                    </div> 
                                    <div class="tab-content produc_tab_c">
                                        <div class="tab-pane fade show active" id="p_tab1" role="tabpanel">
                                            <div class="modal_img">
                                                <a href="#"><img src="${product.image}" alt=""></a>
                                                <div class="img_icone">
                                                    <img src="${product.image}" alt="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="p_tab2" role="tabpanel">
                                            <!-- Content for tab 2 -->
                                        </div>
                                        <div class="tab-pane fade" id="p_tab3" role="tabpanel">
                                            <!-- Content for tab 3 -->
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-lg-7 col-md-6">
                                <div class="product_d_right">
                                    <h1>${product.name}</h1>
                                    <div class="product_desc">
                                        <p>${product.brief_infor}</p>
                                    </div>
                                    <div class="content_price mb-15">
                                        <span>${product.sale_price} VND</span>
                                        <span class="old-price">${product.original_price} VND</span>
                                    </div>
                                    <div class="box_quantity mb-20">
                                        <form action="addcart" id="addcart" method="GET">
                                            <input type="hidden" name="productId" value="${product.id}"/>
                                            <label>Quantity</label>
                                            <input min="1" max="100" value="1" type="number" name="quantity">
                                            <button type="submit"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng </button>
                                        </form>                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product wrapper end -->

                    <!--product details end-->


                    <!--product info start-->
                    <div class="product_d_info">
                        <div class="row">
                            <div class="col-12">
                                <div class="product_d_inner">   
                                    <div class="product_info_button">    
                                        <ul class="nav" role="tablist">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Mô tả chi tiết</a>

                                            </li>

                                            <li>
                                                <a data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Đánh giá</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="info" role="tabpanel">
                                            <div class="product_info_content">
                                                <p>${product.desciption}</p>
                                            </div>    
                                        </div>

                                      
                                        <div class="tab-pane fade" id="reviews" role="tabpanel">
                                            <div class="product_info_content">
                                                <form action="feedback">
                                                    <input type="hidden" name="productId" value="${product.id}"/>
                                                    
                                                </form>
                                            </div>
                                           
                                            <div class="product_review_form">
                                                 <div class="modal fade col-md-12" role="dialog" id="feedback">
            <div class="modal-dialog">
                <div class="modal-content" style="border-radius: 10px; margin-top: 60px;">
                    <div class="modal-header">
                        <h2 style="margin-left: 35%">Bình luận</h2>
                    </div>
                    <div class="modal-body">
                        <form action="feedback">
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <b>Viết bình luận:</b>&nbsp;&nbsp;
                            <div class="form-group">
                                <textarea name="subject" placeholder="Viết bình luận.." style="height:200px ; width: 460px"></textarea>
                            </div>
                            <b>Ảnh phản hồi:</b>&nbsp;&nbsp;
                            <div class="form-group">
                                <input name="imageurl" type="file" class="form-control" style="border-radius: 100px;" required="">
                            </div>
                            <b>Đánh giá:</b>&nbsp;&nbsp;
                            <div class="form-group" >
                                <select name = "star" style="border-radius: 100px;" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                    <option selected>Chọn số sao bạn dành cho BabyShop</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <br>


                            <center><button type="submit" class="btn btn-dark" style="padding-right: 160px;padding-left: 160px; border-radius: 100px;">Bình luận</button></center>

                        </form>
                        <br><br>
                    </div>
                </div>
            </div>
        </div>

        <!-- Feedback List -->
        <c:if test="${total == 0}">
            <h3 style="text-align: center; font-style: oblique;">Không có bình luận</h3>
        </c:if>           
        <div style="background-color:#f8f9fa;">
            <hr class="marketing_feedback_margin">
            <span><h2 class="marketing_feedback_margin marketing_feedbac_displayinline">${total} Đánh giá</h2></span>
            <span><h2 class="marketing_feedback_margin marketing_feedbac_displayinline">${Math.round(avg * 1000) / 1000}/5 <img style="height: 40px; width: 40px" src="img/sao.jpg"></h2></span>
                    <c:if test="${accept.orderID != null}">
                <a data-toggle="modal" data-dismiss="modal" data-target="#feedback">
                    <h2 class="marketing_feedback_margin marketing_feedbac_displayinline" style="color: blue">
                        Viết nhận xét của bạn
                    </h2>
                </a>
            </c:if>
        </div>
            <hr class="marketing_feedback_margin">
            <div  class="container-fluid">
                <div class="row">
                    <c:forEach items="${listfeedbackbyproduct}" var="f">
                        <div class="col-sm-6">
                            <span>
                                <h6 class="marketing_feedback_margin marketing_feedbac_displayinline">
                                    <c:forEach var="i" begin="0" end="4">
                                        <c:if test="${(f.rated_star - i) >= 1}">
                                            <div class="reviews-rating__star is-active"></div> 
                                        </c:if>
                                        <c:if test="${(f.rated_star - i) < 1 && (f.rated_star - i) > 0}">
                                            <div class="reviews-rating__star is-active is-half"></div> 
                                        </c:if>
                                        <c:if test="${(f.rated_star - i) <= 0}">
                                            <div class="reviews-rating__star"></div> 
                                        </c:if>
                                    </c:forEach>
                                    <br/>
                                    <b class="marketing_feedback_margin">${f.fullName}</b>
                                </h6>
                            </span>

                            <h6 class="marketing_feedback_margin mt-2">${f.feedback}
                                <c:if test="${f.user_id == sessionScope.us.user_Id}">
                                    <a href="delete-feedback?id=${f.id}" class="float-right btn btn-outline-danger">Xóa</a>
                                </c:if>
                            </h6>
                            <h6 class="marketing_feedback_margin"><img style="height: 100px; width: 100px" src="${f.image}"></h6>
                            <span class="reviews-listing__date marketing_feedback_margin">
                                ${f.date}
                            </span>
                            <hr class="marketing_feedback_margin">

                        </div>
                    </c:forEach>
                </div>
            </div>
                                            </div>     
                                        </div>
                                    </div>
                                </div>     
                            </div>
                        </div>
                    </div>  
                    <!--product info end-->







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
                                <p>Thế giới bên ngoài bụng mẹ dù có mới lạ, nhưng G6 sẽ luôn đòng hành cùng bé với những thiết kế dịu êm và dễ chịu, để bé luôn cảm thấy hạnh phúc và vui vẻ trên hành trình lớn khôn.</p>
                                <div class="footer_widget_contect">
                                    <p><i class="fa fa-map-marker" aria-hidden="true"></i>Khu công nghệ cao Fpt Hòa Lạc</p>

                                    <p><i class="fa fa-mobile" aria-hidden="true"></i> 0901525399</p>
                                    <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Contact@plazathemes.com </a>
                                </div>
                            </div>
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
                                                <a href="#"><img src="assets\img\product\product13.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab2" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="assets\img\product\product14.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab3" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="assets\img\product\product15.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal_tab_button">    
                                        <ul class="nav product_navactive" role="tablist">
                                            <li>
                                                <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="assets\img\cart\cart17.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="assets\img\cart\cart18.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="assets\img\cart\cart19.jpg" alt=""></a>
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

    <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="do/js/scripts.js"></script>
            <script>
                                        const myInput = document.getElementById("my-input");
                                        function stepper(btn) {
                                            let id = btn.getAttribute("id");
                                            let min = myInput.getAttribute("min");
                                            let max = myInput.getAttribute("max");
                                            let step = myInput.getAttribute("step");
                                            let val = myInput.getAttribute("value");
                                            let calcStep = (id == "increment") ? (step * 1) : (step * -1);
                                            let newValue = parseInt(val) + calcStep;

                                            if (newValue >= min && newValue <= max) {
                                                myInput.setAttribute("value", newValue);
                                            }
                                        }
            </script>

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
