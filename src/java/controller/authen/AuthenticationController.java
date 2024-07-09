/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.authen;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import dal.UserDAO;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.Part;
import java.util.Random;
import java.util.UUID;
import model.SendMailOK;
import model.User;
import utils.Encode;

/**
 *
 * @author admin
 */
@MultipartConfig
public class AuthenticationController extends HttpServlet {

    UserDAO usDao = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";
        // dua theo action set url trang chuyen den
        String url;
        switch (action) {
            case "login":
                url = "view/authen/login.jsp";
                break;
            case "logout":
                url = logout(request, response);
                break;
            case "signup":
                url = "view/authen/signup.jsp";
                break;
            case "editprofile":
                url = "view/authen/editprofile.jsp";
                break;
            case "changepassword":
                url = "view/authen/changepassword.jsp";
                break;
            case "resetpassword":
                url = "view/authen/resetpassword.jsp";
                break;
            case "verify":
                url = verifyEmail(request, response);
                break;
            default:
                url = "home";
        }
        // chuyen trang
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get ve action
        String action = request.getParameter("action") != null
                ? request.getParameter("action")
                : "";
        // dua theo action de xu ly request
        String url;
        switch (action) {
            case "login":
                url = loginDoPost(request, response);
                break;
            case "signup":
                url = signUp(request, response);
                break;
            case "editprofile":
                url = editProfile(request, response);
                break;
            case "changepassword":
                url = changepassword(request, response);
                break;
            case "resetpassword":
                url = resetPassword(request, response);
                break;

            default:
                url = "home";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    private String loginDoPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //get ve cac thong tin nguoi dung nhap
        String url;
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        password = Encode.toSHA1(password);
        String rememberMe = request.getParameter("remember_me");
        HttpSession session = request.getSession();
        User us = User.builder().email(email).password(password).build();
        //kiem tra thong tin co trong db k

        //true => trang home
        User u = usDao.login(email, password);
        if (u == null) {

            request.setAttribute("notification", "Sai email hoặc mật khẩu");
            url = "view/authen/login.jsp";
        } else if (!u.isStatus()) {
            request.setAttribute("notification", "Tài khoản chưa được kích hoạt");
            url = "view/authen/login.jsp";
        } else {
            if (rememberMe != null) {
                // tạo cookie
                Cookie cEmail = new Cookie("cEmail", email);
                Cookie cPassword = new Cookie("cPassword", password);

                // set tuổi cho cookie 6 tháng(2 key sẽ tồn tại ở browser 6 tháng)
                cEmail.setMaxAge(60 * 60 * 24 * 30 * 6);
                cPassword.setMaxAge(60 * 60 * 24 * 30 * 6);

                // thêm cookie
                response.addCookie(cEmail);
                response.addCookie(cPassword);
            }
            request.getSession().setAttribute("us", u);
            url = "home";
        }
        //false =quay lai login va thong bao loi
        return url;
    }

    private String logout(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute("us");
        return "home";
    }

    private String signUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url;
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String genderString = request.getParameter("gender");
        boolean gender = Boolean.parseBoolean(genderString);

        if (!password.equals(repassword)) {
            request.setAttribute("notification", "Nhập lại mật khẩu không giống nhau");
            url = "view/authen/signup.jsp";
        } else {
            password = Encode.toSHA1(password);
            User u = usDao.checkUserExist(email.toLowerCase());
            if (!email.matches("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$")) {
                request.setAttribute("notification", "Địa chỉ email không hợp lệ");
                url = "view/authen/signup.jsp";
            } else if (!mobile.matches("^(032|033|034|035|036|037|038|039|096|097|098|086|083|084|085|081|082|088|091|094|070|079|077|076|078|090|093|089|056|058|092|059|099)[0-9]{7}$")) {
                request.setAttribute("notification", "Số điện thoại không hợp lệ");
                url = "view/authen/signup.jsp";
            } else if (password.length() <= 8 || password.length() > 32) {
                request.setAttribute("notification", "Mật khẩu mới của bạn ít hơn 8 ký tự hoặc dài hơn 32 ký tự");
                url = "view/authen/signup.jsp";
            } else if (u == null) {
                String token = UUID.randomUUID().toString();
                User unew = User.builder()
                        .fullName(fullName)
                        .email(email)
                        .mobile(mobile)
                        .password(password)
                        .gender(gender)
                        .verificationToken(token)
                        .status(false)
                        .build();
                // Đăng ký thành công
                usDao.register(unew);

                String verificationLink = "http://localhost:9999/Baby_Shop_Online/authen?action=verify&token=" + token;
                String emailBody = "Xin chào " + fullName + ",<br><br>"
                        + "<span style='color: green;'>Chúng tôi chỉ cần xác minh địa chỉ email của bạn trước khi bạn có thể truy cập G6-Shop.</span><br><br>"
                        + "Vui lòng xác minh địa chỉ email của bạn tại <a href='" + verificationLink + "'>" + verificationLink + "</a><br><br>"
                        + "<span style='color: blue;'>Cảm ơn! – Đội ngũ phát triển G6</span>";

                try {
                    SendMailOK.send("smtp.gmail.com", email, "ductmhe171794@fpt.edu.vn", "phkw pvaj mycc jlys", "Please verify your email", emailBody);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                request.setAttribute("notification", "Vui lòng kiểm tra hòm thư để kích hoạt tài khoản của bạn");
                url = "view/homepage/home.jsp";
            } else {
                request.setAttribute("notification", "Email đã tồn tại");
                url = "view/authen/signup.jsp";
            }
        }
        return url;
    }

    private String editProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        UserDAO ud = new UserDAO();

        try {
            String fullName = request.getParameter("fullName");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            int userId = Integer.parseInt(request.getParameter("userId"));

            Part part = request.getPart("avatar");
            String imagePath = null;
            if (part != null && part.getSubmittedFileName() != null && !part.getSubmittedFileName().trim().isEmpty()) {
                // Sử dụng FilenameUtils.getName để làm sạch tên tệp
                String fileName = org.apache.commons.io.FilenameUtils.getName(part.getSubmittedFileName());
                // Đường dẫn lưu ảnh
                String path = request.getServletContext().getRealPath("/img/avatar/");
                File dir = new File(path);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                File image = new File(dir, fileName);
                part.write(image.getAbsolutePath());
                imagePath = request.getContextPath() + "/img/avatar/" + image.getName();
            }

            // Kiểm tra số điện thoại
            if (!mobile.matches("^(032|033|034|035|036|037|038|039|096|097|098|086|083|084|085|081|082|088|091|094|070|079|077|076|078|090|093|089|056|058|092|059|099)[0-9]{7}$")) {
                request.setAttribute("notification", "Số điện thoại không hợp lệ");
                return "view/authen/editprofile.jsp";
            }

            // Cập nhật hồ sơ người dùng
            ud.editUserProfile(fullName, imagePath, gender, mobile, address, userId);
            User u = ud.getUserById(userId);
            HttpSession session = request.getSession();
            session.setAttribute("us", u);
            session.setAttribute("notification", "Cập nhật hồ sơ thành công");

        } catch (NumberFormatException | IOException | ServletException ex) {
            request.setAttribute("notification", "Có lỗi xảy ra khi cập nhật hồ sơ");
            return "view/authen/editprofile.jsp";
        }

        return "home"; // URL mặc định
    }

    private String changepassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String url;

        int userId = Integer.parseInt(request.getParameter("user_Id"));
        String opass = request.getParameter("oldPass");
        opass = Encode.toSHA1(opass);
        String pass = request.getParameter("newPass");
        pass = Encode.toSHA1(pass);
        String cpass = request.getParameter("cfPass");
        cpass = Encode.toSHA1(cpass);
        String regex = "^(?=.*[a-z])(?=.*[A-Z]).{8,}$";
        UserDAO d = new UserDAO();
        User user = d.getUser(userId, opass);
        if (user == null) {
            request.setAttribute("ms", "Mật khẩu cũ sai");
            url = "view/authen/changepassword.jsp";
        } else if (!pass.matches(regex)) {
            request.setAttribute("ms", "Mật khẩu mới không đạt đủ điều kiện");
            url = "view/authen/changepassword.jsp";
        } else if (!pass.equals(cpass)) {
            request.setAttribute("ms", "Mật khẩu mới hai lần nhập không giống nhau");
            url = "view/authen/changepassword.jsp";
        } else if (pass.equals(opass)) {
            request.setAttribute("ms", "Mật khẩu cũ và mới của bạn giống nhau");
            url = "view/authen/changepassword.jsp";
        } else {
            d.changePassword(userId, pass);
            request.setAttribute("done", "Thay đổi mật khẩu thành công");
            url = "view/authen/changepassword.jsp";
        }

        return url;
    }

    private String resetPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");

        UserDAO userDao = new UserDAO();
        User user = userDao.getUserByEmail(email);

        if (user == null) {
            request.setAttribute("notification", "Email không tồn tại");
            return "view/authen/resetpassword.jsp";
        } else {
            String newPassword = generateRandomPassword(9);
            String Password = Encode.toSHA1(newPassword);
            userDao.updatePassword(email, Password);
            
            try {
                String smtpServer = "smtp.gmail.com";
                String to = user.getEmail();
                String from = "ductmhe171794@fpt.edu.vn";
                String subject = "Reset Password\n";
                String body
                        = "<!DOCTYPE html>\n"
                        + "<html lang=\"en\">\n"
                        + "\n"
                        + "<head>\n"
                        + "</head>\n"
                        + "\n"
                        + "<body>\n"
                        + "    <h3 style=\"color: blue;\">Xin chào " + user.getFullName() + "</h3>\n"
                        + "    <div>Chúng tôi nhận được yêu cầu đặt lại mật khẩu của bạn tại http://localhost:9999/Baby_Shop_Online/home</div>\n"
                        + "    <h4 style=\"color: green;\">Mật khẩu mới của bạn là : " + newPassword + "</h4>\n"
                        + "    <div>Hãy sử dụng mật khẩu được cấp bên trên để đăng nhập lại vào hệ thống.</div>\n"
                        + "    <div>Hi vọng bạn sẽ không quên mật khẩu của mình, nhưng nếu có quên thì liên hệ Admin Minh Đức 0901525399 - G6(3) rất sẵn sàng hỗ trợ bạn.</div>\n"
                        + "    <h3 style=\"color: blue;\">Trân trọng cảm ơn quý khách !</h3>\n"
                        + "\n"
                        + "</body>\n"
                        + "\n"
                        + "</html>";
                String password = "phkw pvaj mycc jlys";
                SendMailOK.send(smtpServer, to, from, password, subject, body);

            } catch (Exception ex) {
                System.out.println("Usage: " + ex.getMessage());
            }
            request.setAttribute("notification", "Hãy kiểm tra hòm thư của bạn");
            return "view/authen/resetpassword.jsp";
        }

    }

    private String generateRandomPassword(int length) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+";
        StringBuilder randomPassword = new StringBuilder();

        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            randomPassword.append(characters.charAt(index));
        }

        return randomPassword.toString();
    }

// Xác thực email
    private String verifyEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        User user = usDao.findByToken(token);
        String url;

        if (user != null && !user.isStatus()) {
            usDao.activateUser(user); // Đánh dấu tài khoản là đã được xác thực
            request.setAttribute("notification", "Tài khoản của bạn đã được xác minh.");
            url = "view/authen/login.jsp";
        } else {
            request.setAttribute("notification", "Liên kết xác minh không hợp lệ hoặc tài khoản đã được kích hoạt.");
            url = "view/authen/login.jsp";
        }

        return url;
    }

}
