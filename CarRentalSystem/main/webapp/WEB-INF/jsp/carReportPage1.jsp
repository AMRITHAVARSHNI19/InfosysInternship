<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    background-color: #000;
    color: #ffd700;
    font-family: Arial, sans-serif;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
  }

  /* Header Styles */
  h1, h2, h3 {
    margin: 20px 0;
    text-align: center;
  }

  h1 {
    font-size: 2.5em;
    color: #ffd700;
    text-decoration: underline;
  }

  h2 {
    font-size: 1.5em;
    color: #ffd700;
  }

  h3 a {
    color: #ffd700;
    text-decoration: none;
  }

  h3 a:hover {
    text-decoration: underline;
  }

  /* Table Styles */
  table {
    border-collapse: collapse;
    width: 90%;
    margin: 20px auto;
    background-color: #111;
    color: #ffd700;
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
    color: #000;
    font-weight: bold;
  }

  /* Link Styles */
  a {
    color: #ffd700;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }

  /* Button Style */
  .button {
    background-color: #ffd700;
    border: none;
    color: #000;
    padding: 10px 20px;
    text-align: center;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-radius: 5px;
  }

  .button:hover {
    background-color: #e6c200;
  }

  /* Center Align Container */
  div[align="center"] {
    text-align: center;
    margin: auto;
    padding: 20px;
    width: 90%;
  }
</style>
</head>
<body>
  <div align="center">
    <h1><u>Car Report</u></h1>
    <br/>
    <h2>Car Details</h2>
    <table>
      <tr>
        <th>Car Number</th>
        <th>Car Name</th>
        <th>Car Color</th>
        <th>Manufacturer</th>
        <th>MFG Year</th>
        <th>Variant Name</th>
        <th>Number of Seats</th>
        <th>Fuel</th>
        <th>Rent/Hour</th>
        <th>Available</th>
        <th>Deletion</th>
        <th>Updation</th>
      </tr>
      <c:forEach items="${carList}" var="car">
        <tr>
          <td>${car.carNumber}</td>
          <td>${car.carName}</td>
          <td>${car.carColor}</td>
          <td>${car.manufacturer}</td>
          <td>${car.yearOfMfg}</td>
          <td>
            <c:forEach items="${variantMap}" var="cmp">
              <c:if test="${car.variantId==cmp.key}">
                ${cmp.value.variantName}
              </c:if>
            </c:forEach>
          </td>
          <td>
            <c:forEach items="${variantMap}" var="cmp">
              <c:if test="${car.variantId==cmp.key}">
                ${cmp.value.numberOfSeat}
              </c:if>
            </c:forEach>
          </td>
          <td>
            <c:forEach items="${variantMap}" var="cmp">
              <c:if test="${car.variantId==cmp.key}">
                ${cmp.value.fuel}
              </c:if>
            </c:forEach>
          </td>
          <td>${car.rentRate}</td>
          <td>${car.available}</td>
          <td><a href="/carDeletion/${car.carNumber}">Car Deletion</a></td>
          <td><a href="/carUpdate/${car.carNumber}">Car Update</a></td>
        </tr>
      </c:forEach>
    </table>
    <h3><a href="/index">Return</a></h3>
  </div>
</body>
</html>
