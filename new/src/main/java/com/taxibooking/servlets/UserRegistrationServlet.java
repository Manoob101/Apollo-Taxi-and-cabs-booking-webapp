package com.taxibooking.servlets;

import com.taxibooking.models.User;
import com.taxibooking.service.UserService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class UserRegistrationServlet extends HttpServlet {
    private final UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Updated to handle firstName and lastName separately
        String name = request.getParameter("name");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(name, email, password);
        boolean success = userService.registerUser(user);

        if (success) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
