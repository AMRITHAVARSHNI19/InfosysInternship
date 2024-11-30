<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Report</title>
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
    flex-direction: column;
  }

  /* Centered Container */
  div[align="center"] {
    width: 90%;
    margin: auto;
    padding: 20px;
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
    font-size: 1.5em;
    color: #ffd700;
    margin-bottom: 20px;
  }

  /* Table Styles */
  table {
    border-collapse: collapse;
    width: 100%;
    background-color: #111; /* Slightly lighter black for contrast */
    color: #ffd700; /* Golden text color */
    margin: 20px 0;
    border: 2px solid #ffd700;
    box-shadow: 0 0 10px #ffd700;
  }

  th, td {
    padding: 15px;
    text-align: center;
    border: 1px solid #ffd700;
  }

  th {
    background-color: #ffd700;
    color: #000; /* Black text for headers */
    font-weight: bold;
  }

  td a {
    color: #ffd700;
    text-decoration: none;
    font-weight: bold;
  }

  td a:hover {
    text-decoration: underline;
  }

  /* Button Styling */
  .button {
    background-color: #ffd700; /* Golden background */
    color: #000; /* Black text */
    padding: 10px 20px;
    text-align: center;
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  .button:hover {
    background-color: #333; /* Darker background on hover */
    color: #ffd700; /* Golden text on hover */
  }

  /* Link Styles */
  a {
    color: #ffd700;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
  <div align="center">
    <h1><u>Customer Report</u></h1>
    <h2>Customer Details</h2>
    <table>
      <tr>
        <th>User Name</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Mobile Number</th>
        <th>License Number</th>
        <th>License Expiry Date</th>
        <th>Status</th>
        <th>Customer Updation</th>
        <th>Customer Deletion</th>
      </tr>
      <c:forEach items="${customerList}" var="cus">
        <tr>
          <td>${cus.username}</td>
          <td>${cus.firstName}</td>
          <td>${cus.lastName}</td>
          <td>${cus.address}</td>
          <td>${cus.email}</td>
          <td>${cus.mobile}</td>
          <td>${cus.license}</td>
          <td>${cus.experiryDate}</td>
          <td>${cus.status}</td>
          <td><a href="/customerUpdate/${cus.username}">Update Details</a></td>
          <td><a href="/customerDelete/${cus.username}">Delete User</a></td>
        </tr>
      </c:forEach>
    </table>
    <h3><a href="/index" class="button">Return</a></h3>
  </div>
</body>
</html>
