<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Banking Operations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9ecef; /* Light background for the body */
            color: #333;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            margin: 0;
        }

        .container {
            padding: 40px;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap; /* Allow wrapping of buttons to the next row */
            justify-content: center; /* Center buttons horizontally */
            gap: 20px; /* Adds space between buttons */
        }

        .button-container a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #FFB6C1; /* Light pink color */
            padding: 10px 15px;
            border-radius: 10px; /* Rounded corners */
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 40%; /* Set width to 40% to have two buttons per row */
            min-width: 100px; /* Minimum width for responsiveness */
            text-align: center;
        }

        .button-container a:hover {
            background-color: #FF69B4; /* Darker pink on hover */
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
             border-radius: 10px; /* Rounded corners */
        }
    </style>
</head>
<body>

<h1>WELCOME TO IFC NET BANKING SYSTEM</h1>

<div class="container">
    <div class="button-container">
        <a href="openAccount.jsp">OPEN NEW ACCOUNT</a>
        <a href="deposit.jsp">DEPOSIT MONEY</a>
        <a href="withdraMoney.jsp">WITHDRAWAL MONEY</a>
        <a href="balEnq.jsp">BALANCE ENQUIRY</a>
        <a href="moneyTrans.jsp">MONEY TRANSFER</a>
        <a href="printDetails.jsp">PRINT ACCOUNT DETAILS</a>
        <a href="closeAcc.jsp">CLOSE ACCOUNT</a>
    </div>
</div>

<footer>
    &copy; 2025 Banking System. All Rights Reserved.
</footer>

</body>
</html>
