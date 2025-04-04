package com.taxibooking.servlets;

import com.taxibooking.models.Driver;
import com.taxibooking.service.DriverService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class DriverRegistrationServlet extends HttpServlet {
    private final DriverService driverService = new DriverService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Updated to handle firstName and lastName separately
        String name = request.getParameter("name");

        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String password = request.getParameter("password");

        Driver driver = new Driver(name, email, type,password);
        boolean success = driverService.registerDriver(driver);

        if (success) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
