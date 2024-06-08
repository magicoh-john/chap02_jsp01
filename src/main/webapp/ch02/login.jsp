<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>로그인</h2>
	<form action="loginProcess.jsp" method="post">
		<label for="id">아이디:</label>
		<input type="text" id="id" name="id"><br>
		<label for="password">비밀번호:</label>
		<input type="text" id="password" name="password"><br>
		<input type="submit" value="로그인">
	</form>
	
	<script>
		const form = document.querySelector("form");
		form.addEventListener("submit", function(envnt) {
			// 폼 전송 억제
			//event.preventDefault();
			
			let id = document.querySelector("#id").value;
			let password = document.querySelector("#password").value;
			
			console.log('id : ', id);
			console.log('password : ', password);
		});
	
	</script>
</body>
</html>