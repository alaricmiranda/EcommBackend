<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>

<h3 align="center">User Page</h3>

<form action="<c:url value="/addUser"/>" method="post">

<table align="center">
	<tr>
		<td>User Name </td>
		<td><input type="text" id="userName" name="userName"/></td>
	</tr>
	<tr>
		<td>user email </td>
		<td><input type="text" id="userEmailId" name="userEmailId"/></td>
	</tr>
	<tr>
		<td>user contact </td>
		<td><input type="text" id="userContact" name="userContact"/></td>
	</tr>
	<tr>
		<td>user password </td>
		<td><input type="text" id="userPassword" name="userPassword"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Add User"/></td>
	</tr>
</table>
</form>

<table align="center" border="1">
	<tr>
		<td>User ID</td>
		<td>User Name</td>
		<td>User Email</td>
		<td>User Contact</td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${listUsers}" var="user">
	<tr>
		<td>${user.userId}</td>
		<td>${user.userName}</td>
		<td>${user.userEmailId}</td>
		<td>${user.userContact}</td>
		<td>
			<a href="<c:url value="/editUser/${user.userId}"/>">Edit</a>
			<a href="<c:url value="/deleteUser/${user.userId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>