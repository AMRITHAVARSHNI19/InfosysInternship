<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Rental Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
/* Body Styling */
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #000; /* Black background */
  color: #ffd700; /* Golden text */`
  margin: 0;
  padding: 0;
}

/* Navbar Styling */
.navbar {
  overflow: hidden;
  background-color: #222; /* Darker black for the navbar */
  padding: 14px 16px;
  text-align: center;
}

/* Navbar Links */
.navbar a {
  font-size: 16px;
  color: #ffd700; /* Golden text color */
  padding: 12px 16px;
  text-decoration: none;
  display: inline-block;
  transition: background-color 0.3s ease;
}

.navbar a:hover {
  background-color: #e6b800; /* Darker golden color on hover */
}

/* Dropdown Container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown Button */
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: #ffd700; /* Golden color for the button */
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
  transition: background-color 0.3s ease;
}

.dropdown .dropbtn:hover {
  background-color: #e6b800; /* Darker golden color on hover */
}

/* Dropdown Content */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #222; /* Darker black for dropdown */
  min-width: 160px;
  box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
  z-index: 1;
}

/* Dropdown Links */
.dropdown-content a {
  float: none;
  color: #ffd700; /* Golden text for links */
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

/* Header Styles */
h1 {
  font-family: "ALGERIAN", sans-serif;
  color: #ffd700; /* Golden header */
  margin-top: 50px;
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
          <a href="/">Customer Addition</a>
          <a href="/">Customer Update</a>
          <a href="/">Customer Deletion</a>
          <a href="/">Customer Reports</a>
        </div>
      </div>
      
      <div class="dropdown">
        <button class="dropbtn">Variant</button>
        <div class="dropdown-content">
          <a href="/">Variant Addition</a>
          <a href="/">Variant Deletion</a>
          <a href="/">Variant Reports</a>
        </div>
      </div>
      
      <div class="dropdown">
        <button class="dropbtn">Car</button>
        <div class="dropdown-content">
          <a href="/">Car Addition</a>
          <a href="/">Car Update</a>
          <a href="/">Car Deletion</a>
          <a href="/">Car Report</a>
        </div>
      </div>
      
      <div class="dropdown">
        <button class="dropbtn">Booking</button>
        <div class="dropdown-content">
          <a href="/">New Booking</a>
          <a href="/">Booking Update</a>
          <a href="/">Cancellation</a>
          <a href="/">Booking Report</a>
        </div>
      </div>
      
      <a href="/logout">Logout</a>
    </div>
  </div>
</body>
</html>
