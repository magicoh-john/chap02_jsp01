<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인jsp</title>
</head>
<body>
	<h2>로그인</h2>
	<form action="05_loginProcess.jsp" method="post">
		<label for="id">아이디:</label>
		<input type="text" id="id" name="id" required>
		<br>
		<label for="password">비밀번호:</label>
		<input type="password" id="password" name="password" required>
		<br>
		<input type="submit" value="로그인">	
	</form>
	
	<script>
		const form = document.querySelector("form");
		form.addEventListener("submit", function(event){
			//event.preventDefault();
			
			let id = document.querySelector("#id").value;
			let password = document.querySelector("#password").value;
			
			console.log("아이디 : " + id);
			console.log("비밀번호 : " + password);
		});		
	</script>
	
</body>
</html>