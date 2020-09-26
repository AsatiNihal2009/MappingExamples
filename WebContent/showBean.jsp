<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShowBean</title>
</head>
<body>
	<h3>Show Bean Data</h3>
	<jsp:useBean id="productBean" class="com.ecommerce.online.ecom.model.Product" scope="session"></jsp:useBean>
	Product ID:<jsp:getProperty name="productBean" property="product_id"/><br><br>
	Product Name:<jsp:getProperty name="productBean" property="product_desc"/><br><br>
	Product Price:<jsp:getProperty name="productBean" property="product_price"/><br><br>
</body>
</html>