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
		// jsp - Html 모드에 자바코드를 포함시켜서 기능을 구현한다.
		// 스크립트릿 - 자바 소스코드를 구현할 수 있는 공간
		// request - jsp에서 제공하는 기본 객체로 request 영역에 존재하는 값을 추출할 수 있다.
		//			 클라이언트가 요청한 모든 정보를 담고 있는 객체이다.
		// 스크립트릿에서 선언한 변수는 이 페이지 어디서라도 접근 가능하다. 설령 그 부분이
		// html 부분이라 할지라도 표현식 형태로 참조가 가능하다.
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// 위에서 추출한 파라미터 값을 웹브라우에 표시
		// out 객체 - 웹브라우저에 변수 값을 출력해주는 역할
		out.println("<h2>로그인 결과</h2>");
		out.println("<p>1. 아이디 : " + id + "</p>");
		out.println("<p>2. 비밀번호 : " + password + "</p>");
	%>
	
	<h2>jsp 표현식을 통한 파라미터값 출력</h2>
	1.아이디 : <%= id %> <br>
	2.비밀번호 : <%= password %> <br>
	
	<script>
		let id = "<%= id %>";
		let password = "<%= password %>";
		
		console.log('id :', id);
		console.log('password :', password);
		
		id = "hong";
		password = "1234";
		
		console.log(`${id} ${password}`);	// 템플릿 문자열(백틱) 사용
		
	</script>
	
	
</body>
</html>