<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>계산 결과</title>
</head>
<body>
    <h2>계산 결과</h2>
    <%
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operator = request.getParameter("operator");
        double num1 = 0;
        double num2 = 0;
        boolean valid = true;
        String errorMessage = "";

        try {
            num1 = Double.parseDouble(num1Str);
        } catch (NumberFormatException e) {
            valid = false;
            errorMessage = "첫 번째 숫자가 유효하지 않습니다.";
        }

        try {
            num2 = Double.parseDouble(num2Str);
        } catch (NumberFormatException e) {
            valid = false;
            errorMessage = "두 번째 숫자가 유효하지 않습니다.";
        }

        if (valid) {
            double result = 0;
            boolean divideByZero = false;

            switch (operator) {
                case "+":
                    result = num1 + num2;
                    break;
                case "-":
                    result = num1 - num2;
                    break;
                case "*":
                    result = num1 * num2;
                    break;
                case "/":
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        divideByZero = true;
                    }
                    break;
                default:
                    valid = false;
                    errorMessage = "유효하지 않은 연산자입니다.";
            }

            if (valid) {
                if (divideByZero) {
                    out.println("<p>0으로 나눌 수 없습니다.</p>");
                } else {
                    out.println("<p>결과: " + result + "</p>");
                }
            } else {
                out.println("<p>" + errorMessage + "</p>");
            }
        } else {
            out.println("<p>" + errorMessage + "</p>");
        }
    %>
    <a href="calculator.jsp">다시 계산하기</a>
</body>
</html>
