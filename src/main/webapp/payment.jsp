<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
    .navbar {
            background-color: #003366;
        }
        .navbar-brand, .nav-link, .nav-link i {
            color: white !important;
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
        body {
            background: url('p2.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container2 {
            background: rgba(255, 255, 255, 0.2); /* Transparent background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(5px);
            width:450px;
        }
        .content-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2, label {
            color: navy;
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
    <div class="content-wrapper">
        <div class="container2 text-center">
            <h2>Pay Library Fine</h2>
            <form action="PaymentServlet" method="post" class="mt-3">
                <div class="mb-3">
                    <label class="form-label">Student ID:</label>
                    <input type="text" name="student_id" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Amount:</label>
                    <input type="number" name="amount" class="form-control" required>
                </div>
                <input type="submit" value="Pay Now" class="btn btn-success">
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
