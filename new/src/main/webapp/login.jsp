<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Register | Taxi Booking System</title>
    <%@include file="includes/head.jsp"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</head>

<body>

<%@include file="includes/navbar.jsp"%>

<br><br><br>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="card text-center" style="width: 100%;">
                <a href="userLogin.jsp" class="text-decoration-none text-dark">
                    <img src="product-images/image_1.jpg" class="card-img-top" alt="Passenger">
                    <div class="card-body">
                        <h2 class="fw-bold">Passenger</h2>
                    </div>
                </a>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card text-center" style="width: 100%;">
                        <a href="driverLogin.jsp" class="text-decoration-none text-dark">
                            <img src="product-images/image_1.jpg" class="card-img-top" alt="Passenger">
                            <div class="card-body">
                                <h2 class="fw-bold">Driver</h2>
                            </div>
                        </a>
                    </div>
        </div>

        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="card text-center" style="width: 100%;">
                <a href="adminLogin.jsp" class="text-decoration-none text-dark">
                    <img src="product-images/image_1.jpg" class="card-img-top" alt="Driver">
                    <div class="card-body">
                        <h2 class="fw-bold">Admin</h2>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>



<br><br><br><br>



<%@include file="includes/footer.jsp"%>

</body>
</html>
