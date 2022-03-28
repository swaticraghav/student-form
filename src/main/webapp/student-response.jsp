<html>
	<head>
		<title>Student Form</title>
	</head>
	<body>
		<h2>Entered Student Data - </h2>
		<%= request.getParameter("firstName") %> ${param.lastName} from ${param.region} <br>
		Language Opted - ${param.programmingLanguage} <br>
		Favorite Book - 
		<%
			String[] books = request.getParameterValues("optedBook");
			if (null != books) {
				for (String book : books) {
					out.println("<li>" + book + "</li>");
					out.println("</br>");
				}
			} else {
				out.println("No book found");
			}
		%>
		 
	</body>
</html>