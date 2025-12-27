<!--@author Phoebe Supang Lasung (2025178325)-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Profile Display</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #fce4ec;
            margin: 0;
            padding: 40px 20px;
            line-height: 1.6;
        }
        
        .container {
            max-width: 700px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(233, 30, 99, 0.2);
        }
        
        h1 {
            color: #c2185b;
            text-align: center;
            margin-bottom: 30px;
        }
        
        .profile-details {
            background: #fce4ec;
            padding: 25px;
            border-radius: 6px;
            border-left: 4px solid #e91e63;
        }
        
        .info-row {
            margin-bottom: 15px;
            display: flex;
        }
        
        .info-label {
            font-weight: bold;
            color: #c2185b;
            width: 120px;
            min-width: 120px;
        }
        
        .info-value {
            color: #333;
            flex: 1;
        }
        
        .back-btn {
            display: block;
            width: 200px;
            margin: 30px auto 0;
            padding: 10px;
            background: #e91e63;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
        }
        
        .back-btn:hover {
            background: #c2185b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Personal Profile</h1>
        
        <div class="profile-details">
            <div class="info-row">
                <div class="info-label">Full Name:</div>
                <div class="info-value"><%= request.getAttribute("name") %></div>
            </div>
            <div class="info-row">
                <div class="info-label">Student ID:</div>
                <div class="info-value"><%= request.getAttribute("studentId") %></div>
            </div>
            <div class="info-row">
                <div class="info-label">Program:</div>
                <div class="info-value"><%= request.getAttribute("program") %></div>
            </div>
            <div class="info-row">
                <div class="info-label">Email:</div>
                <div class="info-value"><%= request.getAttribute("email") %></div>
            </div>
            <div class="info-row">
                <div class="info-label">Hobbies:</div>
                <div class="info-value"><%= request.getAttribute("hobbies") %></div>
            </div>
            <div class="info-row">
                <div class="info-label">Short Self-Introduction:</div>
                <div class="info-value"><%= request.getAttribute("introduction") %></div>
            </div>
        </div>
        
        <a href="index.html" class="back-btn">Back to Form</a>
    </div>
</body>
</html>
