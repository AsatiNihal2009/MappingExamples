<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authentication Using Http Session Example.jsp</title>
</head>
<body>
	<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if(username==null || password==null || username.equals("") || password.equals("")){
			response.sendRedirect("loginExampleForJSPSessionHandling.jsp?error=1");
		}else{
			if(username.equals("admin") && password.equals("123")){
				session.setAttribute("username", username);
				response.sendRedirect("dashboard.jsp");
			}else{
				response.sendRedirect("loginExampleForJSPSessionHandling.jsp?error=2");
			}
		}
	%>
</body>
</html>