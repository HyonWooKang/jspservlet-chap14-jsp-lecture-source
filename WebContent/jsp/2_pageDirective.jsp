<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- import, error 페이지를 쓸 수 있다. -->
	<%
		Date date = new Date();
		System.out.println(date);
	%>
	
	<!-- Runtime 에러가 발생 -->
	<%
		String str = null;
		char ch = str.charAt(0);
	%>
</body>
</html>