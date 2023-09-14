<%-- jsp 인지 알 수 있는 내용이라 지우면 안돼 --%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<p>
	<%--Calendar : 현재시간을 출력 할 수 있는 클랙스 --%>
	<%-- .getInstance :현재시간을 만들수는 객체  --%>
	<%-- .getTime : date 객체로 만들 수 있음  --%>
	현재 시간 : <%= Calendar.getInstance().getTime() %>
	<%-- 현재 시간 : Wed Sep 13 17:22:51 KST 2023 --%>
</p>