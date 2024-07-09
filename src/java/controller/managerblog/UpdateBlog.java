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
@WebServlet(name = "UpdateBlog", urlPatterns = {"/updateblog"})
public class UpdateBlog extends HttpServlet {
   
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateBlog</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateBlog at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String blogId = request.getParameter("blogId");
        BlogDAO dao = new BlogDAO();
        try {
            int id = Integer.parseInt(blogId);
            Blog b = dao.getBlogById(id);
            request.setAttribute("data", b);
            request.getRequestDispatcher("view_admin/updateBlog.jsp").forward(request, response);
        } catch (NumberFormatException | ServletException | IOException e) {
        }
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
       try {
            LocalDate curDate = LocalDate.now();
            String date = curDate.toString();

            String blogIdStr = request.getParameter("blogId");
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String heading = request.getParameter("heading");
            Part part = request.getPart("image");

            String realPath = request.getServletContext().getRealPath("/img2");
            String fileName = part != null ? Path.of(part.getSubmittedFileName()).getFileName().toString() : "";

             // Debug: In ra giá trị để kiểm tra
            System.out.println("Real Path: " + realPath);
            System.out.println("File Name: " + fileName);

            int blogId = Integer.parseInt(blogIdStr);
            BlogDAO dao = new BlogDAO();

            if (!Files.exists(Path.of(realPath))) {
                Files.createDirectories(Path.of(realPath));
            }

            if (part != null && fileName != null && !fileName.isEmpty()) {
                part.write(realPath + "/" + fileName);
            }

            Blog b = new Blog();
            b.setTitle(title);
            b.setDescription(description);
            b.setHeading(heading);
            b.setImage(fileName);
            b.setUpdateDate(date);
            b.setBlogId(blogId);
            dao.updateBlog(b);

            request.getRequestDispatcher("listblogadmin?service=getAll").forward(request, response);
        } catch (NumberFormatException | ServletException | IOException e) {
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
