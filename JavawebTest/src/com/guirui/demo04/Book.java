package com.guirui.demo04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Book {
	private static final String forname="com.mysql.cj.jdbc.Driver";
	private static final String url="jdbc:mysql://localhost:3306/customer?serverTimezone=UTC";
	private static final String username="root";
	private static final String password="654321";
	public static final int PAGE_SIZE=3;
	String bookID;
	String bookName;
	String publishing_House;
	String author;
	int price;
	public Book(){}
	
	/**
	 * 建立与MySQL数据库的连接
	 * @return返回与数据库的连接对象的引用
	 */
	public Connection getConnection(){
		Connection con = null;
		try {
			Class.forName(forname);
			con=DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	/**
	 * 
	 * @param page 需要查询的页码
	 * @return 返回page页对应的数据
	 */
	public List<Book> findAll(int page) {
		List<Book> list=new ArrayList<Book>();
		String sql="select * from book order by bid limit ?,?";
		Connection conn=this.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, (page-1)*Book.PAGE_SIZE);
			ps.setInt(2, Book.PAGE_SIZE);
			rs=ps.executeQuery();
			while(rs.next()) {
				Book book=new Book();
				book.setBookID(rs.getString("bid"));
				book.setBookName(rs.getString("bname"));
				book.setPublishing_House(rs.getString("bpublishinghouse"));
				book.setAuthor(rs.getString("bauthor"));
				book.setPrice(rs.getInt("bprice"));
				list.add(book);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 查询customer数据库的book表的记录数
	 * @return 返回数据库中book表的总记录数
	 */
	
	public int findCount() { 
		int count=0;
		String sql="select count(*) from book";
		Connection conn=this.getConnection();
		Statement st=null;
		ResultSet rs=null;
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next()) {
				count=rs.getInt(1);
			}
			rs.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	
	public String getBookID() {
		return bookID;
	}
	public void setBookID(String bookID) {
		this.bookID = bookID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getPublishing_House() {
		return publishing_House;
	}
	public void setPublishing_House(String publishing_House) {
		this.publishing_House = publishing_House;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
