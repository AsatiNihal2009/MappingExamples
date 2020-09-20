<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- when error handling is done in another JSP file then we have to explicitly declare Error page in a Page Directive -->
<%@page errorPage="handleError.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects In JSP</title>
</head>
<body>
	<% 
		String responseCheck=request.getParameter("office");
		if(responseCheck!=null){
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location", "response-redirect.jsp?office="+responseCheck);
		}
		
		
		String errorCheck=request.getParameter("error");
		if(errorCheck!=null){
			response.setStatus(response.SC_BAD_REQUEST);
			throw new RuntimeException("Exception has been raised");
		}
	%>
	
	<%
		int serverPort=request.getServerPort();
		out.print("<h5>the server port is "+serverPort+"</h5><br>");
		out.print("<h5>the servlet Name is "+config.getServletName()+"</h5><br>");
		out.print("<h5>the server Info is "+application.getServerInfo()+"</h5>");
		
		String pages=page.toString();
		out.print("<h5>the Page name is "+pages+"</h5>");
		// this can be access anywhere throughout the page using pageContext
		pageContext.setAttribute("userId", "John");
		pageContext.setAttribute("userPid", "P1010");
	%>
	<%
		out.print("<h6>User ID for page Context"+pageContext.getAttribute("userId")+"</h6>");
		out.print("<h6>User Pid for page Context"+pageContext.getAttribute("userPid")+"</h6>");
	%>
	<!-- Communincation between 2 jsp files -->
	<a href="index.jsp?office=head_office">Show usage of Req and Response Object</a>
	<br>
	<!-- Error redirect -->
	<a href="index.jsp?error=1">Show usage of Error Object</a>
</body>
</html>