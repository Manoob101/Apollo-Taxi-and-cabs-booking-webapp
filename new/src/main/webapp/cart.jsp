

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Pending Booking Requests</title>
    <%@include file="includes/head.jsp"%>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<style type="text/css">
   .table tbody td{
   
      verticle-align : middle;
      
   }
   
   .btn-incre, .btn-decre{
      box-shadow:none;
      font-size:25px;
      
   }
</style>


<body>

 <%@include file="includes/navbar.jsp"%>

<section class="container mt-5 mb-5 p-4 shadow-lg bg-white rounded">

    <div class="d-flex align-items-center justify-content-between py-3">
    <h5 class="mb-0 fw-semibold text-dark ">Estimated Total: $ <span class="text-success"> </span></h5>
    <a class="btn btn-danger fw-bold px-4" href="CheckOutServlet">Check Out</a>
</div>


    <table class="table table-striped table-hover table-bordered text-center">
			<thead class="thead-dark bg-dark text-white">
            <tr>
                <th>#</th>
               
                <th>Passenger Name</th>
                <th>Taxi Category</th>
                <th>Price</th>
                <th>Number of Tickets  </th>
                <th>Cancel Ride</th>
                <th>Status</th>
                
            </tr>
        </thead>
        
        <tbody>
        

            
        </tbody>
    </table>
</section>


    <%@include file="includes/footer.jsp"%>
</body>
</html>
