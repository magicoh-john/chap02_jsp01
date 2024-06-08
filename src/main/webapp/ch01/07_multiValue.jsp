<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_multiValue.jsp</title>
</head>
<body>
	<h2>다중 파라미터 전달받기</h2>
	<%
		// 파라미터 인코딩
		// 1. get방식 : 브라우저 주소창에 파라미터를 쿼리스트링 형태로 달려서 전송한다.
		//	이 방식은 웹브라우저가 자동으로 한글을 URL인코딩 방식으로 인코딩해서 전송해준다.
		//	그래서 별도의 디코딩 과정을 거치지 않아도 한글이 깨지지 않는다.
		// 2. post 방식 : post방식은 파라미터를 HTTP 메시지 바디 부분에 담아서 전송하므로
		//	웹브라우저가 현재 문서의 캐릭터 셋 형태로 인코딩해서 보내준다. 이렇게 전송된 파라미터는
		//  서버에서 별도의 디코딩 과정을 거쳐야 온전한 한글 문자 형태로 전달받을 수 있다.
		request.setCharacterEncoding("utf-8");
	
		String pName = request.getParameter("name");
		String pAddress = request.getParameter("address");
		// checkbox 값 추출
		String[] values = request.getParameterValues("pet");
		
		if(values != null){
			for(int i=0; i<values.length; i++){
				// 선택된 동물들 출력
	%>
				<%= values[i] %>
	<%				
			}	// end for
		}	// end if
	 %>	

	<br>
	이름 : <%= pName %>		
	주소 : <%= pAddress %>		

</body>
</html>