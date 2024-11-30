<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Update Page</title>
<style>
  /* Body and Background */
  body {
    background-color: #000; /* Black background */
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    color: #ffd700; /* Golden text color */
  }

  /* Centered Container */
  div[align="center"] {
    width: 800px;
    margin: 100px auto;
    padding: 20px;
    background-color: #111; /* Dark background for form container */
    border-radius: 10px;
    box-shadow: 0 0 15px #ffd700;
    text-align: center;
  }

  /* Header Styles */
  h1 {
    font-size: 2em;
    color: #ffd700;
    text-transform: uppercase;
    margin-bottom: 20px;
    text-decoration: underline;
  }

  h2 {
    font-size: 1.2em;
    color: #ffd700;
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
    border: 1px solid #ffd700;
    border-radius: 5px;
    background-color: #222; /* Slightly lighter black for inputs */
    color: #ffd700;
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
    background-color: #ffd700; /* Golden button */
    color: #000; /* Black text for buttons */
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  form button[type="reset"] {
    background-color: #333; /* Dark reset button */
    color: #ffd700; /* Golden text for reset */
    border: 1px solid #ffd700;
  }

  form button:hover {
    background-color: #e5c100; /* Slightly lighter golden */
  }

  form button[type="reset"]:hover {
    background-color: #444; /* Lighter dark for hover */
  }

  /* Label Styling */
  label {
    font-size: 1em;
    color: #ffd700;
    text-align: left;
    margin-bottom: 5px;
  }
</style>
</head>
<body>
<div align="center">
  <h1>Car Update Page</h1>
  <h2>Update Car Details</h2>
  <form:form action="/carUpdate" method="post" modelAttribute="carRecord">
    <form:hidden path="carNumber" />
    <form:hidden path="carName" />
    <form:hidden path="carColor" />
    <form:hidden path="manufacturer" />
    <form:hidden path="variantId" />
    <form:hidden path="yearOfMfg" />

    <label>Car Registration Number:</label>
    <form:input path="carNumber" disabled="true"/> <br/>

    <label>Car Name:</label>
    <form:input path="carName" disabled="true"/> <br/>

    <label>Car Color:</label>
    <form:input path="carColor" disabled="true"/> <br/>

    <label>Manufacturer Name:</label>
    <form:input path="manufacturer" disabled="true"/> <br/>

    <label>Variant Id:</label>
    <form:input list="variants" path="variantId" disabled="true"/> <br/>

    <label>Year of Manufacture:</label>
    <form:input path="yearOfMfg" disabled="true"/> <br/>

    <label>Enter New Rent Rate/hour:</label>
    <form:input path="rentRate"/> <br/>

    <label>Enter New Availability Status:</label>
    <form:input path="available"/> <br/>

    <datalist id="variants">
      <c:forEach items="${variantIdList}" var="vids">
        <option value="${vids}">
      </c:forEach>
    </datalist>

    <button type="submit">Submit</button>
    <button type="reset">Reset</button>
  </form:form>
</div>
</body>
</html>
