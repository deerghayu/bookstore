<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
	<div class="well"
		style="width: 300px; margin: 0 auto; margin-top: 200px;">
		<div class="row">
			<div class="col-lg-12">
				<c:if test="${not empty error}">
					<div class="alert alert-danger">
						<spring:message
							code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
						<br />
					</div>
				</c:if>
				<%-- <form method="post"
		action="<spring:url value="/postLogin"></spring:url>">
		<center>
			<table border="1" width="30%" cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Login Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><spring:message code="userName" /></td>
						<td><input type="text" name="username" value="" /></td>
					</tr>
					<tr>
						<td><spring:message code="password" /></td>
						<td><input type="password" name="password" value="" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>
					<tr>
						<td colspan="2"><spring:message code="not.registered.msg" />!!
							<a href="reg.jsp">Register Here</a></td>
					</tr>
				</tbody>
			</table>
		</center>
	</form> --%>
				<form id="login-form"
					action="<spring:url value="/postLogin"></spring:url>" method="post"
					role="form" style="display: block;">
					<div class="form-group">
						<input type="text" name="username" id="username" tabindex="1"
							class="form-control" placeholder="Username" value="" required>
					</div>
					<div class="form-group">
						<input type="password" name="password" id="password" tabindex="2"
							class="form-control" placeholder="Password" required>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<input type="submit" name="login-submit" id="login-submit"
									tabindex="4" class="form-control btn btn-primary"
									value="Log In">
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>
