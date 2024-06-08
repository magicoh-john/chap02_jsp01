<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contextpath.jsp</title>
</head>
<body>
	<h2>현재 jsp 페이지가 속한 웹 애플리케이션의 컨텍스트 경로(진입점) 얻기</h2>
	<br>
	<p>1. 웹 애플리케이션 컨텍스트 경로</p>	
	<% String contextPath = request.getContextPath(); %>
	<%= contextPath %>
	<br>
	<p>2. 클라이언트가 요청한 주소</p>
	<%= request.getRequestURI() %>
	

</body>
</html>