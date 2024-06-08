<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<html>
<head>
    <title>로그인 처리</title>
</head>
<body>
    <%
        // request 객체의 getParameter()메소드로 전송된 값 추출
        String id = request.getParameter("id");
        String password = request.getParameter("password");

     	// 자바의 out 객체를 이용해 브라우저로 출력
        out.println("<h2>로그인 결과</h2>");
        out.println("<p>아이디: " + id + "</p>");
        out.println("<p>비밀번호: " + password + "</p>");

        // 여기서 데이터베이스 조회 등 로그인 처리를 추가할 수 있습니다.
    %>
    
        아이디 <%= id %>
        비밀번호 <%= password %>
    
</body>
</html>
