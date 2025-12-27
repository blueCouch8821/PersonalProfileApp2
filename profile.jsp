<!--@author Phoebe Supang Lasung (2025178325)-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.ProfileBean"%>

<%
    ProfileBean p = (ProfileBean) request.getAttribute("profile");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #ffe6f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #d63384;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 25px;
            font-size: 14px;
        }

        .container {
            width: 60%;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }


        .profile-wrapper {
            display: flex;
            justify-content: center;
            width: 100%;
        }

        .profile-box {
            width: 85%;
            border-radius: 15px;
            border: 1px solid #ffd1e6;
            padding: 25px;
            background: #fff5fa;
            box-shadow: 0 8px 18px rgba(255, 77, 148, 0.15);
        }

        .row {
            margin-bottom: 15px;
        }

        .label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
            color: #ff4d94;
        }

        .value {
            color: #333;
        }

        .intro-box {
            margin-top: 10px;
            padding: 12px;
            background: white;
            border-radius: 10px;
            border: 1px solid #ffd1e6;
            color: #444;
        }

        .buttons {
            text-align: center;
            margin-top: 25px;
        }

        .btn {
            text-decoration: none;
            padding: 10px 18px;
            background: #ff4d94;
            color: white;
            border-radius: 8px;
            margin: 0 10px;
            display: inline-block;
        }

        .btn:hover {
            background: #e60073;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Profile Successfully Saved!</h2>
    <p class="subtitle">Here is the student profile information</p>

    <div class="profile-box">
        <div class="row">
            <span class="label">Name:</span>
            <span class="value"><%= p.getName() %></span>
        </div>

        <div class="row">
            <span class="label">Student ID:</span>
            <span class="value"><%= p.getStudentId() %></span>
        </div>

        <div class="row">
            <span class="label">Program:</span>
            <span class="value"><%= p.getProgram() %></span>
        </div>

        <div class="row">
            <span class="label">Email:</span>
            <span class="value"><%= p.getEmail() %></span>
        </div>

        <div class="row">
            <span class="label">Hobbies:</span>
            <span class="value"><%= p.getHobbies() %></span>
        </div>

        <div class="row">
            <span class="label">Self Introduction:</span>
        </div>

        <div class="intro-box">
            <%= p.getIntroduction() %>
        </div>
    </div>

    <div class="buttons">
        <a class="btn" href="index.html">Add Another Profile</a>
        <a class="btn" href="viewProfiles.jsp">View All Profiles</a>
    </div>
</div>

</body>
</html>
