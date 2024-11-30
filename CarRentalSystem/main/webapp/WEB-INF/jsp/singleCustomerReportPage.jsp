<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Report</title>
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
  h1, h2 {
    color: #FFD700; /* Golden text */
    margin-top: 20px;
  }

  h1 {
    font-size: 2.5em;
    text-decoration: underline;
  }

  h2 {
    font-size: 1.5em;
  }

  /* Table Styles */
  table {
    border-collapse: collapse;
    width: 90%;
    background-color: rgba(51, 51, 51, 0.8); /* Dark background for table */
    color: #FFD700; /* Golden text for table */
    margin: 20px auto;
    border: 2px solid #FFD700; /* Golden border */
     /* Golden glow effect */
  }

  th, td {
    padding: 15px;
    text-align: center;
    border: 1px solid #FFD700; /* Golden border for table cells */
  }

  th {
    background-color: #FFD700; /* Golden background for header */
    color: #000; /* Black text in table header */
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
    color: #000; /* Black text on button */
    padding: 10px 20px;
    text-align: center;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-radius: 5px;
  }

  .button:hover {
    background-color: #e55d00; /* Darker golden button on hover */
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
    <h1><u>Customer Report</u></h1>
    <br/>
    <h2>Customer Details</h2>
    <table border="2">
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
        <th>Update Details</th>
      </tr>
      <tr>
  		<td>${customer.username}</td>
  		<td>${customer.firstName}</td>
  		<td>${customer.lastName}</td>
  		<td>${customer.address}</td>
  		<td>${customer.email}</td>
  		<td>${customer.mobile}</td>
  		<td>${customer.license}</td>
  		<td>${customer.experiryDate}</td>
  		<td>${customer.status}</td>
  		<td><a href="/customerUpdate/${customer.username}">Update Details</a></td>
      </tr>
    </table>
    <h3><a href="/index">Return</a></h3>
  </div>
</body>
</html>
