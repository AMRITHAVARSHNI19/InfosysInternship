<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Variant Entry</title>
<style>
  /* Body and Background */
  body {
    background-color: #000; /* Black background */
    color: #FFD700; /* Golden text */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }

  /* Centered Container */
  div[align="center"] {
    width: 800px;
    margin: 100px auto;
    padding: 20px;
    background-color: rgba(51, 51, 51, 0.8); /* Dark background with transparency */
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(255, 98, 0, 0.7); /* Golden glow */
    text-align: center;
  }

  /* Header Styles */
  h1 {
    font-size: 2em;
    color: #FFD700; /* Golden text */
    text-transform: uppercase;
    margin-bottom: 20px;
    text-decoration: underline;
  }

  h2 {
    font-size: 1.2em;
    color: #FFD700; /* Golden text */
    margin-bottom: 15px;
  }

  /* Form Styles */
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  /* Input Field Styles */
  form input[type="text"],
  form input[type="number"],
  form input[list] {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #FFD700; /* Golden border */
    border-radius: 5px;
    background-color: #333; /* Dark background for inputs */
    color: #FFD700; /* Golden text in inputs */
    font-size: 1em;
    text-align: center;
  }

  /* Button Styles */
  form button {
    width: 45%;
    padding: 10px;
    margin: 10px;
    border: none;
    border-radius: 5px;
    background-color: #FFD700; /* Golden button */
    color: #000; /* Black text on button */
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  form button[type="reset"] {
    background-color: #333; /* Dark button */
    border: 1px solid #FFD700; /* Golden border on reset button */
  }

  form button:hover {
    background-color: #e55d00; /* Darker golden button on hover */
  }

  form button[type="reset"]:hover {
    background-color: #444; /* Darker reset button on hover */
  }

  /* Label Styling */
  label {
    font-size: 1em;
    color: #FFD700; /* Golden text for labels */
    text-align: left;
    margin-bottom: 5px;
  }
</style>
</head>
<body>
  <div align="center">
    <h1>Car Variant Entry Page</h1>
    <h2>
      <form:form action="/variantAdd" method="post" modelAttribute="variantRecord">
        <form:hidden path="variantId"/>
        <div>
          Variant Id: <form:input path="variantId" disabled="true"/>
        </div>
        <br/>
        <div>
          Enter Variant Name: <form:input path="variantName" />
        </div>
        <br/>
        <div>
          Enter Number of Seats: <form:input path="numberOfSeat" />
        </div>
        <br/>
        <div>
          Enter Type of Fuel: <form:input path="fuel" />
        </div>
        <br/>
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
      </form:form>
    </h2>
  </div>
</body>
</html>
