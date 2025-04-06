<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>One Library - Presidency University</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background: url('p2.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .navbar {
            background-color: #003366;
            padding: 10px;
        }
        .navbar-brand img {
            height: 50px;
        }
        .container {
            text-align: center;
            margin-top: 100px;
            color: white;
        }
        .search-bar {
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="p3.jpg" alt="Presidency University">
            </a>
            <button class="btn btn-light ms-auto" onclick="openLogin()">Log-in</button>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <h1>Presidency Library – Where Curiosity Meets Wisdom.</h1>
        <p>A Universe of Knowledge at Your Fingertips</p>

        <!-- Search Bar -->
        <div class="search-bar">
            <input type="text" class="form-control" placeholder="Enter your search key..." style="width: 50%; margin: auto;">
            <button class="btn btn-success mt-2">Search</button>
        </div>
    </div>

    <script>
        function openLogin() {
            window.location.href = "index.jsp";
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
