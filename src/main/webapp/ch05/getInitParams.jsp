<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getInitParams.jsp</title>
</head>
<body>
	<h2>web.xml에 설정한 설정 정보 읽어오기</h2>
	<pre>
		web.xml은 웹 애플리케이션을 위한 설정 정보를 담고 있다.
		애플리케이션 배포하기 위한 정보도 담고 있다.(배포 서술자)
		예를들면 서블릿 매핑, 필터, 리스너, 세션 설정 등의 정보를 담고 있다.
		그리고 애플리케이션 차원에서 사용할 공통 설정 정보등을 담고 있다.	
	</pre>
	
	<%
	
		// application jsp 기본 객체(전역 객체) - 애플리케이션 전역에서 사용할 가능 
		// web.xml 파일에 설정해놓은 값들을 application 객체를 통해서 가져올 수 있다.
		// application 객체는 개발자가 별도로 객체 생성하지 않아도 자동으로 주어진다.
	
		// web.xml에 설정한 설정 정보 읽어오기
		String logEnabled = application.getInitParameter("logEnabled");
		String debugLevel = application.getInitParameter("debugLevel");	
	%>
	
	<p>1. 로깅 가능 여부 : <%= logEnabled %></p>
	<p>2. 디버깅 레벨 : <%= debugLevel %>
	
	
</body>
</html>