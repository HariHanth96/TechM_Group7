<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Collect Your Book</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: url('p2.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(5px);
        }
        .content-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2, p {
            color: navy;
        }
    </style>
</head>
<body>
    <div class="content-wrapper">
        <div class="container text-center">
            <h2>Book Collection Details</h2>
            <p>Your book has been successfully borrowed. Please collect it from the library counter.</p>
            <p><strong>Library Address:</strong> XYZ Library, Presidency University, Bangalore</p>
            <p><strong>Collection Timings:</strong> 9 AM - 5 PM (Monday to Friday)</p>
            <p><strong>Borrowed Date:</strong> <span id="borrowDate"></span></p>
            <p><strong>Return Date:</strong> <span id="returnDate"></span></p>
            <a href="home.jsp" class="btn btn-primary">Back to Home</a>
        </div>
    </div>
    <script>
        let today = new Date();
        let returnDate = new Date();
        returnDate.setDate(today.getDate() + 7); // Set return date to 7 days later

        document.getElementById("borrowDate").textContent = today.toDateString();
        document.getElementById("returnDate").textContent = returnDate.toDateString();
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
