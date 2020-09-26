<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<%! int hours=60*60*24; %>
	
	<%	
		Cookie fullName=new Cookie("fullName",request.getParameter("fullName"));
		Cookie userId=new Cookie("userId",request.getParameter("userId"));
		
		//set an expiry
		fullName.setMaxAge(hours);
		userId.setMaxAge(hours);
		
		//add cookie in response
		response.addCookie(fullName);
		response.addCookie(userId);
	%>
	<hr>
	<h1>User submitted Form Data</h1>
	Full Name :<%= request.getParameter("fullName") %>
	User ID: <%= request.getParameter("userId") %>
	
	<a href="user-info.jsp">Display User Info</a>
</body>
</html>