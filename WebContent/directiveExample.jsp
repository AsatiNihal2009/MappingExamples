<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"
    %>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="format" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JS Directive File</h1>
	<h3>Date Example for Import directive</h3>
	<%= new Date() %>
	<%@ include file="load.jsp" %> 
	
	<h3>Taglib using JSTL</h3>
	Currency =<format:formatNumber value="145" type="currency"/>
	<core:set var="now" value="<%=new Date() %>" />
	Current Date and Time :<format:formatDate value="${now}"/>
</body>
</html>