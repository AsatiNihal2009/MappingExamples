<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basic JSP Page  With declaration,expression and scriplet </title>
</head>
<body>
	<h2>Welcome to JSP</h2>
	<%! int x=100; 
	 int number =10;
		String name="anc";
		String getName(String name){
			return "Hello "+name;
		}
	%>

	<% out.println("<h2> My First JSP page</h2>"); %>
	The Time on server is:<%=  new Date() %>
	<% out.print(x);%>

	<%
		for(int i=0;i<10;i++){
			out.println("<br> Number is"+i);
		}
		
		if(10 > 5) out.print("<br> the number 10 is > than 5<br>");
	%>

	The number value is: <%= number%><br><br>
	the number +100 is <%= number+100%><br><br>
	The name is upper case<%= name.toUpperCase()%><br><br>
	Hello welcome <%=getName("Nihal")%>
	
	
	<!-- call servlet from JSP -->
	<!--<jsp:include page="/add-product"/> -->
	<!-- we generally call JSP from servlet using requestDispacter("WEB-INF/<jsp>.jsp").forward(req,res) to display result  (single responsibility principle) -->
	
</body>
</html>