<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
    <h2>로그인</h2>
    <form action="loginProcess.jsp" method="post">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required>
        <br><br>
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" required>
        <br><br>
        <input type="submit" value="로그인">
    </form>

    <script>
        // 폼이 제출될 때 logFormData 함수를 호출
        const form = document.querySelector("form");
        form.addEventListener("submit", function(event) {
        	//form submit 방지
        	event.preventDefault();
        	
            // 아이디와 비밀번호 필드값 추출
            var id = document.querySelector("#id").value;
            var password = document.querySelector("#password").value;

            // 콘솔에 출력
            console.log("아이디: " + id);
            console.log("비밀번호: " + password);
            form.submit();
        });
    </script>
</body>
</html>
