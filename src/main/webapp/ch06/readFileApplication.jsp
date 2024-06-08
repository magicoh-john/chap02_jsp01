<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page import = "java.nio.file.*" %>
<%@ page import = "java.io.IOException" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getContextPath()</title>
</head>
<body>
	<h2> 상대경로 - 컨텍스트패스 경로를 사용하여 자원 읽기</h2>	
	<%
	// [구동될 애플리케이션을 기준으로 상대 경로 얻기]
	//  "/resource" 맨 앞에 있는 "/"는 현재 애플리케이션의 루트를 말한다.
	// 우리 프로젝트로 말하면 webapp 폴더에 해당한다.
	// 즉 "/"는 현재 애플리케이션이 배포되는 컨텍스트 패스를 기준으로 한다.
	String resourcePath = "/image/tiger.jpg"; // 상대경로
	// 현재 애플리케이션의 컨텍스트 패스 얻기
	String contextPath = request.getContextPath(); // chap02_jsp01
	%>
	
	<br>
	contextPath : <%= contextPath %>	
	
	<br>
	<img src="<%= contextPath + resourcePath %>" alt="호랑이이미지" />
	
	<br>
	전체 경로 : <%= contextPath + resourcePath %> 
	
</body>
</html>