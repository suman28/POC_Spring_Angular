<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
<%response.sendRedirect(request.getContextPath()+"/index"); %>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Spring 3.0 MVC Series: Index - ViralPatel.net</title>
</head>
<body>
	<a href="hello">Say Hello</a>
		<form method="POST" action="addStudent">
		<table border="2">
			<thead>
				<th>ID</th>
				<th>Name</th>
			</thead>
			 <c:forEach var="user" items="${userView}">
			    <tr>
				   
				        <td><a href="hello/${user.userId}"><c:out value="${user.userId}"/></a></td>
				        <td><c:out value="${user.firstName}"></c:out></td>
				   
			    </tr>
			</c:forEach>
			</table>  
				
		</form>
</body>
</html> --%>