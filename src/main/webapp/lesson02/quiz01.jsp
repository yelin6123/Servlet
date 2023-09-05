<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
<%-- 1. 1부터 n까지의 합계를 구하는 함수 --%>

<%!
	public int getSum(int n) {
		int sum = 0;
		for(int i = 1; i <= n; i++) {
			sum+=i;
		}
		return sum;
	}
%>
<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>

<%-- 2. scriptlet<% %>문법을 사용해서 주어진 점수들의 평균 구하기 --%>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sumScores = 0;	
	for (int i = 0; i < scores.length; i++) {
		sumScores += scores[i];
	}
	double average = (double) sumScores/scores.length;
%>
	<h2>평균 점수는 <%= average %>입니다.</h2>

<%-- 3. 아래 채점표로 시험점수가 몇점인지 구하세요.  --%> 
<% 
	List<String> scoreList 
	= Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int sum = 0;
	for(int i = 0; i < scoreList.size(); i++) {
		if(scoreList.get(i).equals("O")) {
			//sum += 10;
			sum += 100/scoreList.size();
		} 
	}
%>
	<h2>채점 결과는 <%= sum %>점 입니다.</h2>
 
<%-- 4. 나이구하기 주어진 생년월일을 가진 사람의 나이를 구하세요. --%>
<%
	String birthDay = "20010820";
	String year = birthDay.substring(0,4);
	//out.print(year);
	int age = 2023-Integer.valueOf(year);
	
%>
<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2> 
</body>
</html>