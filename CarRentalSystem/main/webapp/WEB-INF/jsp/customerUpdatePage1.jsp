<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Update Page</title>
<style>
  /* Body Styling */
  body {
    background-color: #000; /* Black background */
    color: #ffd700; /* Golden text color */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  /* Centered Container */
  div[align="center"] {
    width: 80%;
    max-width: 600px;
    margin: auto;
    padding: 20px;
    background-color: #111; /* Slightly lighter black for contrast */
    border-radius: 10px;
    box-shadow: 0 0 15px #ffd700; /* Golden glow */
    text-align: center;
  }

  /* Header Styles */
  h1 {
    font-size: 2.5em;
    color: #ffd700; /* Golden color */
    text-transform: uppercase;
    text-decoration: underline;
    margin-bottom: 20px;
  }

  h2 {
    font-size: 1.2em;
    color: #ffd700;
    margin-bottom: 15px;
  }

  /* Form Styling */
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
  }

  /* Input Fields */
  form input[type="text"],
  form input[type="number"],
  form input[type="date"] {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ffd700; /* Golden border */
    border-radius: 5px;
    background-color: #222; /* Slightly lighter black */
    color: #ffd700; /* Golden text */
    font-size: 1em;
    text-align: center;
  }

  form input[type="text"]:disabled,
  form input[type="number"]:disabled,
  form input[type="date"]:disabled {
    background-color: #333; /* Darker shade for disabled fields */
    color: #888; /* Gray text for disabled fields */
  }

  /* Buttons */
  form button {
    width: 45%;
    padding: 10px;
    margin: 10px;
    border: none;
    border-radius: 5px;
    background-color: #ffd700; /* Golden background */
    color: #000; /* Black text */
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  form button[type="reset"] {
    background-color: #222; /* Blackish color */
    color: #ffd700; /* Golden text */
    border: 1px solid #ffd700;
  }

  form button:hover {
    background-color: #e6b800; /* Slightly darker golden */
  }

  form button[type="reset"]:hover {
    background-color: #444; /* Slightly lighter black */
    color: #ffd700; /* Golden text */
  }

  /* Label Styling */
  label {
    font-size: 1em;
    color: #ffd700;
    margin-bottom: 5px;
    text-align: left;
    display: block;
    width: 90%;
  }
</style>
</head>

<body>
  <div align="center">
    <h1>Customer Update Page</h1>
    <h2>
      <form:form action="/customerUpdate" method="post" modelAttribute="customerRecord">
        <form:hidden path="username"/>
        <form:hidden path="email"/>
        <form:hidden path="firstName"/>
        <form:hidden path="mobile"/>
        <form:hidden path="license"/>
        
        User Name:
        <form:input path="username" disabled="true" />
        <br/><br/>
        
        Email:
        <form:input path="email" disabled="true" />
        <br/><br/>
        
        First Name:
        <form:input path="firstName" disabled="true" />
        <br/><br/>
        
        Update Last Name:
        <form:input path="lastName" />
        <br/><br/>
        
        Update Address:
        <form:input path="address" />
        <br/><br/>
        
        Mobile Number:
        <form:input path="mobile" disabled="true" />
        <br/><br/>
        
        License Number:
        <form:input path="license" disabled="true" />
        <br/><br/>
        
        Update Status:
        <form:input path="status" />
        <br/><br/>
        
        Update License Expiry Date:
        <form:input type="date" placeholder="dd-mm-yyyy" path="experiryDate" />
        <br/><br/>
        
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
      </form:form>
    </h2>
  </div>
</body>
</html>
