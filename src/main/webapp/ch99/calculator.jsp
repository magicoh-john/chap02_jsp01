<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>계산기</title>
</head>
<body>
    <h2>계산기</h2>
    <form action="calculate.jsp" method="post">
        첫 번째 수: <input type="text" name="num1"><br>
        두 번째 수: <input type="text" name="num2"><br>
        연산자: 
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select><br>
        <input type="submit" value="계산하기">
    </form>
</body>
</html>
