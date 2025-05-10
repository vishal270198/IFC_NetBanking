<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>printDetails</title>
    <style>
        /* Resetting some default styles */
        body, h1, p {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f4f7fc; /* Light background color */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff; /* White background for form */
            padding: 40px;
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
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
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.3);
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Green button */
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

    </style>
</head>

<body>

    <div class="container">
        <h1>print Account Details</h1>
        <form action="Servic" method="post">
            <label for="accNumber">Account Number:</label>
            <input type="text" name="accNumber" id="accNumber" placeholder="Enter Account Number" required />

            <input type="submit" name="submit" value="Submit" />

            <input type="hidden" name="id" value="PD" />
        </form>
    </div>

    <footer>
        &copy; 2025 IFC Banking System. All Rights Reserved.
    </footer>

</body>

<body>





</body>
</html>