<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
	현재 시간은?<br>
	<%-- 
	1. 정적방식 : 페이지<!DOCTYPE html> 그대로 가져온다고 보면 됨 
		ㄴ 페이지 통째로 들고와서 껴놓는식
	2. 동적 방식 : 템플릿 까지 구성해서??????>>>>>>>>>>>>>>>>>>> 
	 --%>
	 <%@ include file="date.jsp" %>
	 <%-- 
	 	<%@ : 파일을 불러올 수 있는 표시 
	 	include : 다른 페이지를 여기에 포함 시킬 것이다 명령
	 	file : 파일 경로/위치를 표시함
	 		ㄴ 경로 표시방법 
	 			1) 절대경로 : 있는거 다 쓰는 (/lesson03/ex01/date.jsp)
	 			2) 상대경로 : 같은 폴더에 있는 (date.jsp)
	 	페이지 소스보기로 확인쓰~ 
	  --%>
</body>
</html>