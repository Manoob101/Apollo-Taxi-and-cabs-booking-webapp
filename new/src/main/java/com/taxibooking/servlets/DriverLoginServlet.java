package com.taxibooking.servlets;


import com.taxibooking.models.Driver;
import com.taxibooking.service.DriverService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login1")

public class DriverLoginServlet extends HttpServlet {
    private final DriverService driverService = new DriverService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Driver driver = driverService.authenticate(email, password);

        if (driver != null) {
            HttpSession session = request.getSession();
            session.setAttribute("driver", driver);
            response.sendRedirect("driverProfile.jsp");
        } else {
            response.sendRedirect("login.jsp?error=Invalid Credentials");
        }
    }
}
