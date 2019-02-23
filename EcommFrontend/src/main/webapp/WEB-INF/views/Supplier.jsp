<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>

<h3 align="center">Supplier Page</h3>

<form action="<c:url value="/addSupplier"/>" method="post">

<table align="center">
	<tr>
		<td>Supplier Name </td>
		<td><input type="text" id="supplierName" name="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier address </td>
		<td><input type="text" id="supplierAddress" name="supplierAddress"/></td>
	</tr>
	<tr>
		<td>Supplier contact </td>
		<td><input type="text" id="supplierContact" name="supplierContact"/></td>
	</tr>
	<tr>
		<td>Supplier Email </td>
		<td><input type="text" id="supplierGmail" name="supplierGmail"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Add Supplier"/></td>
	</tr>
</table>
</form>

<table align="center" border="1">
	<tr>
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Supplier Contact</td>
		<td>Supplier Email</td>
		<td>Supplier</td>
	</tr>
	<c:forEach items="${listSuppliers}" var="supplier">
	<tr>
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName}</td>
		<td>${supplier.supplierAddress}</td>
		<td>${supplier.supplierContact}</td>
		<td>${supplier.supplierGmail}</td>
		<td>
			<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>">Edit</a>
			<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>