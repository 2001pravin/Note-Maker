
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : Note Taker</title>
<%@include file="All_js_css.jsp"%>

</head>
<body>
	<%@include file="Navbar.jsp"%>
	<h1>All Notes</h1>
	<div class="row">
		<div class="col-12">
			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from com.entities.Note"); // Use fully qualified class name
			List<Note> list = q.list();
			for (Note note : list) {
			%>
			<div class="card mt-3">
				<img src="img/post-it.png" class="card-img-top"
					style="max-width: 100px" alt="...">
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text"><%=note.getContent()%></p>
					<p><%= note.getAddedDate() %></p>
					<a href="DeleteServlet?note_id=<%=note.getId()%>"
						class="btn btn-danger">Delete</a> <a href="Update.jsp?note_id<%=note.getId() %>>"
						class="btn btn-primary">update</a>

				</div>
			</div>

			<%
			}
			s.close();
			%>


		</div>
	</div>
</body>
</html>