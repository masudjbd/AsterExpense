<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
	<title>Home</title><link
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resource/js/jquery-1.9.1.min.js"></script>
	
</head>
<body>
<h1>
	Hello Aster Family!  
</h1>
<p> User : <sec:authentication property="principal.username" /> </p>
<P>  The time on the server is ${serverTime}. </P>

<a class="btn btn-info " href="${pageContext.request.contextPath}/expense/list">Expense Portal</a>
</body>
</html>
