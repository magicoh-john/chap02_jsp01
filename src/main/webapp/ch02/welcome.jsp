<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	%>
	<h2>환영합니다. <%= id %>님 </h2>
</body>
</html>