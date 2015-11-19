<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="well"
		style="width: 600px; margin-left: auto; margin-right: auto">
		<form class="navbar-form navbar-left" action="searchBook" method="get">
			<div class="form-group">
				<input type="text" name="searchItem" class="form-control" >
			</div>
			<button type="submit" class="btn btn-default">Search Book</button>
		</form>
		<a href="addBook"><button type="button" class="btn btn-primary">Add
				Book</button></a> <br />
		<hr />
		<a href="doLogout"><button type="button" class="btn btn-warning">Log
				Out</button></a> <br />
		<hr />
		<div class="well">
			<c:forEach var="book" items="${books}">
				<div class="well">
					Book Title: ${book.title}<br /> Book ISBN: ${book.ISBN}<br />
					Book Price: ${book.price}$<br /> Book Genre: <a
						href="findBook?genre=${book.genre}">#${book.genre}</a> <br />
					Author Name: ${book.author.firstName}<br /> <a
						href="deleteBook?bookId=${book.id}"><button type="button"
							class="btn btn-danger">Delete</button> </a>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>