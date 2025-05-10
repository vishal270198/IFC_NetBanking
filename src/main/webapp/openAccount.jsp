<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Open Account</title>

    <style>
        /* General Styles */
        body {
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        h1 {
            color: #4CAF50;
            font-size: 26px;
            margin-bottom: 20px;
        }

        /* Form Styles */
        label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #555;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.3);
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            font-size: 18px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            font-size: 12px;
            text-align: left;
            margin-bottom: 10px;
        }

        .form-footer {
            margin-top: 15px;
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

    <script>
        function validateForm() {
            let username = document.getElementById("username").value.trim();
            let password = document.getElementById("password").value.trim();
            let amount = document.getElementById("amount").value.trim();
            let accountType = document.getElementById("accType").value;

            let isValid = true;

            // Username Validation
            if (username.length === 0) {
                document.getElementById("usernameError").innerText = "Username is required!";
                isValid = false;
            } else {
                document.getElementById("usernameError").innerText = "";
            }

            // Password Validation
            if (password.length < 8) {
                document.getElementById("passwordError").innerText = "Password must be at least 8 characters!";
                isValid = false;
            } else {
                document.getElementById("passwordError").innerText = "";
            }

            // Amount Validation (Only Numbers Allowed)
            if (amount === "" || isNaN(amount) || parseFloat(amount) <= 0) {
                document.getElementById("amountError").innerText = "Enter a valid amount!";
                isValid = false;
            } else {
                document.getElementById("amountError").innerText = "";
            }

            // Account Type Validation
            if (accountType === "") {
                document.getElementById("accTypeError").innerText = "Please select an account type!";
                isValid = false;
            } else {
                document.getElementById("accTypeError").innerText = "";
            }

            return isValid;
        }
    </script>
</head>

<body>

    <div class="container">
        <h1>Open Your Account</h1>
        <form action="Servic" method="post" onsubmit="return validateForm();">

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter Username" required>
            <span id="usernameError" class="error"></span>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>
            <span id="passwordError" class="error"></span>

            <label for="accType">Account Type:</label>
            <select id="accType" name="accType" required>
                <option value="">Select Account Type</option>
                <option value="Savings">Savings</option>
                <option value="Current">Current</option>
                <option value="Fixed Deposit">Fixed Deposit</option>
            </select>
            <span id="accTypeError" class="error"></span>

            <label for="amount">Initial Deposit Amount:</label>
            <input type="text" id="amount" name="amount" placeholder="Enter Amount" required>
            <span id="amountError" class="error"></span>

            <input type="submit" value="Open Account">

            <input type="hidden" name="id" value="AO">
        </form>

        <div class="form-footer">
            <p>Already have an account? <a href="login.jsp">Login Here</a></p>
        </div>
    </div>

</body>

</html>
