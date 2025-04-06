<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('presidency1.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-container {
            background: none; /* More transparent */
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            width: 650px;
            text-align: center;
        }
        h1 {
            color: navy;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1 class="mb-4">Welcome to the Presidency Library</h1>
        <button class="btn btn-primary btn-lg w-100 mb-2" onclick="location.href='studentLogin.jsp'">Student Login</button>
        <button class="btn btn-secondary btn-lg w-100" onclick="location.href='facultyLogin.jsp'">Faculty Login</button>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
