
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/includes/head.jsp" %>
    <title>All Orders</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
     <%@include file="/includes/alternativeNavBar.jsp" %>
    <div class="container mt-5">
        <h2 class="text-center mb-4">All Orders</h2>

        <table class="table table-striped table-hover table-bordered text-center">
            <thead class="thead-dark bg-dark text-white">
                <tr>
                    <th >Order ID</th>
                    <th >User ID</th>
                    <th >Quantity</th>
                    <th >Order Date</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>

    <%@include file="/includes/footer.jsp" %>
</body>
</html>



