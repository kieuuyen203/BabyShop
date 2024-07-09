<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Thay đổi mật khẩu</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/q-icon.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>

    <body>

        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 5px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Thay đổi mật khẩu</p>                                        
                                        <form class="mx-1 mx-md-4" action="authen?action=changepassword" method="post">

                                            <input type="hidden" name="user_Id" value="${sessionScope.us.user_Id}"/>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">Mật khẩu cũ</label>
                                                    <input type="password" class="form-control" required name="oldPass"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">Mật khẩu mới</label>
                                                    <input type="password" class="form-control" required name="newPass" oninput="showPasswordCriteria()"/>

                                                    <small id="passwordCriteria" style="color: red; display: none;">
                                                        Có ít nhất 8 ký tự * <br>  
                                                        Có chữ thường (a-z) và chữ in hoa (A-Z) *<br> 
                                                        Có ít nhất một số (0-9) *<br>
                                                    </small>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example3c">Nhập lại mật khẩu mới</label>
                                                    <input type="password" id="form3Example3c" class="form-control" required name="cfPass"/>
                                                </div>
                                            </div>

                                            <div class="d-block mx-4 mb-3 mb-lg-4 text-center">
                                                <button class="btn btn-primary btn-block px-5 w-100" type="submit">Cập nhật</button>
                                            </div>

                                            <c:if test="${not empty ms}">
                                                <p style="color: red">${ms}</p>
                                            </c:if>

                                            <c:choose>
                                                <c:when test="${not empty done and done eq 'Thay đổi mật khẩu thành công'}">
                                                    <script>
                                                        if (confirm("Thay đổi mật khẩu thành công. Bạn có muốn đăng nhập ngay bây giờ?")) {
                                                            window.location.href = "authen?action=login";
                                                        } else {
                                                            window.location.href = "home";
                                                        }
                                                    </script>
                                                </c:when>
                                            </c:choose>

                                            <div class="text-center pt-2">
                                                <a href="home">Quay lại trang chủ</a>
                                            </div>

                                        </form>
                                    </div>

                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                             class="img-fluid" alt="Sample image">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script>
            function showPasswordCriteria() {
                document.getElementById('passwordCriteria').style.display = 'block';
            }
        </script>

    </body>
</html>
