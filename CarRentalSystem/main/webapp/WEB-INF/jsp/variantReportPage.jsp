<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Variant Report</title>
<style>
  /* Body and General Styles */
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

  /* Header Styles */
  h1 {
    font-size: 2.5em;
    color: #FFD700; /* Golden header */
    text-decoration: underline;
    margin-top: 20px;
  }

  h2 {
    font-size: 1.5em;
    color: #FFD700; /* Golden text */
    margin-top: 20px;
  }

  /* Table Styles */
  table {
    border-collapse: collapse;
    width: 90%;
    background-color: rgba(51, 51, 51, 0.8); /* Dark background with transparency */
    color: #fff;
    margin: 20px auto;
    border: 2px solid #FFD700; /* Golden border */
    box-shadow: 0 0 10px #FFD700; /* Golden glow */
  }

  th, td {
    padding: 15px;
    text-align: center;
    border: 1px solid #FFD700; /* Golden border for cells */
  }

  th {
    background-color: #FFD700; /* Golden header cells */
    font-weight: bold;
  }

  /* Link Styles */
  a {
    color: #FFD700; /* Golden text for links */
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }

  /* Button Style */
  .button {
    background-color: #FFD700; /* Golden button */
    border: none;
    color: black; /* Black text */
    padding: 10px 20px;
    text-align: center;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-radius: 5px;
  }

  .button:hover {
    background-color: #e55d00; /* Darker golden on hover */
  }

  /* Center Align Container */
  div[align="center"] {
    text-align: center;
    margin: auto;
    padding: 20px;
  }
</style>
</head>
<body>
  <div align="center">
    <h1><u>Car Variant Report</u></h1>
    <br/>
    <h2>
      <table border="2">
        <tr>
          <th>Variant Id</th>
          <th>Variant Name</th>
          <th>Number of Seat</th>
          <th>Fuel Usage</th>
          <th>Delete Record</th>
        </tr>
        <c:forEach items="${variantList}" var="variant">
          <tr>
            <td>${variant.variantId}</td>
            <td>${variant.variantName}</td>
            <td>${variant.numberOfSeat}</td>
            <td>${variant.fuel}</td>
            <td><a href="/variantDeletion/${variant.variantId}">Variant Deletion</a></td>
          </tr>
        </c:forEach>
      </table>
    </h2>
    <br/>
    <h3><a href="/index">Return</a></h3>
  </div>
</body>
</html>
