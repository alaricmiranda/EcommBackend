<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
th
    {
	width:3%;
      border-collapse:separate;
      }
.bold
{
font-weight: bold;
}
h3
{
display: block;
  color:  white;
  text-align: center;
  padding: 10px 7px;
  text-decoration: none;
  background-color: #333;
}</style>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<jsp:include page="header.jsp" />
<h3>Your Cart</h3>
<table>
      <tr>
        <th>
        <th>Description</th>
        <th style="text-align:right"> Amount</th>
        <th style="text-align:right"> Price</th>
        <th style="text-align:right"> Total</th>
        </tr>
      <tr class="itemr">
        <td>
          <img src="resources/50x50.png"></td>
        <td>
          <p class="bold">Item 1</p>
          <p> DEMO demo  demo demo</p></td>
        <td style="text-align:right"> 3</td>
         <td style="text-align:right"> 2.00</td>
         <td style="text-align:right"> 6.00</td>
         </tr>
      <tr class="item-row ">
        <td>
          <img src="resources/50x50.png"></td>
        <td>
          <p class="bold">  Item 2</p>
          <p>demo demo demo </p></td>
        <td style="text-align:right"> 3</td>
        <td style="text-align:right"> 4.00</td>
        <td style="text-align:right"> 12.00</td>
        </tr>
      <tr style="total-row">
        <td colspan="4" style="text-align:right"> Total</td>
        <td style="text-align:right"> 18.00</td>
        </tr>
        </table>
        <h3> </h3>
</body>
</html>