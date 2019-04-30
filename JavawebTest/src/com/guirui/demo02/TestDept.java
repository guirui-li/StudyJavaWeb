package com.guirui.demo02;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TestDept {
	int deptno;
	String dname;
	String loc;
	private Connection con=null;
	private Statement st=null;
	private ResultSet rs=null;
	public TestDept() {}
	public TestDept(int deptno, String dname, String loc) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}

	/*
	 * 连接数据库
	 * 返回连接
	 */
	public Connection getConnectionss() {
		try {
			Class.forName("com.mysql.jdbc.Driver");	
			String url="jdbc:mysql://localhost:3306/test1?serverTimezone=UTC";
			String username="root";
			String password="654321";
			con=DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public List<TestDept> findAll(){
		List<TestDept> list=new ArrayList<TestDept>();
		con=getConnectionss();
		String sql="select * from dept";
		try {
			st = con.createStatement();
			rs= st.executeQuery(sql);
			while(rs.next()) {
				TestDept t=new TestDept();
				t.setDeptno(rs.getInt("DEPTNO"));
				t.setDname(rs.getString("DNAME"));
				t.setLoc(rs.getString("LOC"));
				list.add(t);
			}
			rs.close();
			con.close();
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}
	
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
}
