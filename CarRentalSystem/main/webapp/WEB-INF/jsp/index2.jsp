<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Rental System</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
/* Body Styling */
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #000; /* Black background */
  color: #ffd700; /* Golden text */
  margin: 0;
  padding: 0;
}

/* Navbar Styling */
.navbar {
  background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black background for navbar */
  padding: 10px;
  position: relative;
  z-index: 100; /* Ensures navbar is above background */
  text-align: center;
}

.navbar a {
  font-size: 16px;
  color: #ffd700; /* Golden color for text */
  padding: 14px 16px;
  text-decoration: none;
  display: inline-block;
  transition: background-color 0.3s ease;
}

.navbar a:hover {
  background-color: #e6b800; /* Darker golden color on hover */
}

/* Dropdown Styling */
.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: #ffd700; /* Golden text color */
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
  transition: background-color 0.3s ease;
}

.dropdown .dropbtn:hover {
  background-color: #e6b800; /* Darker golden color on hover */
}

/* Dropdown Content Styling */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #222; /* Dark black for dropdown */
  min-width: 160px;
  box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
  z-index: 200; /* Ensures dropdown is above other elements */
}

.dropdown-content a {
  float: none;
  color: #ffd700; /* Golden text for dropdown links */
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  transition: background-color 0.3s ease;
}

.dropdown-content a:hover {
  background-color: #444; /* Darker black on hover */
}

/* Show Dropdown on Hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Header Styling */
.header {
  background-color: rgba(0, 0, 0, 0.9); /* Semi-transparent black header */
  padding: 10px;
  display: flex;
  align-items: center;
  z-index: 1000; /* Ensures header stays on top */
  position: relative;
}

.header h1 {
  color: #ffd700; /* Golden text color for the header */
  font-family: "ALGERIAN", sans-serif;
  font-size: 30px;
  margin: 0;
}

h1 {
  color: #ffd700; /* Golden text */
  text-shadow: 2px 2px 5px black; /* Text shadow for better readability */
  font-family: "ALGERIAN", sans-serif;
  margin-top: 40px;
  font-size: 2.5em;
}
</style>
</head>
<body>



<div align="center">
  <h1>Welcome To Car Rental Page</h1>
  <div class="navbar">
    <div class="dropdown">
      <button class="dropbtn">Customer</button>
      <div class="dropdown-content">
        <a href="/customerAdd">Customer Addition</a>
        <a href="/singleCustomerReport">Customer Report</a>
      </div>
    </div>
    
    <div class="dropdown">
      <button class="dropbtn">Car</button>
      <div class="dropdown-content">
        <a href="/customerCarReport">Car Report</a>
      </div>
    </div>

    <div class="dropdown">
      <button class="dropbtn">Booking</button>
      <div class="dropdown-content">
        <a href="/">New Booking</a>
        <a href="/">Booking Update</a>
        <a href="/">Cancellation</a>
      </div>
    </div>

    <a href="/logout">Logout</a>
  </div>
</div>

</body>
</html>
