<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oneToTen.jsp</title>
</head>
<body>

	<h2>1-10합 구하기</h2>
	<%
		int sum = 0;
		for(int i=0; i<=10; i++){
			sum += i;
		}
	%>
	1부터 10까지의 합은 <%= sum %>입니다.
</body>
</html>