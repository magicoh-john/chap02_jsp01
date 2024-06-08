<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request 객체를 통하여 클라이언트의 정보 알아내기</h3>
	<b>request 기본객체</b>
	jsp 페이지에서 가장 많이 사용하는 기본객체로서 웹브라우저의 요청과 
	관련이 있는 모든 정보를 저장하고 있다.(제공해준다)
	
	클라이언트로부터 요청이 오면 톰캣은 request 객체를 만들어서 
	서블릿에게 제공한다.
	
	1. 클라이언트IP : <%= request.getRemoteAddr() %><br>
	2. 요청 URI : <%= request.getRequestURI() %><br>
	3. 컨텍스트경로 : <%= request.getContextPath() %><br>
	4. 서버이름 : <%= request.getServerName() %><br>
	5. 서버포트 : <%= request.getServerPort() %><br>

</body>
</html>