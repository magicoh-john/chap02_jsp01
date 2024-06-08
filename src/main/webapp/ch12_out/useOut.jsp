<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>out 기본 객체 사용</title></head>
<body>

	<h2> OUT 기본 객체 : 사용자에게 전달할 응답 생성</h2>
<%
	out.println("안녕하세요?");
%>
<br>
out 기본 객체를 사용하여 
<%
	out.println("출력한 결과입니다.");
%>

</body>
</html>
