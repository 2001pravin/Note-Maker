
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="All_js_css.jsp"%>

</head>
<body>
	<%@include file="Navbar.jsp"%>
     <%  
      
         int noteID = Integer.parseInt(request.getParameter("note_id"));
        Session s = FactoryProvider.getFactory().openSession();
        Note note =(Note)s.get(Note.class, noteID);
        
      
    %>
      	<form action="UpdateServlet" method="post">
      	<input value ="<%= note.getId() %>>" name="noteID" type="hidden" />
		<div class="mb-3">
			<label for="exampleInputEmail1">Note Title</label> <input
				name="title" required type="text" class="form-control" id="title" value="<%=note.getTitle()%>>"/>
		</div>
		<div class="mb-3">
			<label for="content">Note Content</label>
			<textarea name="content" required id="content" class="form-control"
				style="hight: 600px"><%=note.getContent() %> </textarea>
		</div>

		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
		</div>
	</form>
</body>
</html>