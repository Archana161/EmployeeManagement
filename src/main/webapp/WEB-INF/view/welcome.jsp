<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link type="text/css" rel="stylesheet"
	href="/EmployeeManagementSystem/resources/css/style.css">
</head>
<body>
<div id="div0">
<h2>*STAR TECHNOLOGIES</h2>
<h1>Employee Database Management System</h1>
<br>
<div id="div1">
<form:form action="success" modelAttribute="admin" >
&nbsp User ID:<input type="text" name="userId"/>
<br>
<br>
Password:<input type="password" name="password"/>
<br>
<br>
<p align="center" font size="20"><input type="submit" name="submit" value="Login"/></p>
</form:form>
</div>
</div>
</body>
</html>