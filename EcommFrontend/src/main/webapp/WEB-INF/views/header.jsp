<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
.lih {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

.lih li {
  float: left;
  border-right:1px solid #666666;
  border-left:1px solid #666666;
}
.lih li:first-child {
 border-right: none;
}

.lih li:last-child {
  border-right: none;
   border-left:none;
}

.lih li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.lih li a:hover{
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
.modallog {
  display: none; 
  position: fixed; 
  z-index: 1; 
  padding-top: 100px; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
}
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 30%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);

}
.modalreg {
  display: none; 
  position: fixed; 
  z-index: 1; 
  padding-top: 100px; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
}

.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  }
.modal-header {
  padding: 2px 16px;
  background-color: #333;
  color: white;}
  
 .modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;
  background-color: #333;
  color: white;
}
.Regb {
width: auto;
display: block;
color: white;
text-align: center;
text-decoration: none;
border: 2px white;	
padding: 10px 18px;
background-color: #333;
color:white;
float:center;
}
.bbutton{
display: block;
  color: #1ABC9C;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  background-color: #333;
  border: 2px  black;
}
.okbutton
{
width: auto;
display: block;
color: white;
text-align: center;
text-decoration: none;
border: 2px white;
padding: 10px 18px;
background-color: #333;
color:white;
}
.h2
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

  <ul class="lih">
  <li><h2 class="h2">Demo</h2></li>
  <li><a href="/EcommFrontend/">Home</a></li>
  <li><a href="/EcommFrontend/contact">Contact</a></li>
  <li style="float:right"><button class="bbutton"  onclick="document.getElementById('myModallog').style.display='block'">Login</button></li>
  <li style="float:right"><a href="/EcommFrontend/cart">
  <img src="resources/cart.png" alt="HT" style="width:20px;height:20px;border:0;">
</a></li>
</ul>
<div id="myModallog" class="modallog">

  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>LOGIN</h2>
    </div>
    <div class="modal-body">
      <form method="post" action="login">
Mail id:<input type="text" name="idl" placeholder="Student ID" required PATTERN="[0-9]{3,5}"><br> <br>
Password :<input type="password" name="passl" placeholder="Min 8 chars" required pattern="[A-Za-z0-9]{8,}"><br> <br>
<button type="submit" class="okbutton">Login</button>
</form>
    </div>
    <div class="modal-footer">
    <button type="button" onclick="regDis()" class="Regb">Register</button>
    </div>
  </div>

</div>
<div id="myModalreg" class="modalreg">

  <div class="modal-content">
    <div class="modal-header">
      <h2>REGISTER</h2>
    </div>
    <div class="modal-body">
      <form method="post" action="Register">
Mail id:<input type="text" name="id" placeholder="Student ID" required PATTERN="[0-9]{3,5}"><br> <br>
Name:<input type="text" name="name" placeholder="Name" required pattern="[A-Za-z]{2,20}"><br> <br>
Age:<input type="text" name="age" placeholder="Age" required pattern="[0-9]{1,3}"><br> <br>
Password :<input type="password" name="pass" placeholder="Password" required pattern="[A-Za-z0-9]{8,}" title="Min 8 characters"><br> <br>
<button type="submit" class="okbutton">Register</button>
</form>
    </div>
    <div class="modal-footer">
    <h3></h3>
    
    </div>
  </div>

</div>
</div>
<script>
var modallog = document.getElementById('myModallog');
var modalreg = document.getElementById('myModalreg');
var span = document.getElementsByClassName("close")[0];

span.onclick = function() {
  modallog.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modallog) {
    modallog.style.display = "none";
  }
}
window.onclick = function(event) {
	  if (event.target == modalreg) {
	    modalreg.style.display = "none";
	  }
	}
function regDis()
{
modalreg.style.display="block";
modallog.style.display="none";
}
</script>
</body>
</html>