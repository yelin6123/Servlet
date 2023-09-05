<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script></head>
<body>
	<div class="container">
	<h1>날짜, 시간 링크</h1>
		<a class="btn btn-info mt-3" href="/lesson02/quiz02_1.jsp?type=time">현재 시간 확인</a>
		<a class="btn btn-success mt-3" href="/lesson02/quiz02_1.jsp?type=date">현재 날짜 확인</a>
		<!-- 어떤걸 누르냐에 따라 다른 값을 줘야하기 때문에 /lesson02/quiz02_1.jsp 다음에 ?key(동일값)=value(시간/날짜별 다른 값) -->
	</div>
</body>
</html>