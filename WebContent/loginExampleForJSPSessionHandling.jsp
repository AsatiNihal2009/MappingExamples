<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String error=request.getParameter("error");
	if(error!=null){
		if(error.equals("1")){
			out.print("<h5>User Name and Password Cannt be Empty</h5>");
		}else if(error.equals("2")){
			out.print("<h5>User Name and Password Cannt is invalid</h5>");
		}else{
			out.print("<h5>Your Session is expired</h5>");
		}
	}
	%>
	<h1>User Login Form</h1>
	<form action="AuthenticationUsingHttpSessionExample.jsp" method="get">
		UserName<input type="text" name="username"><br>
		<hr>
		Password<input type="password" name="password"><br>
		<hr>
		Submit <input type="submit" value="Submit">
	</form>
</body>
</html>