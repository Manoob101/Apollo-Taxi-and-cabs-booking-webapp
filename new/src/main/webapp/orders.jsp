
<!DOCTYPE html>
<html>
<head>
    <%@include file="/includes/head.jsp"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <title>Tickets Booked</title>

    <style>
        .table tbody td {
            vertical-align: middle;
        }
        .btn-incre, .btn-decre {
            box-shadow: none;
            font-size: 25px;
        }
    </style>

    
</head>
<body>
    
   <%@include file="/includes/navbar.jsp"%>
    <section class="container mt-5 mb-5 p-4 shadow-lg bg-white rounded">
        <div class="d-flex align-items-center justify-content-between py-3">
            <h5 class="mb-0 fw-semibold text-dark">All Orders</h5>
            <h6 class="text-muted">Total Orders: <span class="badge bg-primary"></span></h6>
        </div>
        
         <script>
        function searchOrders() {
            let input = document.getElementById("searchInput").value.toLowerCase();
            let table = document.getElementById("ordersTable");
            let tr = table.getElementsByTagName("tr");

            for (let i = 1; i < tr.length; i++) {
                let td = tr[i].getElementsByTagName("td")[1]; // Column index for Name
                if (td) {
                    let textValue = td.textContent || td.innerText;
                    tr[i].style.display = textValue.toLowerCase().includes(input) ? "" : "none";
                }
            }
        }
    </script>

        <!-- Search Bar -->
        <div class="mb-3">
            <input type="text" id="searchInput" onkeyup="searchOrders()" class="form-control" placeholder="Search by Name">
        </div>

        <table class="table table-striped table-hover table-bordered text-center" id="ordersTable">
            <thead class="thead-dark bg-dark text-white">
                <tr>
                    <th scope="col">Date</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                    <th scope="col">Cancel</th>
                    <th scope="col">Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                </tr>
            </tbody>
        </table>
    </section>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>
