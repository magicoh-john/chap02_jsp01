<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>클라이언트 및 서버 정보</title></head>
<body>
<h2>request 기본 객체</h2>
<p>
	웹브라우저에 웹 사이트를 주소를 입력하면 웹브라우저는 해당 웹서버에 연결한뒤에
	요청 정보를 전송하는데 이 요청 정보를 제공하는 것이 바로 request 객체이다.
	

</p>
1. 클라이언트IP = <%= request.getRemoteAddr() %> <br>
2. 요청 URI = <%= request.getRequestURI() %> <br>
3. 컨텍스트 경로 = <%= request.getContextPath() %> <br>
4. 서버이름 = <%= request.getServerName() %> <br>
5. 서버포트 = <%= request.getServerPort() %> <br>

</body>
</html>
