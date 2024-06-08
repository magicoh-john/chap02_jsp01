<!-- 아래의 page로 시작하는 부분을 page 디렉티브 또는 지시자라고 한다.
	jsp 페이지에 대한 설정 사항을 지정하는 부분이다. -->
<%@ page contentType="text/html; charset=UTF-8" %>
<!-- 여기서부터가 html이 시작되는 부분이다. -->
<html>
<head>
<title>현재 시간</title>
</head>
<body>
	<h2>이 페이지는 동적인 페이지입니다.</h2>
	<h4>페이지의 내용이 요청될 때마다 매번 다른 값이 클라이언트에게 제공됩니다.</h4>
	지금 : <%= new java.util.Date() %>
	위와 같은 표현을 "표현식"이라고 부른다. html 코드 중간에 자바에서 만든 값을
	출력할 떄 사용한다.
</body>
</html>
