<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>IFC NETBANK</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }

    /* Box container */
    .box {
      background-color: #003b5c;
      color: white;
      display: flex;
      justify-content: space-between;
      align-items: center;
      height: 100px; /* Reduced the height */
      width: 100%;
      margin: 0 auto; /* Center the box */
      border-radius: 10px;
    }

    .box .logo img {
      width: 110px;
      height: 100%;
    }

    .box h1 {
      text-align: center;
      font-size: 16px;
      flex-grow: 1;
      color: red;
      font-weight: bolder;
    }

    /* Date and Time display */
    .datetime {
      font-size: 14px;
      color: rgb(236, 233, 17);
      margin-right: 10px;
    }

    /* Buttons in the center */
    .box .buttons {
      display: flex;
      gap: 20px;
    }

    .box .buttons button {
      padding: 10px 10px;
      border: 1px brown;
      background-color: #ffcc00;
      color: #09080c;
      border-radius: 5px;
      cursor: pointer;
      display: flex;
      align-items: center;
    }

    .box .buttons button i {
      margin-right: 5px;
    }

    .box .buttons button:hover {
      background-color: #6fa7b8;
    }

    .alert {
      background-color: #99cccf;
      width: 70%;
      margin: auto;
      margin-top: 5px;
      border-radius: 5px;
      text-align: center;
      color: black;
    }

    .pr {
      color: rgb(208, 11, 11);
      border: 1px solid black;
      border-radius: 15px;
      background-color: darkgray;
    }

    main {
      padding:5px;
      text-align: center;
     
    }

    .pm{
      border: 3px solid rgb(119, 214, 132);
      border-radius: 20px;
    }




  </style>
</head>
<body>

  <!-- Box with logo and buttons -->
  <div class="box">
    <div class="logo">
      <img src="https://www.shutterstock.com/image-vector/indian-farmer-cutting-grass-illustration-260nw-2320322657.jpg" alt="IFC Logo">
    </div>
    <h1>INDIAN FARMERS CO_OPERATIVE BANK</h1>
    <div class="datetime" id="datetime"></div>
    <div class="buttons">
      <a href="Login.jsp"><button><i class="fa fa-sign-in"></i> LOGIN</button></a>
      <a href="signup.jsp"><button><i class="fa fa-user-plus"></i> SIGNUP</button></a>
    </div>
  </div>

  <!-- Alert box -->
  <div class="alert">
    <p>Relationship Beyond Banking</p>
  </div>

  <!-- Main content -->
  <main>
    <section class="intro">

      <div class="pm">
      <marquee scrollamount="7" bgcolo="grey" direction="left" height="140px" width="140%" behavior="Scroll">
        <img src="https://www.vajiraoinstitute.com/images/blogs/pradhan-mantri-annadata-aay/pradhan-mantri-annadata-aay.webp" width="400px" height="400px" alt="LIC Insta">
        <img src="https://www.rajstartup.com/productImage/PM%20Kisan%20Samman%20Nidhi%20Yojana.jpg" width="400px" height="auto" alt="PM Jan Dhan Yojna">
        <img src="https://www.ksgindia.com/images/blog/200801-Garib_kalyan_yojana_IMAGE.png" width="400px" height="auto" alt="PM Arogya Yojna">
        <img src="https://modiyojna.org/wp-content/uploads/2024/12/LIC-Bima-Sakhi-Yojana.webp" width="400px" height="auto" alt="PM Kisan Bima Yojna">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0ev732bNTFzoUu7uEPg9d2eq5CFTtXd1GnQ&s" width="400px" height="auto" alt="MyGov India">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSxgz1JFqZ0R0Wewj88wehi__9h84ua2GvzQ&s" width="400px" height="auto" alt="India Government Portal">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxp-B5ZxVYHNAEtjO90S9qyWlua7crFPOocQ&s" width="400px" height="auto" alt="NREGA">
      </marquee>
    </div>

    <div class="pr">
      <marquee scrollamount="7" bgcolo="grey" direction="left" height="auto" width="auto" behavior="Scroll">
        <p>According to the RBI's latest directive, banks are now only permitted to use phone numbers that start with 1600 for all transaction-related calls. It informs cardholders that making only the minimum payment each month will result in a higher amount of total interest paid and a longer repayment period.</p>
      </marquee>
    </div>
    </section>
  </main>

  <script>
    // Function to update the date and time
    function updateDateTime() {
      const now = new Date();
      const dateTime = now.toLocaleString(); // Formats date and time
      document.getElementById('datetime').textContent = dateTime;
    }

    // Update the date and time every second
    setInterval(updateDateTime, 1000);
  </script>
</body>
</html>
