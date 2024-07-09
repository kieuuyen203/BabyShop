/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.managerblog;

import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDate;
import model.Blog;

/**
 *
 * @author ADMIN
 */
@MultipartConfig
@WebServlet(name = "AddBlog", urlPatterns = {"/addblog"})
public class AddBlog extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            request.getRequestDispatcher("view_admin/addBlog.jsp").forward(request, response);
    
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            request.getRequestDispatcher("view_admin/addBlog.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            LocalDate curDate = java.time.LocalDate.now();
            String date = curDate.toString();

            String title = request.getParameter("title").trim().toUpperCase();
            String description = request.getParameter("content").trim();
            String heading = request.getParameter("heading").trim();

            Part part = request.getPart("image");

            String realPath = request.getServletContext().getRealPath("/img2");
            String fileName = Path.of(part.getSubmittedFileName()).getFileName().toString();
                    String fileExtension = fileName.substring(fileName.lastIndexOf('.') + 1).toLowerCase();

             if (title.isEmpty() || description.isEmpty() || heading.isEmpty()) {
            request.setAttribute("error", "Không được bỏ trống ô này!");
            request.getRequestDispatcher("view_admin/addBlog.jsp").forward(request, response);
        }
             if (!fileExtension.equals("jpg") && !fileExtension.equals("png") && !fileExtension.equals("svg")&& !fileExtension.equals("JPEG")&& !fileExtension.equals("PSD")) {
            request.setAttribute("error", "Hãy chọn file ảnh");
            request.getRequestDispatcher("view_admin/addBlog.jsp").forward(request, response);
        }
            // Debug: In ra giá trị để kiểm tra
            System.out.println("Real Path: " + realPath);
            System.out.println("File Name: " + fileName);
             try {
            BlogDAO dao = new BlogDAO();

            if (!Files.exists(Path.of(realPath))) {
                Files.createDirectories(Path.of(realPath));
            }

            part.write(realPath + "/" + fileName);

            Blog b = new Blog();
            b.setTitle(title);
            b.setDescription(description);
            b.setHeading(heading);
            b.setImage(fileName);
            b.setCreateDate(date);
            dao.addBlog(b);
        response.sendRedirect("listblogadmin?service=getAll");
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
            request.setAttribute("error", "Thêm bài viết thất bại: " + e.getMessage());
            request.getRequestDispatcher("view_admin/addBlog.jsp").forward(request, response);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
