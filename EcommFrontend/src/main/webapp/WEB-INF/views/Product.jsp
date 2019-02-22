<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>

<h3 align="center">Product Page</h3>

<form action="<c:url value="/addProduct"/>" method="post">

<table align="center">
	<tr>
		<td>Product Name </td>
		<td><input type="text" id="productname" name="productname"/></td>
	</tr>
	<tr>
		<td>Product Price </td>
		<td><input type="text" id="price" name="price"/></td>
	</tr>
	<tr>
		<td>Product Quantity </td>
		<td><input type="text" id="quantity" name="quantity"/></td>
	</tr>
	<tr>
		<td>Product Details </td>
		<td><input type="text" id="productdetails" name="productdetails"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Add Product"/></td>
	</tr>
</table>
</form>

<table align="center" border="1">
	<tr>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product price</td>
		<td>Product quantity</td>
		<td>Product detail</td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${listProducts}" var="product">
	<tr>
		<td>${product.productid}</td>
		<td>${product.productname}</td>
		<td>${product.price}</td>
		<td>${product.quantity}</td>
		<td>${product.productdetails}</td>
		<td>
			<a href="<c:url value="/editProduct/${product.productid}"/>">Edit</a>
			<a href="<c:url value="/deleteProduct/${product.productid}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>