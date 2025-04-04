<html>
<head>
    <title>Login | Taxi Booking System</title>
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
        .btn-login {
            background-color: #1c2331;
            color: white;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 30px;
            transition: all 0.3s ease-in-out;
        }
        .btn-login:hover {
            background-color: #394867;
        }
        .signup-link a {
            font-weight: bold;
            color: #1c2331;
            transition: color 0.3s ease-in-out;
        }
        .signup-link a:hover {
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
            Login to Your Account (Passenger)
        </div>
        <div class="card-body p-4">
            <form action="user-login" method="post">
                <div class="form-group mb-3">
                    <label>Email Address</label>
                    <input class="form-control" name="login-email" type="email" required placeholder="Enter your email">
                </div>
                <div class="form-group mb-4">
                    <label>Password</label>
                    <input class="form-control" name="login-password" type="password" required placeholder="Enter your password">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-login w-100">Login</button>
                </div>
            </form>

            <div class="text-center mt-3 signup-link">
                <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>
            </div>
            
            <div class="text-center mt-3 signup-link">
                <p><a href="forgotPassword.jsp">Forgot Password?</a></p>
            </div>
        </div>
    </div>
</div>

<%@include file="includes/footer.jsp"%>
</body>
</html>
