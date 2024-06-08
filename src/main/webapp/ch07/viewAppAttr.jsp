<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>application 기본 객체 속성 보기</title></head>

<body>
<%
	// http://localhost:8080/chap02_jsp01/ch07/applicationObj.jsp?name=hong&value=1234
	// 했으면 다음과 같이 "hong"으로 검색하면 application에 세팅한 값(1234)을 찾아올 수 있다.
	// 그리고 getAttribute() 메소드의 반환 타입이 객체이므로 String 타입으로 형변환해야 한다.
	String name = (String)application.getAttribute("hong");	// hong
%>

application 객체에 세팅된 name 속성의 값은 : <b><%= name %>

</body>
</html>
