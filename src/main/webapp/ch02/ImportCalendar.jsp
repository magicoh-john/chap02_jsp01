<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Date" %>
<% Date now = new Date(); %>
<html>
<head>
	<title>자바 라이브러리 Import</title>
</head>
<body>

	<h3>1. 바로 현재 시간을 구해서 보여주는 경우</h3> 
	지금시간 : <%= new Date() %>
	<br> <br>
	<h3>2. 위에서 만들어놓은 자바 변수를 보여주는 경우</h3>
	지금시간 : <%= now %>

</body>
</html>
