<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Get Scope Attributes</title>
</head>
<body>
<h2>Scope Attributes</h2>
<%
    // Page 영역- 값 세팅한 페이지 벗어나면 유지안됨.
    String pageAttr = (String) pageContext.getAttribute("page");

    // Request 영역 - 사용자의 요청후 응답 받는 과정에 있는 jsp끼리만 값 유지됨.
    // Request는 사용자가 화면에서 버튼 눌러서 응답을 받기까지 아주 짧은 기간임.
    String requestAttr = (String) request.getAttribute("request");

    // Session 영역 - 브라우저 닫지 않는한 세션에 보관한 값 접근 가능
    String sessionAttr = (String) session.getAttribute("session");

    // Application 영역
    String applicationAttr = (String) application.getAttribute("application");
    if (applicationAttr == null) {
        applicationAttr = "Not Set";
    }
%>

<p>1. Page 영역에 저장한 값 : <%= pageAttr %></p>
<p>2. Request 영역에 저장한 값 : <%= requestAttr %></p>
<p>3. Session 영역에 저장한 값 : <%= sessionAttr %></p>
<p>4. Application 영역에 저장한 값 : <%= applicationAttr %></p>

<a href="setScope.jsp">Go to Set Scope Attributes</a>
</body>
</html>
