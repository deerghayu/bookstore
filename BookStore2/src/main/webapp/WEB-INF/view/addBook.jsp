<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<meta charset="utf-8">
<title>Add Book</title>
</head>
<body>
	<div class="well"
		style="width: 400px; margin: 0 auto; margin-top: 10px;">
		<h3>Add New Book</h3>
		<form:form action="addBook" modelAttribute="book" method="post">
			<form:errors path="*" />
			<fieldset>
				<legend>Enter Book details</legend>
				Title:
				<form:input path="title" name="title" class="form-control" />
				  Description:
				<form:textarea path="description" cols="12" rows="2"
					class="form-control" />
				  ISBN:
				<form:input path="ISBN" class="form-control" />
				  Price:
				<form:input path="price" class="form-control" />
				  Genre:
				<form:input path="genre" class="form-control" />
				  Author FirstName:
				<form:input path="author.firstName" class="form-control" />
				  Author LastName:
				<form:input path="author.lastName" class="form-control" />
				 
			</fieldset>
			<br/>
			<input type="submit" value="Add Book" class="form-control btn btn-primary">
		</form:form>
	</div>

	<%-- <div class="well" style="width: 300px; margin: 0 auto; margin-top: 200px;">
		<div class="row">
			<div class="col-lg-12">
				<c:if test="${not empty error}">
					<div class="alert alert-danger">
						<spring:message
							code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
						<br />
					</div>
				</c:if>
				
				<form id="login-form"
					action="<spring:url value="/addBook"></spring:url>" method="post"
					role="form" style="display: block;">
					<div class="form-group">
						<input type="text" name="username" id="username" tabindex="1"
							class="form-control" placeholder="Username" value="">
					</div>
					<div class="form-group">
						<input type="password" name="password" id="password" tabindex="2"
							class="form-control" placeholder="Password">
					</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<input type="submit" name="login-submit" id="login-submit"
							tabindex="4" class="form-control btn btn-primary" value="Log In">
					</div>
				</div>
			</div>
		</div>
		</div> --%>
</body>
</html>
