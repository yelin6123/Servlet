<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script></head>

<head>
<meta charset="UTF-8">
<title>BIM 입력</title>
</head>
<body>
	<div class="container">
		<h1>체격 조건 입력</h1>
		<form method="get" action="/lesson02/quiz03_1.jsp">
			<div class="d-flex align-items-end ">
				<input type="text" class="form-coutrol col-2" name="height" placeholder="키를 입력하세요.">
				<span>cm</span>
				<input type="text" class="form-coutrol col-2 ml-3" name="weight" placeholder="몸무게를 입력하세요.">
				<span>kg</span>
				<input type="submit" class="btn btn-info ml-3" value="계산">
			</div>
		</form>
	</div>
</body>
</html>