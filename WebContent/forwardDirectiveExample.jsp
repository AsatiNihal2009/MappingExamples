<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	<h3>JSP page Forward Action</h3>
	<jsp:forward page="load.jsp">
		<jsp:param name="data" value="Secure Data"/>
		<jsp:param name="time" value="7:50 PM"/>
		<jsp:param name="username" value="John Smith"/>
	</jsp:forward>
</body>
</html>