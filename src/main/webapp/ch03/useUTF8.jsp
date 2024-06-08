<%@ page contentType="text/html; charset=iso-8859-1" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.util.Date" %>
<%
	// 스크립트릿 html에서 자바코드를 사용할 수 있게 해준다.
	Date now = new Date();
%>
<html>
<head><title>현재 시간</title></head>
<body>
	<h2>인코딩</h2>
	현재 시간 : <%= now %>
	charset을 iso-8859-1로 하면 한글이 깨져서 보인다.
	기본은 iso-8859-1 방식이다. 한글은 utf-8로 해야 안깨진다.
	
</body>
</html>
