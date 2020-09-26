<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info from Cookies</title>
</head>
<body>
	<%
		Cookie[] cookies= request.getCookies();
	
	if(cookies!=null){
		out.print("<h4> User Info</h4>");
		for(int i=0;i<cookies.length;i++){
			out.println("<h5>"+cookies[i].getName()+":"+cookies[i].getValue()+"</h5>");
		}
	}
	%>
</body>
</html>