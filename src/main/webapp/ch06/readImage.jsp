<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page import = "java.nio.file.*" %>
<%@ page import = "java.io.IOException" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readFileApplication.jsp</title>
</head>
<body>
	<h2> 상대경로 - 애플리케이션의 배포 경로를 기준으로 자원 읽기</h2>	
	<%
	// [구동될 애플리케이션을 기준으로 상대 경로 얻기]
	//  "/resource" 맨 앞에 있는 "/"는 현재 애플리케이션의 루트를 말한다.
	// 우리 프로젝트로 말하면 webapp 폴더에 해당한다.
	// C:\javaworks\tomcat\apache-tomcat-9.0.89\wtpwebapps\chap02_jsp01\resource\sleep.txt
	// 즉 "/"는 현재 애플리케이션이 배포되는 컨텍스트 패스를 기준으로 한다.
	String resourcePath = "/resource/sleep.txt";
	String realPath = application.getRealPath(resourcePath);
	%>
	realPth : <%= realPath %>	
	<%
		Path path = Paths.get(realPath); // Path 파일 경로 핸들링
		try{
			// Files.readAllLines() : 파일을 한꺼번에 UTF-8 방식으로 읽어온다.
			// 읽어온 파일을 List<String> 형태로 반환한다.
			List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
			// ArrayList 순회하면서 한줄 씩 출력
			for(String line: lines){
				out.println(line + "<br>");
			}			
		}catch(IOException e){
			out.println("익셉션 발생 : " + e.getMessage());
		}	
	%>	
</body>
</html>