<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="All_js_css.jsp"%>

</head>
<body>
	<%@include file="Navbar.jsp"%>
	<h1>please fill your note detail</h1>
	<br>
	<!-- from  -->
	<form action="SaveNoteServlet" method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1">Note Title</label> <input
				name="title" required type="text" class="form-control" id="title" />
		</div>
		<div class="mb-3">
			<label for="content">Note Content</label>
			<textarea name="content" required id="content" class="form-control"
				style="hight: 600px"></textarea>
		</div>

		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
		</div>
	</form>
</body>
</html>