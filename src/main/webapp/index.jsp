<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banking Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://source.unsplash.com/1600x900/?banking,finance') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            padding-top: 70px;
        }
        .header {
            position: fixed;
            top: 0;
            width: 100%;
            height: 80px;
            background: red;
            border: 1px solid black;
            border-radius: 15px;
            font-size: 24px;
            font-weight: bold;
            color: black;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }
        .header .title {
            flex: 1;
            text-align: center;
        }
        .datetime {
            text-align: right;
            font-size: 16px;
            font-weight: bold;
        }
        .rules {
            color: blue;
            margin-top: 90px;
        }
        .container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
            justify-content: center;
            margin-top: 20px;
        }
        .box {
            width: 160px;
            height: 90px;
            background: #FFD700;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.2);
            transition: transform 0.3s ease;
            font-size: 14px;
            font-weight: bold;
            color: black;
        }
        .box:hover {
            transform: scale(1.05);
        }
        .box a {
            text-decoration: none;
            color: black;
        }
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.8);
            padding: 10px;
            border-radius: 10px;
        }
    </style>
    <script>
        function updateDateTime() {
            let now = new Date();
            document.getElementById("date").innerHTML = now.toDateString();
            document.getElementById("time").innerHTML = now.toLocaleTimeString();
        }
        setInterval(updateDateTime, 1000);
    </script>
</head>
<body>
    <div class="header">
        <span class="title">Banking Services...!</span>
        <div class="datetime">
            <span id="date"></span><br>
            <span id="time"></span>
        </div>
    </div>
    <div class="rules">
        <marquee scrollamount="7" bgcolor="grey" direction="left" height="auto" width="auto" behavior="Scroll">
            <p>According to the RBI's latest directive, banks are now only permitted to use phone numbers that start with 1600 for all transaction-related calls. It informs cardholders that making only the minimum payment each month will result in a higher amount of total interest paid and a longer repayment period.</p>
        </marquee>
    </div>
    <div class="container">
        <div class="box"><a href="openAccount.jsp">&#128181; Open Account</a></div>
        <div class="box"><a href="deposit.jsp">&#128176; Deposit</a></div>
        <div class="box"><a href="withdraMoney.jsp">&#128179; Withdraw</a></div>
        <div class="box"><a href="balEnq.jsp">&#128178; Balance</a></div>
        <div class="box"><a href="moneyTrans.jsp">&#128177; Transfer</a></div>
        <div class="box"><a href="printDetails.jsp">&#128193; Print</a></div>
        <div class="box"><a href="closeAcc.jsp">&#128274; Close</a></div>
    </div>
    <div class="footer">&copy; 2025 Banking System. All Rights Reserved.</div>
</body>
</html>
