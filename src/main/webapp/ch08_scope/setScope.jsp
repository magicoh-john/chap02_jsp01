<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Set Scope Attributes</title>
</head>
<body>
<%
    // Page scope
    pageContext.setAttribute("page", "apple");

    // Request scope
    request.setAttribute("request", "orange");

    // Session scope
    session.setAttribute("session", "banana");

    // Application scope
    application.setAttribute("application", "peach");
%>

	<h2>4가지 영역 객체에 값을 할당</h2>
	
	<p>1. page 영역에 page라는 속성명으로 apple 세팅</p>
	<p>2. Request 영역에 "request" 라는 속성명으로 "orange" 세팅</p>
	<p>3. Session 영역에 "session" 라는 속성명으로 "banana" 세팅</p>
	<p>4. Application 영역에 "application" 라는 속성명으로 "peach" 세팅</p>
	
	<a href="getScope.jsp">다른 페이지로 이동해서 현재 페이지에서 세팅한 값을 조회할 수 있는지 확인하자.</a>
	
</body>
</html>
