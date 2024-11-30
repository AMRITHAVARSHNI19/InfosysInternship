<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Rental System Registration</title>
<style>
    /* General styling for the page */
    body {
        background-color: #000; /* Black background */
        color: #FFD700; /* Golden text */
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }

    /* Header styling */
    .header {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
        background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black */
        position: fixed;
        top: 0;
        left: 0;
    }

    /* Title in header */
    .header h1 {
        color: #FFD700; /* Golden text */
        font-size: 24px;
        margin: 0;
    }

    /* Centered container for the form */
    .container {
        background-color: rgba(51, 51, 51, 0.8); /* Dark black background */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px rgba(255, 165, 0, 0.6); /* Golden glow effect */
        width: 500px;
        text-align: center;
        margin-top: 80px; /* Offset for the fixed header */
    }

    /* Header styling inside the form container */
    .container h2 {
        background-color: #FFD700; /* Golden background */
        color: #000; /* Black text */
        padding: 10px 0;
        border-radius: 5px;
        margin-bottom: 20px;
        font-size: 22px;
    }

    /* Form styling */
    .container form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    /* Input fields */
    .container input[type="text"],
    .container input[type="password"],
    .container input[type="email"],
    .container select {
        background-color: #222; /* Dark black background for input fields */
        color: #FFF; /* White text */
        border: 1px solid #FFD700; /* Golden border */
        padding: 10px;
        border-radius: 5px;
        width: 90%;
        margin-bottom: 15px;
    }

    /* Submit and Reset buttons */
    .container button[type="button"],
    .container button[type="reset"] {
        background-color: #FFD700; /* Golden button */
        color: #000; /* Black text */
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
        margin: 10px 5px;
    }

    .container button[type="button"]:hover,
    .container button[type="reset"]:hover {
        background-color: #E6B800; /* Darker golden on hover */
    }
</style>
<script type="text/javascript">
function passwordCheck(){
     var pass1 = document.getElementById("pass1").value.toString();
     var pass2 = document.getElementById("pass2").value.toString();
      if(pass1.length < 5 || pass1.length > 10) {
         alert("Password must be between 5 and 10 characters.");
         return;
      }
     if(pass1 === pass2) {
         document.getElementById("registrationForm").submit();
     } 
     else {
         alert("Passwords do not match.");
     }
}
</script>
</head>
<body>

<!-- Header with title -->
<div class="header">
    <h1>Car Rental System</h1>
</div>

<div class="container">
    <h2>Register Here!!!</h2>
    <form:form id="registrationForm" method="post" action="/register" modelAttribute="userRecord">
        <div>
            Enter User Id: <form:input path="username"/>
        </div>
        <br/>
        <div>
            Enter Password: <form:input type="password" path="password" id="pass1"/>
        </div>
        <br/>
        <div>
            Re-type Password: <input type="password" id="pass2"/>
        </div>
        <br/>
        <div>
            Enter Email: <form:input path="email"/>
        </div>
        <br/>
        <div>
            Select User Type: <form:input list="types" name="type" id="type" path="role"/>
            <datalist id="types">
                <option value="Customer">
                <option value="Admin">
            </datalist>
        </div>
        <br/>
        <button type="button" onclick="passwordCheck();">Submit</button>
        <button type="reset">Reset</button>
    </form:form>
</div>

</body>
</html>
