<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="includes/head.jsp"%>
    <meta charset="UTF-8">
    <title>FAQs - Taxi Booking System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .faq-search {
            max-width: 500px;
            margin: auto;
        }
        .faq-buttons {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <%@include file="includes/navbar.jsp"%>

    <div class="container mt-5 mb-5" >
        <h2 class="text-center mb-4">Frequently Asked Questions</h2>

        <!-- Search Box -->
        <div class="faq-search">
            <input type="text" id="faqSearch" class="form-control" placeholder="Search for a question...">
        </div>

        <!-- Expand/Collapse Buttons -->
        <div class="faq-buttons mt-3">
            <button class="btn btn-primary me-2" onclick="expandAll()">Expand All</button>
            <button class="btn btn-secondary" onclick="collapseAll()">Collapse All</button>
        </div>

        <div class="accordion" id="faqAccordion">
        
            <!-- Question 1 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        How do I book a taxi?
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        To book a taxi, log in to your account, enter your pickup and drop-off locations, select a taxi type, and confirm your booking.
                    </div>
                </div>
            </div>

            <!-- Question 2 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        What payment methods do you accept?
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        We accept Visa, MasterCard, PayPal, and cash payments upon arrival.
                    </div>
                </div>
            </div>

            <!-- Question 3 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Can I cancel my booking?
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Yes, you can cancel your booking within 30 minutes before the scheduled time. A refund policy may apply.
                    </div>
                </div>
            </div>

            <!-- Question 4 -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                        Is there a customer support service?
                    </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Yes, our customer support is available 24/7 via live chat, phone, and email.
                    </div>
                </div>
            </div>

            <!-- Additional Questions -->
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFive">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive">
                        How much does a ride cost?
                    </button>
                </h2>
                <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        The cost depends on the distance, type of ride, and any surge pricing during peak hours.
                    </div>
                </div>
            </div>

            <div class="accordion-item">
                <h2 class="accordion-header" id="headingSix">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix">
                        How can I contact my driver?
                    </button>
                </h2>
                <div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        You can contact your driver via the in-app messaging system or the call button once your booking is confirmed.
                    </div>
                </div>
            </div>

            <div class="accordion-item">
                <h2 class="accordion-header" id="headingSeven">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven">
                        What happens if I leave something in the taxi?
                    </button>
                </h2>
                <div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Contact customer support immediately. We will assist you in reaching the driver to retrieve your lost item.
                    </div>
                </div>
            </div>

        </div>
    </div>

    <%@include file="includes/footer.jsp"%>

    <!-- JavaScript for Interactivity -->
    <script>
        function expandAll() {
            let items = document.querySelectorAll(".accordion-collapse");
            items.forEach(item => {
                let collapse = new bootstrap.Collapse(item, { toggle: false });
                collapse.show();
            });
        }

        function collapseAll() {
            let items = document.querySelectorAll(".accordion-collapse");
            items.forEach(item => {
                let collapse = new bootstrap.Collapse(item, { toggle: false });
                collapse.hide();
            });
        }

        document.getElementById("faqSearch").addEventListener("keyup", function() {
            let input = this.value.toLowerCase();
            let items = document.querySelectorAll(".accordion-item");

            items.forEach(item => {
                let question = item.querySelector(".accordion-button").innerText.toLowerCase();
                if (question.includes(input)) {
                    item.style.display = "block";
                } else {
                    item.style.display = "none";
                }
            });
        });
    </script>

</body>
</html>

