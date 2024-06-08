<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<%
		// post 방식 파라미터 디코딩(한글 깨짐 방지)
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// id, password가 우리가 원하는 것과 같을 경우에 페이지 이동
		/*
			response jsp 기본 객체 : 클라이언트에게 응답을 해주는 객체로서
			대표적으로 sendRedirect("이동할 페이지")메소드가 있다. 이 메소드는 클라이언트로 하여금
			파라미터로 전달한 페이지로 강제로 이동하도록 지시한다.
		*/
		if(id != null && id.equals("홍길동")){
			// 파라미터 인코딩
			id = URLEncoder.encode(id, "utf-8"); // 개발자가 직접 인코딩 작업
			// 페이지를 강제로 다른 페이지로 이동
			response.sendRedirect("welcome.jsp?id=" + id); // get 방식, 웹브라우저가 자동으로 인코딩하지 않는다.
		}else{
			response.sendRedirect("error.jsp");
		}
	%>
	
	1. id : <%= id %> <br>
	2. password : <%= password %>
</body>
</html>