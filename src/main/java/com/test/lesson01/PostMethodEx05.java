package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글깨짐방지 + HTML 태그
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		//Request Params
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블로 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>회원정보</title></head><body>");
		out.print("<table border=\"1\">");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
		
		//한글깨짐이 발생한 경우 => post 방식
		//request / response 중 어느시점에서 발생되었는지 디버그 모드로 확인
		//filter 를 사용해서 한글 인코딩 해줌
		
	}
}
