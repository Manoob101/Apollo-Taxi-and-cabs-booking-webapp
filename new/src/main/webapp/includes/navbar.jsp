
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">


<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #1c2331; padding: 15px 0; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
    <div class="container">
       
      <a class="navbar-brand text-white fw-bold fs-4" href="index.jsp">
      <i class="fa-solid fa-taxi me-4"></i>
    <i class=" fa-solid text-warning mt-3"><p>Real Time Taxi Booking System</p></i>
    
</a>

       
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

       
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav align-items-center">
                <li class="nav-item">
                    <a class="nav-link text-white fw-semibold px-3" href="index.jsp">Home</a>
                </li>
                
                
                 <li class="nav-item row">
                    <a class="nav-link text-white fw-semibold px-3" href="cart.jsp">Pending Tickets  <span class="badge badge-danger">${cart_list.size()}</span></a>
                     
                </li>
                
                <li class="nav-item">
                    <a class="nav-link text-white fw-semibold px-3" href="contactUs.jsp">Contact Us</a>
                </li>
                

                
                     
                	
                	<li class="nav-item">
                    <a class="nav-link text-white fw-semibold px-3" href="orders.jsp">Tickets</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link text-white fw-semibold px-3" href="user-logout">Logout</a>
                    </li>
                    
                    
                     <a class="navbar-brand text-white fw-bold fs-4" href="index.jsp">
                    <i class="fa-solid fa-taxi me-4"></i>
                     </a>
                	

                
                  
 
                	<li class="nav-item">
                         <a class="btn btn-outline-warning fw-bold px-4 py-2 mx-2" href="login.jsp" style="border-radius: 30px;">Book now</a>
                     </li>
                
                     <li class="nav-item">
                         <a class="btn btn-outline-light fw-bold px-4 py-2 mx-2" href="login.jsp" style="border-radius: 30px;">Login</a>
                     </li>
                     
                     <li class="nav-item">
                     <a class="btn btn-primary fw-bold px-4 py-2" href="userRegistration.jsp" style="border-radius: 30px; background-color: #007bff; border: none;">Sign Up</a>
                 </li>
                	

                
                
               
               
            </ul>
        </div>
    </div>
</nav>




