package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	//필드
	//DB접속 정보
	private static MysqlService mysqlService = null;
	
	private String url = "jdbc:mysql://localhost:3306/test_230619"; //도메인 뒤쪽에 접속할 데이터베이스명까지 넣는다. (DB서버 주소) 
	private String id = "root";
	private String password ="Wlpg4138^^";
	
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	//메소드
	
	//객체를 만드는 방법
	//Singleton 패턴 : MysqlService라는 객체가 단 한번만 생성되도록 하는 디자인 패턴 (DB 연결을 여러 객체에서 하지 않도록 관리)
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	//DB연결
	public void connect() {
		try {
			//1. 드라이버 메모리에 로딩 (연결 접속하는걸 메모리에 올려둔다)
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			//2.DB Connection 
			conn = DriverManager.getConnection(url, id, password);
			
			//3. statement : DB와 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//DB연결 해제
	public void disconnect() {
		try {
			//연결해제
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//쿼리문 수행 - Read(select)
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	//쿼리문 수행 - Create, Update, Delete (insert, update, delete)
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
	
}




