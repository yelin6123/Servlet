package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override // 반드시 붙여야 함 *extends를 까먹을때 오류 알려줌 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { //request response 뒤집어쓰면 오류남
		
		//한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		//날짜 
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		out.println("안녕");		
		out.println(now);		
		
		// fomatter
		// 2023-08-28 오후 21:40:30
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		out.println(sdf.format(now));
		
	}
}

 