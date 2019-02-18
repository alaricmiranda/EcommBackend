<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}


.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}


.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}


h3
{
display: block;
  color:  white;
  text-align: center;
  padding: 4px 7px;
  text-decoration: none;
  background-color: #333;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Demo</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="slide1.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="slide2.jpg" style="width:100%">
  <div class="text"></div>
</div>
</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<h3>Products</h3>
<div class="display">
<form action="<c:url value="/addCategory"/>" method="post">

<table align="center">
	<tr>
		<td>Category Name </td>
		<td><input type="text" id="categoryName" name="categoryName"/></td>
	</tr>
	<tr>
		<td>Category Desc </td>
		<td><input type="text" id="categoryDesc" name="categoryDesc"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Add Category"/></td>
	</tr>
</table>
</form>

<table align="center" border="1">
	<tr>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${listCategories}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td>
			<a href="<c:url value="/editCategory/${category.categoryId}"/>">Edit</a>
			<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000);
}
</script>
</body>
</html>
