<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%-- http://localhost/lesson02/ex01.jsp --%>
	<!-- HTML 주석 : 소스보기에서 보인다. -->
	<%-- JSP 주석 : 소스보기에서 보이지 않는다. --%>
	<%-- java : <%  %> 안에 기재 --%>
<% //자바가 되는 코드 
	 //java 주석
	 //스크립틀릿(Scriptlet)- main 함수 같은 느낌
	 int sum = 0;
	for(int i = 1; i <= 10; i++) {
		sum += i;
	}	 
	
	List<String> list = List.of("X", "O", "O", "O", "X", "O", "O", "O", "X", "O");
%>
<%-- <%= %> : expression 자바 변수를 잠깐 표현할때 --%>
<b>합계:</b>
<input type="text" value="<%=sum %>" >
<br>

<%-- 선언문 :<%! %> --%>
<%! 
	//선언문 - 클래스 같은 느낌
	
	//field
	private int num = 100;
		
	
	//method
	public String getHelloWorld() {
		return "Hello world";
	}
	
%> 

<%= getHelloWorld() %>
<br>
<%= num + 200 %>

</body>
</html>