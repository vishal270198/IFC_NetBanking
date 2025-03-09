<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Open Account</title>
    <style>
        /* Reset some default styles */
        body, h1, p {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f8ff; /* Light background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: #fff; /* White background for the form */
            padding: 40px;
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            width: 100%;
            max-width: 500px; /* Limit width of the form */
        }

        h1 {
            text-align: center;
            color: #4CAF50; /* Green color for header */
            margin-bottom: 30px;
            font-size: 28px;
        }

        label {
            font-size: 16px;
            font-weight: 600;
            color: #555;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.3);
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Green submit button */
            color: white;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        input[type="hidden"] {
            display: none;
        }

        footer {
            text-align: center;
            font-size: 14px;
            color: #777;
            position: absolute;
            bottom: 10px;
            width: 100%;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>

<body>

    <div class="container">
        <h1>Open Account</h1>
        <form action="Servic" method="post">
            <label for="accType">Account Type:</label>
            <input type="text" name="accType" id="accType" placeholder="Enter Account Type" required />

            <label for="amount">Amount:</label>
            <input type="text" name="amount" id="amount" placeholder="Enter Amount" required />

            <input type="submit" name="submit" value="Open Account" />

            <input type="hidden" name="id" value="AO" />
        </form>

        <div class="form-footer">
            <p>Already have an account? <a href="login.jsp">Login Here</a></p>
        </div>
    </div>

    <footer>
        &copy; 2025 IFC Banking System. All Rights Reserved.
    </footer>

</body>

</html>
