<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="cn.techtutorial.model.*" %>



    <%@ include file="includes/head.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact Us</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap"></script>

    <style>
        body { font-family: 'Poppins', sans-serif; background-color: #f4f4f4;   }
        .contact-section { padding: 60px 0; }
        .contact-wrap {
            background: white; padding: 40px; border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }
        #map { height: 350px; width: 100%; border-radius: 12px; }
        .btn-primary {
            background-color: #007bff; border: none; transition: 0.3s;
        }
        .btn-primary:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <%@ include file="includes/navbar.jsp" %>

    <section class="contact-section">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="fw-bold">Get in Touch</h2>
                <p class="text-muted">We'd love to hear from you! Feel free to drop us a message.</p>
            </div>
            <div class="row g-4">
                <div class="col-lg-7">
                    <div class="contact-wrap">
                        <h3 class="mb-4">Contact Us</h3>
                        <form method="POST" action="sendEmail.jsp">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Full Name</label>
                                    <input type="text" class="form-control" name="name" placeholder="Your Name" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Email Address</label>
                                    <input type="email" class="form-control" name="email" placeholder="Your Email" required>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label">Subject</label>
                                    <input type="text" class="form-control" name="subject" placeholder="Subject" required>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="form-label">Message</label>
                                    <textarea name="message" class="form-control" rows="4" placeholder="Your Message" required></textarea>
                                </div>
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-primary w-100 py-2">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 d-flex flex-column align-items-center">
                    <div id="map"></div>
                    <select id="mapType" class="form-select mt-3 w-75">
                        <option value="roadmap">Roadmap</option>
                        <option value="satellite">Satellite</option>
                        <option value="hybrid">Hybrid</option>
                        <option value="terrain">Terrain</option>
                    </select>
                </div>
            </div>
        </div>
    </section>

    <script>
        function initMap() {
            var mapOptions = {
                center: { lat: 40.7128, lng: -74.0060 },
                zoom: 12,
                mapTypeId: 'roadmap'
            };
            var map = new google.maps.Map(document.getElementById('map'), mapOptions);
            document.getElementById('mapType').addEventListener('change', function() {
                map.setMapTypeId(this.value);
            });
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file="includes/footer.jsp" %>
</body>
</html>
