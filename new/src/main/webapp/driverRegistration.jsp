<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Register | Taxi Booking System</title>
    <%@include file="includes/head.jsp"%>
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
        .btn-signup {
            background-color: #1c2331;
            color: white;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 30px;
            transition: all 0.3s ease-in-out;
            width: 100%;
        }
        .btn-signup:hover {
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
            Create an Account (Driver)
        </div>

        <% String message = (String) request.getAttribute("message"); %>
        <% String messageType = (String) request.getAttribute("messageType"); %>

        <% if (message != null) { %>
        <p style="color: <%= "success".equals(messageType) ? "green" : "red" %>;">
          <%= message %>
        </p>
        <% } %>

        <div class="card-body p-4">
            <form action="DriverRegistrationServlet" method="post">

                <!-- Full Name -->
                <div class="form-group mb-3">
                    <label for="full-name">Full Name</label>
                    <input class="form-control" id="full-name" name="name" type="text" required placeholder="Enter full name">
                </div>

                <!-- Email Address -->
                <div class="form-group mb-3">
                    <label for="email">Email Address</label>
                    <input class="form-control" id="email" name="email" type="email" required placeholder="Enter email address">
                </div>

                <!--Vehical Type-->
                <div class="form-group mb-3">
                    <label for="type">Vehicle type</label>
                    <select name="type" class="form-select" aria-label="Default select example">
                      <option value="car">Car</option>
                      <option value="van">van</option>
                      <option value="bike">Bike</option>
                    </select>
                </div>

                <!-- Password -->
                <div class="form-group mb-3">
                    <label for="password">Password</label>
                    <input class="form-control" id="password" name="password" type="password" required placeholder="Enter password">
                </div>

                <!-- Confirm Password -->
                <div class="form-group mb-3">
                    <label for="confirm-password">Confirm Password</label>
                    <input class="form-control" id="confirm-password" type="password" required placeholder="Confirm password">
                </div>


                <!-- Sign Up Button -->
                <div class="text-center">
                    <button type="submit" value="Register" class="btn btn-signup">Sign Up</button>
                </div>

            </form>

            <!-- Already Have an Account? -->
            <div class="text-center mt-3 signup-link">
                <p>Already have an account? <a href="login.jsp">Login</a></p>
            </div>
        </div>
    </div>
</div>

<script>
document.querySelector("form").addEventListener("submit", function(event) {
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirm-password").value;

    if (password !== confirmPassword) {
        alert("Passwords do not match!");
        event.preventDefault(); // Stop form submission
    }
});
</script>


<%@include file="includes/footer.jsp"%>

</body>
</html>
