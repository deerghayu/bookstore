<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>

	<div class="well">

		<div class="well"
			style="width: 600px; margin-left: auto; margin-right: auto">
			Book Title: ${book.title}<br /> Book ISBN: ${book.ISBN}<br /> Book
			Description: ${book.description}<br /> Book Price: ${book.price}$<br />
			Book Genre: <a href="findBook?genre=${book.genre}">#${book.genre}</a>
			<br /> Author Name: ${book.author.firstName}<br /> <a
				href="deleteBook?bookId=${book.id}"><button type="button"
					class="btn btn-danger">Delete</button> </a>
		</div>

	</div>



</body>
</html>
