package com.javalab;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/hello") : 웹브라우저에서 /hello라는 요청이 오면 이 서블릿이 처리한다.
// 사용자가 /login이라고 치면 이 요청이 톰캣에게 전달되고 톰캣은 /login을 갖고 있는 서블릿
// 을 찾아서 요청을 처리하라고 시킨다.
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /*
     * doGet() : 사용자가 get 방식 요청을 보냈을 때 처리한다.
     * request : 클라이언트의 요청 정보를 서버로 전달하는 역할
     * response : 서버가 처리한 결과 페이지를 클라이언트에게 응답으로 전달하는 역할
     * */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().append("<!DOCTYPE html>")
            .append("<html>")
            .append("<head>")
            .append("<meta charset=\"UTF-8\">")
            .append("<title>Insert title here</title>")
            .append("</head>")
            .append("<body>")
            .append("<h2>안녕하세요 서블릿</h2>")
            .append("</body>")
            .append("</html>");
    }
}
