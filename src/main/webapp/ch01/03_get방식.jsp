<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>get 방식 get 요청</h3>
	<p> 클라이언트가 get 요청을 보내면 브라우저 주소창에 쿼리스트링으로
		관련된 정보가 달려서 온다. 예를 들면 login.jsp?id=hong&password=1234
	</p>
	<%
		String pName = request.getParameter("name");
		String pMail = request.getParameter("email");
		String pAge = request.getParameter("age");
	%>
	
	<p>get방식으로 요청된 경우 주소창의 쿼리스트링으로 파라미터가 전달된다.</p>
	Name : <%= pName %> <br>
	Email : <%= pMail %><br>
	Age : <%= pAge %><br>
	
</body>
</html>