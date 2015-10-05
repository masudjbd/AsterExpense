<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Expense</title>

<link
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resource/js/jquery-1.9.1.min.js"></script>

</head>
<body>




	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}">Aster
				Expense</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}">Home</a></li>
				<li class="active"><a
					href="${pageContext.request.contextPath}/expense/list">List
						Expense</a></li>
				<li><a href="${pageContext.request.contextPath}/expense/add">Add
						Expense</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href=""> Howdy: <sec:authentication
							property="principal.username" /> <span class="sr-only">(current)</span></a></li>
				<li><a class="btn-info"
					href="<c:url value="/j_spring_security_logout" />"> <i
						class="glyphicon glyphicon-off"></i> logout
				</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>


	<div class="container">
		<!-- Example row of columns -->
		<div class="row" style="margin-top: 80px;"></div>


		<div class="container-fluid">
			<div class="row">
				<h2>List Expense</h2>

				<c:if test="${!empty message}">
					<div class="alert alert-success" role="alert">${message}</div>
				</c:if>



				<table class="table table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>Description</th>
							<th>Date</th>
							<th>Cost</th>
							<th>For Ruzdi</th>
							<th>For Masud</th>
							<th>For Anwar</th>
							<th>By</th>
						</tr>

					</thead>
					<tbody>
						<c:set var="sum" value="${0}" />
						<c:forEach var="item" items="${expenses}">
							<tr>
								<td>${item.name}</td>
								<td>${item.description}</td>
								<td>${item.dateposted}</td>
								<td>${item.cost}</td>
								<td>${item.for_ruzdi}</td>
								<td>${item.for_masud}</td>
								<td>${item.for_anwar}</td>
								<td>${item.member.name}</td>
							</tr>
							<c:set var="sum" value="${sum + item.cost}" />

						</c:forEach>
					</tbody>
				</table>

				<div class="container-fluid">
					<div class="row">

						<h2><span class="label label-primary">Total: ${sum}</span> 
						</h2>
						<h2><span
							class="label label-success">Average: <fmt:formatNumber
								type="number" maxFractionDigits="2" value="${sum/3}" />

						</span></h2>



					</div>
				</div>
			</div>

		</div>

		<hr>

		<footer>
		<p>&copy; Aster Expense Co. 2015-2016</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

