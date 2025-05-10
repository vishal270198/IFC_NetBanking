<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Banking Login Page</title>
<style>
  body {
    font-family: 'Arial', sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    background: url('https://ca.statebank/documents/9125897/29518930/SBICanada_WebsiteBanner_N2C_Feb2025.jpg/3d9b79ae-4876-a18f-f7b0-571de54f4bb4?t=1740687811504') no-repeat center center fixed;
    background-size: cover;
    color: white;
  }
  .box {
    width: 350px;
    padding: 20px;
    background: rgba(0, 0, 0, 0.8);
    border-radius: 10px;
    box-shadow: 0px 0px 15px rgba(255,255,255,0.2);
    text-align: center;
  }
  input {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    font-size: 16px;
  }
  .error {
    color: red;
    font-size: 14px;
  }
  button {
    width: 100%;
    padding: 10px;
    margin-top: 15px;
    border: none;
    background: #f39c12;
    color: red;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
  }
  #datetime {
    margin-bottom: 20px;
    font-weight: bold;
    font-size: 18px;
  }
  .advertisement {
    position: fixed;
    bottom: 10px;
    right: 10px;
    background: rgba(255, 255, 255, 0.8);
    padding: 10px;
    border-radius: 5px;
    color: black;
    font-size: 14px;
  }
  .rbi-rules {
    position: fixed;
    top: 10px;
    left: 10px;
    background: rgba(255, 255, 255, 0.8);
    padding: 10px;
    border-radius: 5px;
    color: black;
    font-size: 14px;
  }
</style>
<script>
function updateDateTime() {
    let now = new Date();
    document.getElementById("datetime").innerHTML = now.toLocaleString();
}
setInterval(updateDateTime, 1000);

function validateName() {
    let username = document.getElementById("username").value.trim();
    if (username === "") {
        document.getElementById("fullnameerror").innerText = "Please enter full name";
    } else {
        document.getElementById("fullnameerror").innerText = "";
    }
}

function validatePassword() {
    let password = document.getElementById("password").value.trim();
    if (password === "") {
        document.getElementById("passworderror").innerText = "Please enter password";
    } else if (password.length < 10 || !password.includes('@')) {
        document.getElementById("passworderror").innerText = "Password must be at least 10 characters & contain '@'";
    } else {
        document.getElementById("passworderror").innerText = "";
    }
}

function validateForm() {
    validateName();
    validatePassword();
    return document.getElementById("fullnameerror").innerText === "" && document.getElementById("passworderror").innerText === "";
}
</script>
</head>
<body>
    <div id="datetime"></div>
    <div class="box">
        <h2>Banking Login</h2>
       <form action="Login" method="post" onsubmit="return validateForm()">
            <input type="hidden" name="id" value="old">
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" onblur="validateName()">
            <div class="error" id="fullnameerror"></div>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" onblur="validatePassword()">
            <div class="error" id="passworderror"></div>
            
            <button type="submit">Login</button>
        </form>
    </div>
    <div class="advertisement">
      <marquee scrollamount="7" bgcolo="grey" direction="left" height="auto" width="auto" behavior="Scroll">
        <p> 🔥 Get the best banking offers now! Limited time only.</p>
      </marquee>
   
    </div>
    <div class="rbi-rules">
     <marquee scrollamount="7" bgcolo="grey" direction="left" height="auto" width="auto" behavior="Scroll">
    ⚖️ RBI Rules: Never share your OTP or password with anyone.
    </marquee>
    </div>
</body>
</html>
