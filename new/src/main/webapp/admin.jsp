<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Admin Dashboard</title>

    <!-- Font Awesome -->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

    <!-- Internal CSS -->
    /* General Reset and Body Styling */
body {
    margin: 0;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
    background-color: #f8f9fa;
    overflow-x: hidden;
}

/* Top Navbar Styling */
.sb-topnav {
    background-color: #212529 !important;
    padding: 0.5rem 1rem;
    box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
}

.sb-topnav .navbar-brand {
    font-size: 1.25rem;
    font-weight: 500;
    color: #ffffff;
    padding-left: 1rem;
}

.sb-topnav .btn-link {
    color: #adb5bd;
}

.sb-topnav .form-control {
    background-color: #343a40;
    border: none;
    color: #adb5bd;
    font-size: 0.875rem;
}

.sb-topnav .form-control::placeholder {
    color: #adb5bd;
}

.sb-topnav .btn-primary {
    background-color: #0d6efd;
    border: none;
}

.sb-topnav .nav-link {
    color: #adb5bd;
}

.sb-topnav .nav-link:hover {
    color: #ffffff;
}

.sb-topnav .dropdown-menu {
    background-color: #343a40;
    border: none;
}

.sb-topnav .dropdown-item {
    color: #adb5bd;
    font-size: 0.875rem;
}

.sb-topnav .dropdown-item:hover {
    background-color: #495057;
    color: #ffffff;
}

/* Sidebar Styling */
#layoutSidenav {
    display: flex;
    min-height: 100vh;
}

#layoutSidenav_nav {
    width: 250px;
    background-color: #212529;
    transition: all 0.3s;
}

.sb-sidenav {
    height: 100%;
    background-color: #212529;
    overflow-y: auto;
}

.sb-sidenav-menu {
    padding-top: 1rem;
}

.sb-sidenav-menu-heading {
    padding: 1rem 1.5rem;
    font-size: 0.75rem;
    font-weight: 700;
    text-transform: uppercase;
    color: #6c757d;
}

.sb-sidenav .nav-link {
    display: flex;
    align-items: center;
    padding: 0.75rem 1.5rem;
    color: #adb5bd;
    font-size: 0.875rem;
}

.sb-sidenav .nav-link:hover {
    color: #ffffff;
    background-color: #343a40;
}

.sb-sidenav .nav-link.active {
    color: #ffffff;
    background-color: #0d6efd;
}

.sb-sidenav .sb-nav-link-icon {
    margin-right: 0.5rem;
    font-size: 1rem;
}

.sb-sidenav-footer {
    padding: 1rem;
    background-color: #1c2526;
    color: #adb5bd;
    font-size: 0.875rem;
    position: absolute;
    bottom: 0;
    width: 100%;
}

.sb-sidenav-footer h4 {
    margin: 0;
    font-size: 1rem;
    color: #ffffff;
}

/* Content Area (Dashboard) */
#layoutSidenav_content {
    flex: 1;
    padding: 2rem;
}

#layoutSidenav_content h1 {
    font-size: 2rem;
    font-weight: 500;
    margin-bottom: 1.5rem;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    #layoutSidenav_nav {
        width: 0;
        overflow: hidden;
    }

    #layoutSidenav_nav.active {
        width: 250px;
    }

    #layoutSidenav_content {
        padding: 1rem;
    }
}
</head>

<body class="sb-nav-fixed">

    <!-- Top Navbar -->
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand ps-3" href="admin.jsp">Taxi Booking</a>
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle">
            <i class="fas fa-bars"></i>
        </button>
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </form>

        <!-- User Dropdown -->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fas fa-user fa-fw"></i>
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="logout">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <!-- Layout -->
    <div id="layoutSidenav">
        <!-- Side Navigation -->
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Admin</div>
                        <a class="nav-link" href="admin.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <div class="sb-sidenav-menu-heading">Passenger</div>
                        <a class="nav-link" href="passengerManagement.jsp">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-gear"></i></div>
                            Passenger Management
                        </a>
                        <a class="nav-link" href="passengerDetails.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Passenger Details
                        </a>
                        <div class="sb-sidenav-menu-heading">Driver</div>
                        <a class="nav-link" href="driverManagement.jsp">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-gear"></i></div>
                            Driver Management
                        </a>
                        <a class="nav-link" href="driverDetails.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Driver Details
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    <h4><%= admin.getName() %></h4>
                </div>
            </nav>
        </div>
    </div>

    <!-- Bootstrap JS (Required for dropdown functionality) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
