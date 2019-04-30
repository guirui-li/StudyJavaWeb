package com.guirui.demo04;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FenServlet
 */
@WebServlet("/FenServlet")
public class FenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currPage=1;      							//当前页数
		if(request.getParameter("page")!=null) {        //与当前页码是否相等
			currPage=Integer.parseInt(request.getParameter("page"));
		}
		Book book=new Book();
		List<Book> list=book.findAll(currPage);        //得到当前页码对应的数据库数据
		request.setAttribute("list", list);
		int pages;           				//总页数
		int count=book.findCount();         //总记录数
		if(count%Book.PAGE_SIZE==0) {       //对总页数赋值
			pages=count/Book.PAGE_SIZE;
		}else {
			pages=count/Book.PAGE_SIZE+1;
		}
		request.setAttribute("currPage", currPage);
		request.setAttribute("pages", pages);
		StringBuffer sb=new StringBuffer();
		sb.append("<a href='/JavawebTest/FenServlet?page="+1+"'>"+"第一页"+"</a>");
		sb.append(" ");
		if(currPage==1) {
			sb.append("<a href='/JavawebTest/FenServlet?page="+1+"'>"+"上一页"+"</a>");
			sb.append(" ");
		}else {
			sb.append("<a href='/JavawebTest/FenServlet?page="+(currPage-1)+"'>"+"上一页"+"</a>");
			sb.append(" ");
		}
		for(int i=1;i<=pages;i++) {
			if(i==currPage) {
				sb.append("<a href='/JavawebTest/FenServlet?page="+i+"' id='a'>"+i+"</a>");
			}else {
				sb.append("<a href='/JavawebTest/FenServlet?page="+i+"'>"+i+"</a>");
			}
			sb.append(" ");
		}
		if(currPage==pages) {
			sb.append("<a href='/JavawebTest/FenServlet?page="+pages+"'>"+"下一页"+"</a>");
			sb.append(" ");
		}else {
			sb.append("<a href='/JavawebTest/FenServlet?page="+(currPage+1)+"'>"+"下一页"+"</a>");
			sb.append(" ");
		}
		sb.append("<a href='/JavawebTest/FenServlet?page="+pages+"'>"+"最后一页"+"</a>");
		sb.append(" ");
		request.setAttribute("bar", sb.toString());
		request.getRequestDispatcher("/experiment08/loginSuccess.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
