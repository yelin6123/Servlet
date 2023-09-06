<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	//animal 강아지 or 고양이
	String animal = request.getParameter("animal");	
	//checkedbox
	String fruit = request.getParameter("fruit");
	//food 선택항목 값이 여러개 일때
	String[] foodArr = request.getParameterValues("food");
%>

	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>선호하는 과일</th>
			<td><%= fruit %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
				<%
					if(foodArr != null) {
						String result = ""; 
						//null로 하게되면 method를 쓸 수 없음
						//선택항목이 여러개라 "" + "" 이런식으로 이어붙이기 하려고 " " 씀
						for(String food : foodArr) {
							result += food + ",";
						}
						//마지막 , 제거
						//0, result 길이 - 1 => substring
						result = result.substring(0, result.length()-1);
						out.print(result);
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>




