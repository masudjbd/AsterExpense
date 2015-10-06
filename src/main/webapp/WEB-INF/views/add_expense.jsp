<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Expense</title>

<link
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css"
	rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/resource/css/datepicker.css"
              rel="stylesheet" />
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
			<a class="navbar-brand" href="${pageContext.request.contextPath}">Aster Expense</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/expense/list">List
						Expense</a></li>
				<li class="active"><a href="${pageContext.request.contextPath}/expense/add">Add Expense</a></li>

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
				<h2>Add Expense</h2>
 
				<form:form class="form-horizontal" commandName="expense"
					method="post">
					<div class="form-group">
						<label for="dateposted">Date posted</label>
						<form:input path="dateposted" class="form-control datepicker"
							type="text" name="dateposted" />
						<form:errors path="dateposted" cssClass="error" />

					</div>
					<div class="form-group">
						<label for="name">Name</label>
						<form:input path="name" class="form-control" type="text"
							name="name" value="" />
						<form:errors path="name" cssClass="error" />
					</div>
					<div class="form-group">

						<label for="description">Description</label>
						<form:input path="description" class="form-control" type="text"
							name="description" value="" />
						<form:errors path="description" cssClass="error" />
					</div>
					<div class="form-group">

						<label for="cost">Cost</label>
						<form:input path="cost" type="text" class="form-control"
							name="cost" />
						<form:errors path="cost" cssClass="error" />
					</div>
					<div class="form-group">

						<label for="member">Member</label>
						<form:select path="member.memberId" class="form-control">
							<option value="1">Masud</option>
							<option value="2">Ruzdi</option>
							<option value="3">Anwar</option>
						</form:select>
					</div>

					<div class="form-group">
						<label>Expense For </label>
						<div class="control-group">
							<table class="table">
								<tr>
									<td><label> <input value="1" type="checkbox" />
											Masud
									</label></td>
									<td><form:input path="for_masud" /></td>
								</tr>
								<tr>
									<td><label> <input value="2" type="checkbox" />
											Anwar
									</label></td>
									<td><form:input path="for_anwar" /></td>
								</tr>
								<tr>
									<td><label> <input value="3" type="checkbox" />
											Ruzdi
									</label></td>
									<td><form:input path="for_ruzdi" /></td>
								</tr>

							</table>
						</div>
					</div>

					<div class="form-group">
						<button class="btn btn-info">Submit</button>
					</div>
				</form:form>

			</div>

		</div>

		<hr>

		<footer>
		<p>&copy; Aster Expense Co. 2015-2016</p>
		</footer>
	</div>
	<!-- /container -->

	<script
		src="${pageContext.request.contextPath}/resource/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/js/bootstrap-datepicker.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resource/js/bootstrap-datetimepicker.min.js"></script>




	<script>
		$(function() {

			$('.datepicker').datepicker({
				format : 'dd/mm/yyyy'
			});

		});
	</script>
</body>
</html>