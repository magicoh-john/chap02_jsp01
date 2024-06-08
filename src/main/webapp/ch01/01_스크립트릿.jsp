<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>스크립트릿 : 자바 코드를 사용할 수 있는 공간</b>
	<br>
	<%
		int sum = 0;
		for(int i=0; i<=10; i++){
			sum += i;
		}
	%>
	
	<p> 1부터 10까지의 합은 <%= sum %>입니다	</p>
	<p>표현식 문법을 통해서 자바의 변수가 계산한 값을 Html 문서에 출력할 수 있다.</p>
	<h3>바로 표현식 사용</h3>
	1+2+3 : <%= 1 + 2 + 3 %>
</body>
</html>