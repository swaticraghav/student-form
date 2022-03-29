<%@page import="org.apache.tomcat.util.buf.StringUtils"%>
<%@ page import="java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your TODO List</title>
</head>
<body>

	<h3>Set you list items -</h3>
	<form action="studentSession.jsp">
		<input type="text" name="todolist">
		<input type="submit" name="submit">
	</form>
	<br>
	<br>

	<% 
		List<String> attr = (List<String>) session.getAttribute("attributeOne");
		if(attr == null){
			attr = new ArrayList<>();
		}
		
		String item = request.getParameter("todolist");
		if(item != null && !item.isEmpty()){
			attr.add(item);
			response.sendRedirect("studentSession.jsp");  
		}
		
		session.setAttribute("attributeOne", attr);
	%>
	<br>
	<h1>Your TODO list is - </h1>
	<br>
		
	<% 
		for(int i = 0; i < attr.size(); i++){
			out.println(i + 1 + " - " + attr.get(i) + "<br>");
		}
	%>
	
</body>
</html>