<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getScope.jsp</title>
</head>
<body>
	<h2>JSP 기본 객체에 저장한 값 조회하기</h2>
	
	<%
	
		// page 영역에 저장한 값 조회
		String pageAttr = (String)pageContext.getAttribute("page");
	
		// request 영역에 저장한 값 조회
		String requestAttr = (String)request.getAttribute("request");
		
		// session 영역에 저장한 값 조회
		String sessionAttr = (String)session.getAttribute("session");
		
		// application 영역에 저장한 값 조회
		String applicationAttr = (String)application.getAttribute("application");
		
	%>
	
	<p>1. page 영역에 저장한 값 : <%= pageAttr %></p>
	<p>2. request 영역에 저장한 값 : <%= requestAttr %></p>
	<p>3. session 영역에 저장한 값 : <%= sessionAttr %></p>
	<p>4. application 영역에 저장한 값 : <%= applicationAttr %></p>
	
</body>
</html>