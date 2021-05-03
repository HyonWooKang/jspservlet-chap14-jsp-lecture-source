<!-- 1. 페이지 지시지 태그 -->
<!-- 
	페이지에 대한 설정을 하는 지시자 태그이다.
	현재 페이지에 스크립트릿((< %) 태그를 이용하여 작성하는 문법은 자바라는 의미이며,
	response head에 응답을 설정하는 것도 할 수 있다.
	content-type이라는 헤더에 마임 타입과 인코딩 방식을 지정해두었다.
	==> import도 사용이 가능하다.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		JSP는 표면상으로는 HTML 문서와 유사하다.
		하지만 JSP 컨테이너가 최초 JSP를 요청할 시 JSP를 서블릿으로 변환시킨 후,
		서블릿 컨테이너가 변환된 서블릿을 이용해서 인스턴스를 생성하고 호출한다.
		JSP는 매 요청시마다 기존 JSP파일이 변환되었는지를 확인하여 변경이 없는 경우
		기존에 생성해둔 인스턴스를 사용하고, 변경이 있는 경우 translate 과정을 거쳐
		다시 인스턴스를 생성한다.
	 -->
	 
	 <!-- 
	 	JSP는 html 기반의 문서에서 자바 문법을 사용할 수 있도록 지원한다. (서블릿으로 html 작업이 힘들어 jsp를 만들었다.)
	 	JSP의 태그 엘리먼트를 이용하여 사용 목적별로 자바 코드를 이용할 수 있도록 지원한다.
	 	JSP의 태그 엘리먼트는 directive, declare, script, expression, comment가 있다.
	  -->
	  
	  <!-- 2. jsp 주석 태그 -->
	  <%-- html 주석은 클라이언트에 노출되지만, jsp 주석은 클라이언트에게 노출되지 않는다. --%>
	  
	  <!-- 3. 선언 태그 -->
	  <!-- 서블릿으로 변환 시 선언 태그 내에 작성한 내용을 필드로 선언해준다. -->
	  <%!
	  	private String name;
	  	private int age;
	  %>
	  
	  <!-- 4. scriptlet 태그 -->
	  <%
	  	// 간단한 자바 코드를 작성할 수 있는 부분이다.
	  	/* scriptlet 태그 내에서의 주석은 자바 주석과 동일하다.
	  	   선언 태그에서 작성한 내용을 초기화하고 출력할 수도 있으며,
	  	   간단한 로직 처리도 가능하다.
	  	   주의사항 : 작성하는 코드는 자바코드이기 때문에 ;(세미콜론)을 작성해주지 않으면
	  	   complie 과정에서 에러가 발생한다.
	  	*/
	  	name = "홍길동";
	  	age = 20;
	  	
	  	System.out.println("name : " + name);
	  	System.out.println("age : " + age);
	  	
	  	for(int i = 0; i < name.length(); i++) {
	  		System.out.println(name.charAt(i));
	  	}
	  %>
	  
	  <!-- 5. expression 태그 -->
	  <!-- PrintWriter를 이용하여 브라우저에 값을 내보내기하여 브라우저에서 보여지게 한다.
	  	   
	  	   자바 코드로 변환 시 out.print(); 괄호 안에 expression 태그 내에 작성한 내용이 들어가기 된다.
	  	   아래 코드는 out.println(name); 과 동일하다. (페이지에 출력)
	  -->
	  name : <%= name %><br>
	  age : <%= age %><br>
	  <!-- 따라서 위 값은 출력된다. -->
	  
</body>
</html>