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
			<br />
			<input type="submit" value="Add Book"
				class="form-control btn btn-primary">
		</form:form>
	</div>
</body>
</html>
