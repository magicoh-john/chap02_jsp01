<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체별 유지 범위</title>
</head>
<body>
		<h2>JSP 객체별 값 유지 범위</h2>
		<%
			// 페이지 영역(Page 객체에 저장한 값의 존재 범위)
			// 하나의 jsp 페이지에서만 유효하다.
			// pageContext는 페이지 객체와 동일하다.
			// page객체에 "page"라는 이름으로 "apple"이라는 값을 저장함.
			pageContext.setAttribute("page", "apple"); 
		
			// Request 영역(Request 기본 객체에 저장한 값의 존재 범위)
			// 한 번의 요청(request)에서 클라이언트가 결과를 받기 전까지 서버에서 경유해 간
			// 페이지들 간에는 값이 유지된다.
			// request 객체에 "request"라는 이름으로 "orance"이라는 값을 저장함.
			request.setAttribute("request", "orance");
			
			// Sesseion 영역(Session 기본 객체제 저장한 값의 존재 범위)
			// 웹브라우저를 종료하기 전까지 세션에 저장한 값은 계속 유지된다.
			// session 객체에 "session"라는 이름으로 "banana"이라는 값을 저장함.
			session.setAttribute("session", "banana");
			
			// Application 영역(Application 객체에 저장한 값의 존재 범위)
			// 해당 애플리케이션이 구동되는 동안에는 application 객체에 저장한 값은 계속 유지된다.
			// application 객체에 "application"라는 이름으로 "peach"이라는 값을 저장함.
			application.setAttribute("application", "peach");
		
		%>
		<!-- 현재 페이지를 실행하고 즉시 다른 페이지로 이동 
		 	이렇게 이동하면 이동해간 페이지에서 이 페이지에서 request 객체에
		 	저장한 값을 사용할 수 있다. -->
		<jsp:forward page="getScope.jsp" />
		
		<!-- 다음과 같이 새로운 요청을 보내게 되면 이 페이지에서 request 영역에
		저장한 값은 사라지고 없다. 왜냐하면 새로운 요청이 발생했기 때문이다. -->
		<a href="getScope.jsp"> 다른 페이지로 이동해서 현재 페이지에서 저장한 값을 조회해보자.</a>
		
</body>
</html>