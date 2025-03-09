<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function validateName() {
    var fullname = document.getElementById("uname").value;
    if (fullname.trim().length == 0) {
        document.getElementById("fullnameerror").innerHTML = "Please enter full name";
        return false;
    } else {
        document.getElementById("fullnameerror").innerHTML = "";
        return true;
    }
}

function validatePassword() {
    var password = document.getElementById("password").value;
    if (password.trim().length == 0) {
        document.getElementById("passworderror").innerHTML = "Please Enter Password";
        return false;
    }
    if (password.length < 10) {
        document.getElementById("passworderror").innerHTML = "Password must be more than 10 degit";
        return false;
    }
    else if (!password.includes('@')) {
        document.getElementById("passworderror").innerHTML = "Please check @ in your Password";
        return false;
    } else {
        document.getElementById("passworderror").innerHTML = "";
        return true;
    }
}

function validate() {
    if (validateName() && validatePassword()) {
        return true; // Allow form submission
    }
    return false; // Prevent form submission
}

</script>

<style>

  .box {
      width: 200px;
      height: 300px;
      border: 4px solid #000;
      display: flex;
      flex-direction: column;
      justify-content: space-evenly; /* Evenly space the content inside */
      align-items: center; /* Center align the children horizontally */
      border-radius: 20px;
      margin: 0 auto;
      padding:14px; /* Add some padding inside the box */
    }

    .data {
      width: 100%; /* Make the input fields take full width of the container */
      display: flex;
      flex-direction: column;
      align-items: center; /* Center-align text and inputs */
      gap: 10px; /* Adds consistent spacing between the inputs */
    }

    input[type="text"], input[type="password"] {
      width: 80%; /* Adjust input width */
      padding: 5px;
      font-size: 12px;
      border-radius: 10px;
      border: 1px solid #ccc;
      box-sizing: border-box; /* Ensures padding doesn't mess with width */
    }

    .input {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap:7px; /* Adds some space between buttons */
    }

    input[type="submit"], input[type="button"] {
      padding: 7px 10px;
      font-size: 12px;
      border-radius: 10px;
      border: none;
      background-color: #4CAF50;
      color: white;
      cursor: pointer;
    }

    input[type="button"] {
      background-color: #008CBA; /* Different color for the signup button */
    }

</style>



</head>
<body>


 <form action="Login" method="POST">
    <div class="box">

      <div class="data">
        UserName: <input type="text" id="username" name="username" onblur="validateName()"/><br>
        <span id="fullnameerror"></span><br><br>
        
        
        Password: <input type="password" id="password" name="password" onblur="validatePassword()"/><br>
        <span id="passworderror"></span><br><br>
     
      </div>

      <div class="input">
      <input type="text" name="old"><br>
      <input type="text"  id="old" name="old" />
        <input type="submit" name="submit" /><br>
        
      </div>
              
    </div>
  </form>










</body>
</html>