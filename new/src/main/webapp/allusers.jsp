<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="cn.techtutorial.model.User"%>
<%@page import="cn.techtutorial.connection.DbCon"%>

<%
    // Initialize list to store users
    List<User> users = new ArrayList<>();

    try {
        // Establish database connection
        Connection con = DbCon.getConnection();
        if (con != null) {
            PreparedStatement pst = con.prepareStatement("SELECT id, name, email FROM users");
            ResultSet rs = pst.executeQuery();

            // Fetch user details and store them in the list
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                users.add(user);
            }
        } else {
            System.out.println("DEBUG: Database connection failed!");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/includes/head.jsp" %>
    <title>Users List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <%@include file="/includes/navbar.jsp" %>

    <div class="container mt-5">
        <h2 class="text-center mb-4">All Registered Users</h2>

        <table class="table table-striped table-hover table-bordered text-center">
            <thead class="thead-dark bg-dark text-white">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                </tr>
            </thead>
            <tbody>
                <% if (!users.isEmpty()) { %>
                    <% for (User user : users) { %>
                        <tr>
                            <td><%= user.getId() %></td>
                            <td><%= user.getName() %></td>
                            <td><%= user.getEmail() %></td>
                        </tr>
                    <% } %>
                <% } else { %>
                    <tr>
                        <td colspan="3" class="text-center text-danger">No users found.</td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <%@include file="/includes/footer.jsp" %>
</body>
</html>

