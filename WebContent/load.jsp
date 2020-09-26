<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Load  Jsp</title>
</head>
<body>
	<h3>JSP Page after Redirection</h3>
	<%
		out.print("Hello from load.jsp");
	%>
	Data <%= request.getParameter("data")%><br> <hr>
	Time <%= request.getParameter("time")%><br> <hr>
	Username <%=request.getParameter("username")%>
	
	<jsp:include page="include.jsp"></jsp:include>
	
</body>
</html>