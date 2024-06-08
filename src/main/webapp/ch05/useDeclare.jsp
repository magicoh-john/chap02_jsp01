<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	// %! 선언부를 알리는 표식
	// 곱셈 메소드
	public int multiply(int a, int b){
		int c = a * b;
		return c;
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useDeclare.jsp</title>
</head>
<body>
	<h2>선언부(Decalare)</h2>
	
	<%
		int result = multiply(10, 3);
	
	%>
	10 * 3 = <%= result %>
	
</body>
</html>