<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.taxibooking.models.Driver" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
</head>
<body>

<%-- Ensure session exists and driver is logged in --%>
<%
    Driver driver = (Driver) session.getAttribute("driver");

    if (driver == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<h2>Welcome, <%= driver.getName() %></h2>
<p>Email: <%= driver.getEmail() %></p>


</body>
</html>
