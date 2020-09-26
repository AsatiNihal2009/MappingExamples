<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<h5>Your Session is terminated</h5>
	<a href="loginExampleForJSPSessionHandling.jsp">Log In</a>
</body>
</html>