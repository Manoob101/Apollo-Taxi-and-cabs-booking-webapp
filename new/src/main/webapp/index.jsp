<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Real Time Taxi Booking System</title>

        <%@include file="includes/head.jsp"%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


        <style>
        .card-img-top {
            width: 100%; /* Ensures full width */
            height: 200px; /* Adjust as needed */
            object-fit: cover; /* Maintains aspect ratio without distortion */
        }


        body {
                background-color: #f5f5f5;
            }

        .booking-section {
                max-width: 1150px;
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                margin: 40px auto;
        }

        .tab-buttons .btn {
                flex: 1;
                border-radius: 5px;
        }

        .tab-buttons .btn.active {
                background: #007bff;
                color: white;
        }

        .vehicle-options .btn {
                width: 100px;
                border: 1px solid #ddd;
                background: white;
        }

        .vehicle-options .btn.active {
                background: #ffcc00;
                border-color: #ffcc00;
        }

        </style>


</head>
<body>
<%@include file="includes/navbar.jsp"%>


<!-- Hero Section -->
<section class="py-5 text-center bg-light">
    <div class="container">
        <h1 class="fw-bold">Book Your Taxi in Real Time</h1>
        <p class="lead">Fast, Reliable, and Affordable Taxi Service at Your Fingertips</p>
        <a href="booking.jsp" class="btn btn-primary btn-lg">Book Now</a>

    </div>


  <div class="container my-4">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6">
            <div class="input-group shadow-sm rounded">
                <input type="text" class="form-control form-control-lg border-end-0" placeholder="Search..." aria-label="Search" aria-describedby="search-button">
                <button class="btn btn-primary btn-lg rounded-end" type="button" id="search-button">
                    <i class="bi bi-search"></i> <!-- Search Icon -->
                </button>
            </div>
        </div>
    </div>
</div>


<h2 class="text-center mb-4">Our Services</h2>
<div class="container">
  <div class="row">
    <div class="card-group">
        <div class="card">
            <img class="card-img-top" src="product-images/image_1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Real time Booking Experience</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
        </div>
            <div class="card">
                <img class="card-img-top" src="product-images/image_2.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
            </div>
  <div class="card">
    <img class="card-img-top" src="product-images/image_3.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
</div>

</div>
</div>


<section class="booking-section">
        <!-- Tab Buttons -->
        <div class="d-flex tab-buttons mb-3">
            <button class="btn btn-light active">Airport Pickup</button>
            <button class="btn btn-light">Airport Drop</button>
            <button class="btn btn-light">Ride Now</button>
            <button class="btn btn-light">Tours</button>
        </div>

        <!-- Booking Form -->
        <h5>Select a Vehicle</h5>
        <div class="d-flex flex-wrap vehicle-options mb-3">
            <button class="btn btn-light mr-2 mb-2 active">Budget</button>
            <button class="btn btn-light mr-2 mb-2">City</button>
            <button class="btn btn-light mr-2 mb-2">Semi</button>
            <button class="btn btn-light mr-2 mb-2">Car</button>
            <button class="btn btn-light mr-2 mb-2">9 Seater</button>
            <button class="btn btn-light mb-2">14 Seater</button>
        </div>

        <!-- Location & Time Inputs -->
        <div class="form-group">
            <label>Pickup Location</label>
            <input type="text" class="form-control" placeholder="BIA Arrival Terminal, Kat">
        </div>

        <div class="form-group">
            <label>Drop Location</label>
            <input type="text" class="form-control" placeholder="Enter drop location">
        </div>

        <div class="form-group">
            <label>Pickup Date  Time</label>
            <input type="datetime-local" class="form-control">
        </div>

        <!-- Booking Details -->
        <div class="bg-light p-3 rounded mb-3">
            <strong>Suzuki Alto</strong> <a href="#">View</a> <br>
            <small>Est. LKR 0.00</small><br>
            <small>3 passengers • Limited baggage • Air Conditioned</small>
        </div>

        <!-- Book Now Button -->
        <button class="btn btn-primary btn-block">Book Now</button>
    </section>


     <script>
            // Vehicle selection toggle
            $(".vehicle-options .btn").click(function() {
                $(".vehicle-options .btn").removeClass("active");
                $(this).addClass("active");
            });

            // Tab selection toggle
            $(".tab-buttons .btn").click(function() {
                $(".tab-buttons .btn").removeClass("active");
                $(this).addClass("active");
            });
        </script>


        <div class="container my-4">
            <div class="card-header d-flex flex-column flex-sm-row justify-content-between align-items-center p-4 bg-light border rounded shadow-sm">
                <h5 class="mb-0 text-primary">Vehicle Types</h5>

                <!-- Dropdown Button -->
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-primary">Select Type</button>
                    <button type="button" class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="visually-hidden">Toggle Dropdown</span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>
                </div>
            </div>

            <!-- Tooltip Buttons -->
            <div class="d-flex flex-wrap gap-4 justify-content-center justify-content-sm-start mt-3">
                <button type="button" class="btn btn-outline-info btn-lg" style="margin-left:4px" data-bs-toggle="tooltip" data-bs-placement="top" title="Government Taxies">
                    Government Taxies
                </button>
                <button type="button" class="btn btn-outline-info btn-lg" style="margin-left:4px" data-bs-toggle="tooltip" data-bs-placement="right" title="Private Taxies">
                    Private Taxies
                </button>
                <button type="button" class="btn btn-outline-info btn-lg" style="margin-left:4px" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Highway Taxies">
                    Highway Taxies
                </button>
                <button type="button" class="btn btn-outline-info btn-lg"  style="margin-left:4px" data-bs-toggle="tooltip" data-bs-placement="left" title="VIP Taxies">
                    VIP Taxies
                </button>
            </div>
        </div>

        <!-- Initialize Bootstrap Tooltips -->
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
                tooltipTriggerList.forEach(function (tooltip) {
                    new bootstrap.Tooltip(tooltip);
                });
            });
        </script>

        <div class="container mt-5">
            <h2 class="text-center mb-4">Available Vehicles</h2>
            <div class="row">

                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card shadow-sm">
                                <!-- Dynamically set image path -->
                                <img class="card-img-top" src="" alt="">
                                <div class="card-body text-center">
                                    <h5 class="card-title"></h5>
                                    <h6 class="price">Price: </h6>
                                    <h6 class="category">Category:</h6>
                                    <div class="mt-3 d-flex justify-content-between">
                                        <a href="" class="btn btn-primary">Book Now</a>
                                        <a href="" class="btn btn-outline-primary">Pay Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <p class="text-center">No vehicles available.</p>

            </div>
        </div>


</section>

<%@include file="includes/footer.jsp"%>


</body>
</html>