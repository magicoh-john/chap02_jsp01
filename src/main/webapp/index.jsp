<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page import = "java.nio.file.*" %>
<%@ page import = "java.io.IOException" %>
<%@ page import = "java.util.List" %>    
<%@ page import="java.util.Date" %> <!-- 사용할 라이브러리 import -->

<%
	// 스크립트릿 : 자바코드를 완벽하게 사용할 수 있는 공간
	// now 변수 : 현재 jsp 페이지에서 사용가능하다.
	Date now = new Date();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>안녕하세요.</h2>
	<h4>1. 현재 시간 : <%= new java.util.Date() %></h4>
	<!-- &lt;%= 표현식 예제, 값 하나 또는 변수 하나를 출력할 수 있다.  -->
	<h4>2. 지금 시간 : <%=now %></h4>
	
		<%
	String resourcePath = "/resource/sleep.txt";
	String realPath = application.getRealPath(resourcePath);
	%>
	realPth : <%= realPath %>
</body>
</html>