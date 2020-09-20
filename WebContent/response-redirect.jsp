<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response redirect from index.jsp</title>
</head>
<body>
	<%
		String office=request.getParameter("office");
		if(office!=null){
			out.print("<h6>value of Office obtained"+office+"</h6>");
		}else{
			out.print("<h1> Alert wrong header</h6>");
		}
	%>
</body>
</html>