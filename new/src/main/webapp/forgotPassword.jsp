<%--
  Created by IntelliJ IDEA.
  User: Dewmi Silva
  Time: 9:00 PM
  Updated : 2/27/2025
  Forgot Password Page
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.techtutorial.connection.DbCon"%>
<%@ page import="cn.techtutorial.model.*" %>

<html>
<head>
    <title>Forgot Password | Taxi Booking System</title>
    <%@include file="includes/head.jsp"%>
    
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        /* Custom Styles */
        body {
            background-color: #f4f6f9;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            font-size: 1.5rem;
            font-weight: bold;
            background-color: #1c2331;
            color: white;
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
        }
        .form-group label {
            font-weight: 600;
        }
        .form-control {
            border-radius: 8px;
            padding: 10px;
            font-size: 1rem;
        }
        .btn-reset {
            background-color: #1c2331;
            color: white;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 30px;
            transition: all 0.3s ease-in-out;
            width: 100%;
        }
        .btn-reset:hover {
            background-color: #394867;
        }
        .login-link a {
            font-weight: bold;
            color: #1c2331;
            transition: color 0.3s ease-in-out;
        }
        .login-link a:hover {
            color: #394867;
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%@include file="includes/navbar.jsp"%>

<div class="container">
    <div class="card w-50 mx-auto my-5">
        <div class="card-header text-center">
            Reset Your Password
        </div>
        <div class="card-body p-4">
            <form action="ForgotPasswordServlet" method="post">
                <div class="form-group mb-3">
                    <label>Enter Your Email Address</label>
                    <input class="form-control" name="reset-email" type="email" required placeholder="Enter your email">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-reset">Send Reset Link</button>
                </div>
            </form>
            
            <div class="text-center mt-3 login-link">
                <p>Remembered your password? <a href="login.jsp">Login here</a></p>
            </div>
        </div>
    </div>
</div>

<%@include file="includes/footer.jsp"%>
</body>
</html>

