<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
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
    color: #FFD700; /* Golden text */
    text-decoration: underline;
    margin-top: 20px;
  }

  h3 {
    font-size: 1.2em;
    color: #FFD700; /* Golden text */
    margin-top: 20px;
  }

  /* Link Styles */
  a {
    color: #FFD700; /* Golden link */
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
  <div align="center">
    <h1>${errorMessage}</h1>
    <br>
    <h3><a href="/index">Return</a></h3>
  </div>
</body>
</html>
