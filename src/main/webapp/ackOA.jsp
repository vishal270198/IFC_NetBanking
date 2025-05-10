<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Account Opening</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F5FFFA; /* Mint cream */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            text-align: center;
        }

        .container {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 90%;
            margin-top: 20px;
        }

        h1 {
            color: #2E8B57;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #444;
            margin: 10px 0;
        }

        .balance {
            font-weight: bold;
            font-size: 20px;
            color: #006400;
        }

        a {
            display: inline-block;
            margin: 15px 10px;
            padding: 10px 20px;
            background-color: #32CD32;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #228B22;
        }

        .datetime {
            font-size: 14px;
            color: #333;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- Account Opening Message -->
        <h1>Account Opened Successfully!</h1>
        <p>Your account has been successfully opened with the following details:</p>

        <% 
            // Retrieving account number from session
            int accountNumber = (Integer) session.getAttribute("accNo");
        %>
        <p>Your Account Number is: <strong><%= accountNumber %></strong></p>

        <!-- Navigation Links -->
        <a href="index.jsp">🏦 Back to Banking</a>
        <a href="Logout.jsp">🚪 Logout</a>
    </div>

    <!-- Date and Time Display Below the Message -->
    <div class="datetime" id="datetime"></div>

    <!-- JavaScript for Date and Time -->
    <script>
        function updateDateTime() {
            const now = new Date();
            const dateTime = now.toLocaleString(); // Formats date and time
            document.getElementById('datetime').textContent = "Current Date and Time: " + dateTime;
        }

        // Update the date and time every second
        setInterval(updateDateTime, 1000);
    </script>

</body>
</html>
