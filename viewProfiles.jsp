<!--@author Phoebe Supang Lasung (2025178325)-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>All Profiles</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #ffe6f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #d63384;
            margin-bottom: 20px;
        }

        .search-box {
            text-align: center;
            margin-bottom: 25px;
        }

        .search-box input[type=text] {
            padding: 10px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #ff99c8;
            outline: none;
        }

        .search-box input[type=submit] {
            padding: 10px 18px;
            background: #ff4d94;
            border: none;
            color: white;
            border-radius: 6px;
            cursor: pointer;
            margin-left: 5px;
        }

        .search-box input[type=submit]:hover {
            background: #e60073;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        th {
            background: #ff4d94;
            color: white;
            padding: 12px;
            font-size: 14px;
        }

        td {
            padding: 12px;
            border-bottom: 1px solid #ffd1e6;
        }

        tr:hover {
            background: #ffe6f2;
        }

        .footer-link {
            display: block;
            width: fit-content;
            margin: 25px auto 0;
            text-decoration: none;
            color: #ff4d94;
            font-weight: bold;
        }

        .footer-link:hover {
            color: #e60073;
        }

        .error {
            text-align: center;
            color: red;
            margin-bottom: 15px;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>All Student Profiles</h2>

    <div class="search-box">
        <form method="get">
            <input type="text" name="sid" placeholder="Enter Student ID">
            <input type="submit" value="Search">
        </form>
    </div>

    <%
        String sid = request.getParameter("sid");

        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection(
                "jdbc:derby://localhost:1527/PersonalProfile2DB",
                "app",
                "app"
            );

            String sql = "SELECT * FROM PROFILE";
            if (sid != null && !sid.trim().isEmpty()) {
                sql += " WHERE student_id = ?";
            }

            PreparedStatement ps = con.prepareStatement(sql);

            if (sid != null && !sid.trim().isEmpty()) {
                ps.setString(1, sid);
            }

            ResultSet rs = ps.executeQuery();
    %>

    <table>
        <tr>
            <th>Name</th>
            <th>Student ID</th>
            <th>Program</th>
            <th>Email</th>
            <th>Hobbies</th>
            <th>Self Introduction</th>
        </tr>

        <%
            while (rs.next()) {
        %>

        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("student_id") %></td>
            <td><%= rs.getString("program") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("hobbies") %></td>
            <td><%= rs.getString("introduction") %></td>
        </tr>

        <% } %>

    </table>

    <%
            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
    %>
        <p class="error">ERROR: <%= e.getMessage() %></p>
    <%
        }
    %>

    <a href="index.html" class="footer-link">Add New Profile</a>

</div>

</body>
</html>
