<%@ page import="java.util.Properties, javax.mail.*, javax.mail.internet.*" %>
<%
    // Get form data
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String messageContent = request.getParameter("message");

    // Admin email details
    final String adminEmail = ""; // Change this to your admin's email
    final String fromEmail = ""; // Change to your email
    final String emailPassword = ""; // Use App Password if using Gmail

 // Set email properties
    Properties props = new Properties();
    props.put("mail.smtp.host", ""); // SMTP server
    props.put("mail.smtp.port", ""); // Use a single port (25, 465, 587, or 2525)
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true"); // Enable TLS

    // Create mail session (renamed from session to mailSession)
    Session mailSession = Session.getInstance(props, new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("", "");
        }
    });

    try {
        // Create email message
        Message msg = new MimeMessage(mailSession);
        msg.setFrom(new InternetAddress(fromEmail));
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(adminEmail));
        msg.setSubject("Contact Form Submission: " + subject);
        msg.setText("Name: " + name + "\nEmail: " + email + "\nMessage:\n" + messageContent);

        // Send email
        Transport.send(msg);

        out.println("<script>alert('Message sent successfully!'); window.location='contactUs.jsp';</script>");
    } catch (Exception e) {
        out.println("<script>alert('Error sending message. Please try again later.'); window.location='contactUs.jsp';</script>");
        e.printStackTrace();
    }
%>

