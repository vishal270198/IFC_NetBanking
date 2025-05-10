<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DEPOSIT MONEY</title>

  <style>
        body, h1, p {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        h1 {
            text-align: center;
            color: #1E90FF; /* Dodger Blue for the header */
            margin-bottom: 30px;
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
            border-color: #1E90FF;
            box-shadow: 0 0 5px rgba(30, 144, 255, 0.3);
        }

        input[type="submit"] {
            background-color: #1E90FF;
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
            background-color: #4682B4; /* Steel Blue on hover */
        }

        footer {
            text-align: center;
            font-size: 14px;
            color: #777;
            position: absolute;
            bottom: 10px;
            width: 100%;
        }
    </style>

</head>


<body>

  <div class="container">
        <h1>DEPOSIT MONEY</h1>
        
        <form action="Servic" method="post">
        
            <label for="accNumber">Account Number:</label>
            <input type="text" name="accNumber" id="accNumber" placeholder="Enter Account Number" required />

            <label for="amount">Amount:</label>
            <input type="text" name="amount" id="amount" placeholder="Enter Amount to DEPOSIT " required />

            <input type="submit" name="submit" value="DEPOSIT MONEY" />
            <input type="hidden" name="id" value="DM" />
        </form>
    </div>

    <footer>
        &copy; 2025 IFC Banking System. All Rights Reserved.
    </footer>



</body>
</html>