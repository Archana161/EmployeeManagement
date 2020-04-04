<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link type="text/css" rel="stylesheet"
	href="/EmployeeManagementSystem/resources/css/style2.css">
</head>
<body>
<h1>Employee Management System</h1>
<h3>EMPLOYEE LIST</h3>
<input type="button" value="Add Employee" onclick="window.location.href='addEmployee';return false;" class="add-button"/>
<input type="button" value="EXIT" onclick="window.location.href='/EmployeeManagementSystem';
return false;" class="add-button"/>
<br>
<table border="1">
	    <tr>
		   <td>Employee_ID</td>
		   <td>First Name</td>
		   <td>Last Name</td>
		   <td>Email_ID</td>
		   <td>Contact number</td>
		   <td>Gender</td>
	       <td>Age</td>
		   <td>Job_location</td>
		   <td>Business_Unit</td>
		   <td>Project_ID</td>
		   <td>Job_title</td>
		   <td>DateOfJoining</td>
	       <td>Salary</td>
	       <td>Action</td>
		</tr>
		<c:forEach var="tempEmployees" items="${employees}">
		<c:url var="updateLink" value="/employee/updateEmployee">
				<c:param name="employeeId" value="${tempEmployees.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/employee/deleteEmployee">
				<c:param name="employeeId" value="${tempEmployees.id}"></c:param>
			</c:url>
			<tr>
				<td>${tempEmployees.id}</td>
				<td>${tempEmployees.firstName}</td>
				<td>${tempEmployees.lastName}</td>
				<td>${tempEmployees.email}</td>
				<td>${tempEmployees.contact}</td>
				<td>${tempEmployees.gender}</td>
				<td>${tempEmployees.age}</td>
				<td>${tempEmployees.location}</td>
				<td>${tempEmployees.bu}</td>
				<td>${tempEmployees.projectId}</td>
				<td>${tempEmployees.job_title}</td>
				<td>${tempEmployees.doj}</td>
				<td>${tempEmployees.salary}</td>
				<td><a href="${updateLink}">Update</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>