package com.taxibooking.servlets;


import com.taxibooking.models.Admin;
import com.taxibooking.service.AdminService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login2")

public class AdminLoginServlet extends HttpServlet {
    private final AdminService adminService = new AdminService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Admin admin= adminService.authenticate(email, password);

        if (admin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);
            response.sendRedirect("admin.jsp");
        } else {
            response.sendRedirect("login.jsp?error=Invalid Credentials");
        }
    }
}
