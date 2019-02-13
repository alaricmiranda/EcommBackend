<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}
li:first-child {
 border-right: none;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover{
  background-color: #111;
}


input
{
 width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
label
{
font-weight: bold;
text-align: justify;
}
form
{
border: 3px solid white;
}

.regf
{
    margin:auto;
     border: 3px solid black;
    display: none;
    position: center;
    z-index: 1; 
    left: 0;
    top: 0;
    width: 50%; 
    height: 50%;
    overflow: auto;
    background-color: white;
    opacity: 70%;
    padding-top: 10px;
}
.logf
{
    margin:auto;
     border: 3px solid black;
    display: none;
    position: center;
    z-index: 1; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%;
    overflow: auto;
    background-color: white;
    opacity: 70%;
    padding-top: 10px;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.Regb {
    width: auto;
    padding: 10px 18px;
    background-color: #4CAF50;
}
.bbutton{
display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  background-color: #333;
  border: 2px solid green;
}
h2
{
display: block;
  color:  white;
  text-align: center;
  padding: 0px 7px;
  text-decoration: none;
  background-color: #333;
}
  </style>
</head>
<body>
<div class="header" id="myHeader">

  <ul>
  <li><h2>Demo</h2></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li style="float:right"><button class="bbutton"  onclick="document.getElementById('id02').style.display='block'">Login</button></li>
</ul>
</div>

</body>
</html>