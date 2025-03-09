<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }
        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input[type="radio"] {
            width: auto;
        }
        .error {
            color: red;
            font-size: 12px;
        }
        .btn-container {
            text-align: center;
        }
        .btn-container button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            margin: 5px;
        }
        .btn-container button[type="submit"] {
            background-color: #28a745;
            color: white;
        }
        .btn-container button[type="reset"] {
            background-color: #dc3545;
            color: white;
        }
    </style>
    <script type="text/javascript">
        function validateName() {
            var fullname = document.getElementById("uname").value;
            if (fullname.trim().length == 0) {
                document.getElementById("fullnameerror").innerHTML = "Please enter your full name";
                return false;
            } else {
                document.getElementById("fullnameerror").innerHTML = "";
                return true;
            }
        }

        function validatePassword() {
            var password = document.getElementById("password").value;
            if (password.trim().length == 0) {
                document.getElementById("passworderror").innerHTML = "Please enter a password";
                return false;
            }
            if (password.length < 10) {
                document.getElementById("passworderror").innerHTML = "Password must be at least 10 characters long";
                return false;
            }
            if (!password.includes('@')) {
                document.getElementById("passworderror").innerHTML = "Password must contain '@'";
                return false;
            } else {
                document.getElementById("passworderror").innerHTML = "";
                return true;
            }
        }

        function validateType() {
            var type = document.getElementById("accType").value;
            if (type.trim().length == 0) {
                document.getElementById("accTypeerror").innerHTML = "Please select an account type";
                return false;
            } else {
                document.getElementById("accTypeerror").innerHTML = "";
                return true;
            }
        }

        function validateAmount() {
            var amount = document.getElementById("amount").value;
            if (amount < 5000) {
                document.getElementById("amounterror").innerHTML = "Amount must be at least 5000";
                return false;
            } else {
                document.getElementById("amounterror").innerHTML = "";
                return true;
            }
        }

        function validateGender() {
            var gender = document.getElementsByName("gender");
            var flag = 0;
            for (var i = 0; i < gender.length; i++) {
                if (gender[i].checked) {
                    flag = 1;
                    break;
                }
            }
            if (flag == 1) {
                document.getElementById("gendervalidationerror").innerHTML = "";
                return true;
            } else {
                document.getElementById("gendervalidationerror").innerHTML = "Please select gender";
                return false;
            }
        }

        function validate() {
            if (validateName() && validatePassword() && validateType() && validateAmount() && validateGender()) {
                return true; // Allow form submission
            }
            return false; // Prevent form submission
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Create an Account</h2>
        <form action="Login" method="post">
        
            <div class="form-group">
                <label for="uname">Username:</label>
                <input type="text" id="uname" name="uname" required>
                <span id="fullnameerror" class="error"></span>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <span id="passworderror" class="error"></span>
            </div>

            <div class="form-group">
                <label for="accType">Account Type:</label>
                <select id="accType" name="accType">
                    <option value="">Select Account Type</option>
                    <option value="savings">Savings</option>
                    <option value="current">Current</option>
                </select>
                <span id="accTypeerror" class="error"></span>
            </div>

            <div class="form-group">
                <label for="amount">Initial Deposit Amount:</label>
                <input type="number" id="amount" name="amount" required>
                <span id="amounterror" class="error"></span>
            </div>

            <div class="btn-container">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
                  <input type="hidden" id="new" name="new" />
            </div>
       </form>
    </div>
            
</body>
</html>
