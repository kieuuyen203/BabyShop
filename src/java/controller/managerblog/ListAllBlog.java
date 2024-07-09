/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BlogDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Blog;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ListAllBlog", urlPatterns = {"/listblog"})
public class ListAllBlog extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                  throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
        BlogDAO dao = new BlogDAO();
        String service = request.getParameter("service");
        request.setAttribute("service", service);

        if (service.equals("blog")) {
            int count = dao.getTotalBlog();
            int pageSize = 6;
            int endPage = 0;
            endPage = count / pageSize;
            if (count % pageSize != 0) {
                endPage++;
            }
            request.setAttribute("end", endPage);
            String index_raw = request.getParameter("index");
            int index = 0;
            if (index_raw == null) {
                index = 1;
            } else {
                index = Integer.parseInt(index_raw);
            }
            List<Blog> list = dao.getAllBlog(index, pageSize);
            request.setAttribute("listBlog", list);
            request.getRequestDispatcher("view/homepage/blog.jsp").forward(request, response);
        }

      if ( service.equals("detail")) {
    String blogId = request.getParameter("blogId");
    int blogID = Integer.parseInt(blogId);
    Blog b = dao.getBlogById(blogID);
    request.setAttribute("blogdetail", b);
    request.getRequestDispatcher("view/homepage/blogDetail.jsp").forward(request, response);
}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
