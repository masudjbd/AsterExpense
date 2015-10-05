<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login</title>
<link
	href="${pageContext.request.contextPath}/resource/css/bootstrap.css"
	rel="stylesheet" />




<style type="text/css">
.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>
</head>
<body>


	<div class="container">

		<form class="form-signin"
			action="<c:url value="/auth/login_check"></c:url>" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>

			<c:if test="${not empty error}">
				<div class="alert alert-danger">
					 The username or password you entered is incorrect.
				</div>
			</c:if>

			<input type="text" class="input-block-level" name="username"
				placeholder="username"> <input type="password"
				class="input-block-level" name="password" placeholder="password">
			<label class="checkbox"> <input type="checkbox"
				value="remember-me"> Remember me
			</label>
			<button class="btn btn-large btn-primary" type="submit">Login</button>
		</form>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</div>
	<!-- /container -->


</body>
</html>