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
     background-color: #F5FFFA;
      margin: 0;
      padding: 0;
    }

    .box {
      background-color: #003b5c;
      color: white;
      display: flex;
      justify-content: space-between;
      align-items: center;
      height: 100px;
      padding: 0 20px;
    }

    .box .logo img {
      height: 100px;
      width: auto;
    }

    .box h1 {
      text-align: center;
      font-size: 20px;
      flex-grow: 1;
      color: #ffcc00;
      font-weight: bolder;
    }

    .datetime {
      font-size: 14px;
      color: #fff89c;
      margin-left: 10px;
    }

    .box .buttons {
      display: flex;
      gap: 15px;
    }

    .box .buttons button {
      padding: 8px 16px;
      background-color: #ffcc00;
      color: #003b5c;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
    }

    .box .buttons button:hover {
      background-color: #f2a900;
    }

    .alert {
      background-color: #e0f7fa;
      color: #003b5c;
      text-align: center;
      padding: 10px;
      font-size: 16px;
      font-weight: bold;
    }

    .marquee-container {
      background-color: #ffffff;
      padding: 10px 0;
    }

    .marquee-container marquee img {
      margin-right: 30px;
      height: 120px;
      border-radius: 8px;
    }

    .notice {
      margin: 10px auto;
      width: 90%;
      background-color: #d1ecf1;
      color: #0c5460;
      padding: 10px;
      border-radius: 6px;
      text-align: center;
      font-size: 14px;
    }

    /* Our Services */
    .services-section {
      background-color: #ffffff;
      padding: 40px 10%;
      text-align: center;
    }

    .services-section h2 {
      color: #003b5c;
      margin-bottom: 30px;
    }

    .service-grid {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      gap: 30px;
    }

    .service-item {
      flex: 1;
      min-width: 200px;
    }

    .service-item img {
      width: 80px;
      margin-bottom: 10px;
    }

    .service-item h3 {
      color: #32CD32;
      font-size: 18px;
    }

    .service-item p {
      font-size: 14px;
      color: #555;
    }

    footer {
      text-align: center;
      padding: 15px;
      background-color: #003b5c;
      color: #fff;
      font-size: 14px;
      position: relative;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>

  <!-- Header -->
  <div class="box">
    <div class="logo">
      <img src="https://www.shutterstock.com/image-vector/indian-farmer-cutting-grass-illustration-260nw-2320322657.jpg" alt="IFC Logo">
    </div>
    <h1>INDIAN FARMERS CO-OPERATIVE BANK</h1>
    <div class="datetime" id="datetime"></div>
    <div class="buttons">
      <a href="Login.jsp"><button>LOGIN</button></a>
      <a href="signup.jsp"><button>SIGNUP</button></a>
    </div>
  </div>

  <!-- Tagline -->
  <div class="alert">"Relationship Beyond Banking" – Trusted by Every Farmer</div>

  <!-- Advertisement Marquee -->
  <div class="marquee-container">
    <marquee scrollamount="8" direction="left">
      <img src="https://www.vajiraoinstitute.com/images/blogs/pradhan-mantri-annadata-aay/pradhan-mantri-annadata-aay.webp" alt="Scheme 1">
      <img src="https://www.rajstartup.com/productImage/PM%20Kisan%20Samman%20Nidhi%20Yojana.jpg" alt="Scheme 2">
      <img src="https://www.ksgindia.com/images/blog/200801-Garib_kalyan_yojana_IMAGE.png" alt="Scheme 3">
      <img src="https://modiyojna.org/wp-content/uploads/2024/12/LIC-Bima-Sakhi-Yojana.webp" alt="Scheme 4">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0ev732bNTFzoUu7uEPg9d2eq5CFTtXd1GnQ&s" alt="MyGov India">
    </marquee>
  </div>

  <!-- Notice Marquee -->
  <div class="notice">
    <marquee scrollamount="6" direction="left">
      📢 RBI Update: Banks may only use 1600-series phone numbers for verified transaction calls. Cardholders are advised to pay more than the minimum due to avoid long-term interest.
    </marquee>
  </div>

  <!-- Our Services Section -->
  <section class="services-section">
    <h2>Our Services</h2>
    <div class="service-grid">
      <div class="service-item">
        <img src="https://cdn-icons-png.flaticon.com/512/2989/2989988.png" alt="Open Account">
        <h3>Open Account</h3>
        <p>Quickly open savings, current or fixed deposit accounts online.</p>
      </div>
      <div class="service-item">
        <img src="https://cdn-icons-png.flaticon.com/512/6333/6333999.png" alt="Loan Services">
        <h3>Loan Services</h3>
        <p>Access farmer loans, personal loans, and MSME credit facilities.</p>
      </div>
      <div class="service-item">
        <img src="https://cdn-icons-png.flaticon.com/512/2910/2910793.png" alt="Mobile Banking">
        <h3>Mobile Banking</h3>
        <p>Bank safely anytime, anywhere with our mobile app and SMS banking.</p>
      </div>
      <div class="service-item">
        <img src="https://cdn-icons-png.flaticon.com/512/3063/3063827.png" alt="Fund Transfer">
        <h3>Fund Transfer</h3>
        <p>Transfer funds seamlessly across banks with NEFT, RTGS & IMPS.</p>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    &copy; 2025 IFC NetBank. A Government-Recognized Farmers Cooperative Banking Institution.
  </footer>

  <script>
    function updateDateTime() {
      const now = new Date();
      document.getElementById('datetime').textContent = now.toLocaleString();
    }
    setInterval(updateDateTime, 1000);
  </script>

</body>
</html>
