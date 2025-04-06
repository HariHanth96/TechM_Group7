<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('p2.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .navbar {
            background-color: #003366;
        }
        .navbar-brand,.nav-link  ,.nav-link i {
            color: white !important;
        }
        .nav-link:hover{
        	border-radius:5px;
        	background-color:grey
        }
        .search-bar {
            margin: 20px 0;
        }
        .search-results {
            margin-top: 20px;
        }
        .account-menu {
            position: relative;
            display: inline-block;
        }
        .account-dropdown {
            display: none;
            position: absolute;
            right: 0;
            background: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 5px;
            padding: 10px;
            min-width: 150px;
        }
        .account-menu:hover .account-dropdown {
            display: block;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="home.jsp">Presidency University Library</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="borrow.jsp">Borrow</a></li>
                    <li class="nav-item"><a class="nav-link" href="payment.jsp">Pay Fine</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp"><i class="bi bi-cart"></i> Cart</a></li>
                    <li class="nav-item account-menu">
                        <a class="nav-link" href="#"><i class="bi bi-person-circle"></i> Account</a>
                        <div class="account-dropdown">
                            <p>Welcome, User</p>
                            <a href="#" class="d-block">Profile</a>
                            <a href="#" class="d-block">Change Password</a>
                            <a href="#" class="d-block">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">
        <div class="search-bar">
            <input type="text" id="searchInput" class="form-control" placeholder="Search for books...">
            <div class="row mt-2">
                <div class="col-md-4">
                    <select class="form-select" id="genreFilter">
                        <option value="all">All Genres</option>
                        <option value="fiction">Fiction</option>
                        <option value="nonfiction">Non-Fiction</option>
                        <option value="science">Science</option>
                        <option value="history">History</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <select class="form-select" id="departmentFilter">
                        <option value="all">All Departments</option>
                        <option value="cs">Computer Science</option>
                        <option value="mech">Mechanical</option>
                        <option value="electrical">Electrical</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <select class="form-select" id="availabilityFilter">
                        <option value="all">All Books</option>
                        <option value="online">Online</option>
                        <option value="offline">Offline</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="search-results" id="searchResults">
            <!-- Search results will be displayed here -->
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById("searchInput").addEventListener("input", function() {
            let query = this.value;
            let resultsDiv = document.getElementById("searchResults");
            
            if (query.length > 0) {
                resultsDiv.innerHTML = `<p>Showing results for: <strong>${query}</strong></p>`;
            } else {
                resultsDiv.innerHTML = "";
            }
        });
    </script>
</body>
</html>
