<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dash board</title>
</head><%
	if(session.getAttribute("username")==null){
		response.sendRedirect("loginExampleForJSPSessionHandling.jsp?error=3");
	}
%>
	<h1>Hello <%= session.getAttribute("username") %></h1>
	<a href="logout.jsp">Logout</a>
</body>
</html>