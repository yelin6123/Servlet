<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <ul class="nav nav-fill w-100">
    <%-- 파라미터로 보내줌 : ?category=### 서브 페이지로 이동 --%>
		<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp" class="nav-link text-white">전체</a></li>
		<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
		<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
		<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?category=예능" class="nav-link text-white">예능</a></li>
		<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?category=영화" class="nav-link text-white">영화</a></li>
		<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?category=스포" class="nav-link text-white">스포츠</a></li>
	</ul>