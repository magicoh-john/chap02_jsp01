<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.IOException" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readFileDirect.jsp</title>
</head>
<body>
	<h2>절대 경로 사용하여 자원(파일, 이미지 등) 읽기</h2>
	<%
	
		String filePath = 
				"C:/javaworks/workspace/jspweb/chap02_jsp01/src/main/webapp/resource/sleep.txt";
	
		char[] buff = new char[128];
		int len = -1;
		
		try(InputStreamReader fr = 
				new InputStreamReader(new FileInputStream(filePath), "UTF-8")){
			while((len = fr.read(buff)) != -1){
				out.print(new String(buff, 0, len));
			}
		}catch(IOException e){
			out.println("파일 읽는중 익셉션 발생 : " + e.getMessage());
		}
		
	%>
</body>
</html>