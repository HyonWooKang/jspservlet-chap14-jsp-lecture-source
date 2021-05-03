<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 여기서 발생한 데이터는 controller(Servlet파일)로 넘어가서 핸들링한다. -->
	
	<h1 align="center">메뉴 주문</h1>
	<!-- request 객체에 있는 contextPath() 메소드를 이용하여 위치를 잡아준다 -->
	<form action="<%= request.getContextPath() %>/menu/order" method="post">
		<select id="menu" name="menuName">
			<option value="햄버거">햄버거</option>
			<option value="짜장면">짜장면</option>
			<option value="짬뽕">짬뽕</option>
			<option value="순대국">순대국</option>		
		</select>
		<input type="number" min="0" max="100" step="1" name="amount">
		<button type="submit">선택 완료</button>
	</form>
</body>
</html>