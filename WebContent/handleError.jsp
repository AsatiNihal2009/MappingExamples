<!-- In JSP file where jsp  error is handled then enable flag isErrorFlag in page directive,after that only implicit exception will work -->
<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error handling</title>
</head>
<body>
	<%exception.printStackTrace(response.getWriter());%>
	<hr>
	<h3>An Exception has been generated</h3>
</body>
</html>