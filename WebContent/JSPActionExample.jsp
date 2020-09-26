<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>UseBean Action</h4>
	<!-- most appt scope is session -->
	<jsp:useBean id="productBean" class="com.ecommerce.online.ecom.model.Product" scope="session"></jsp:useBean>
	<jsp:setProperty property="product_id" name="productBean" value="1"/>
	<jsp:setProperty property="product_desc" name="productBean" value="ABC"/>
	<jsp:setProperty property="product_price" name="productBean" value="1000.0"/>
	<br><hr>
	<a href="showBean.jsp">Access Bean Properties from Another JSP </a>
	<br><hr>
	<jsp:include page="include.jsp"></jsp:include>
		
	<hr><br>
	<jsp:text>
		<![CDATA[This is my My First Action text template]]>
	</jsp:text>
</body>
</html>