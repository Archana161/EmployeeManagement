<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<style>
#d{
	width:30%;	
	border:8px solid #660033;
	margin-top:50px;
	padding:5%;
	margin-left:25%;
}
.error
{
color:red;
}
</style>
</head>
<body bgcolor="pink">
<center>
<h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
</center>
<div id="d">
<form:form action="saveEmployee" modelAttribute="employee" method="POST" >
<font size="5px">Register new Employee information...</font>
	<br><br>
		<table>
			<tbody>
			    <tr>
					<td><label>Employee_ID:</label></td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td><label>First Name:</label></td>
					<td><form:input path="firstName" />
					<form:errors path="firstName" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Last Name:</label></td>
					<td><form:input path="lastName" />
					<form:errors path="lastName" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Email_ID:</label></td>
					<td><form:input path="email" />
					<form:errors path="email" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Contact number:</label></td>
					<td><form:input path="contact" />
					<form:errors path="contact" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Gender:</label></td>
					<td><form:radiobutton path="gender" value="male" />Male
			       <form:radiobutton path="gender"  value="female" />Female
			       <form:radiobutton path="gender"  value="other" />Other
					<form:errors path="gender" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Age:</label></td>
					<td><form:input path="age" />
					<form:errors path="age" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Location:</label></td>
				<td><form:select name="dropdown" path="location">
			<form:option value="Select location">Select location</form:option>
			<form:option value="CHN-Chennai">CHN-Chennai</form:option>
			<form:option value="BLR-Bengaluru">BLR-Bengaluru</form:option>
			<form:option value="CBE-Coimbatore">CBE-Coimbatore</form:option>
			<form:option value="HYD-Hyderabad">HYD-Hyderabad</form:option>
			<form:option value="KHN-Kochi">KHN-Kochi</form:option>
			<form:option value="KKT-Kolkata">KKT-Kolkata</form:option>
			<form:option value="PNE-Pune">PNE-Pune</form:option>
			</form:select>
					<form:errors path="location" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Business Unit:</label></td>
					<td><form:select name="dropdown" path="bu">
			<form:option value="Select BU">Select BU</form:option>
			<form:option value="Insurance">Insurance</form:option>
			<form:option value="Banking&Financial Services">Banking&Financial Services</form:option>
			<form:option value="Healthcare">HealthCare</form:option>
			<form:option value="Manufacturing&Retail">Manufacturing&Retail</form:option>
			<form:option value="AVM">AVM</form:option>
			<form:option value="LS">LS</form:option>
			<form:option value="MLEU">MLEU</form:option>
			<form:option value="RHCG">RHCG</form:option>
			</form:select>
					<form:errors path="bu" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Project_ID:</label></td>
					<td><form:input path="projectId" />
					<form:errors path="projectId" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Job_title:</label></td>
					<td><form:input path="job_title" />
					<form:errors path="job_title" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>DateOfJoining:</label></td>
					<td><form:input path="doj" type="date"/>
					<form:errors path="doj" cssClass="error"/></td>
				</tr>
				<tr>
					<td><label>Salary:</label></td>
					<td><form:input path="salary" />
					<form:errors path="salary" cssClass="error"/></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Save" class="save"></td>
					</tr>
					<tr>
					<td>
	<input type="button" value="Back To List" onclick="window.location.href='/EmployeeManagementSystem/employee/list';return false;" class="add-button"/>
	</td></tr>
				</tr>
			</tbody>
		</table>
	</form:form>
	</div>
	
</body>
</html>