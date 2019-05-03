<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String str=request.getParameter("boy");
		if(str==null){
			str="0";
		}
		int guessNumber=Integer.parseInt(str);
		Integer integer=(Integer)session.getAttribute("save");
		int realNumber=integer.intValue();
		if(guessNumber==realNumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n++;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("success1.jsp");
		}else if(guessNumber>realNumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n++;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("large.jsp");
		}else if(guessNumber<realNumber){
			int n=((Integer)session.getAttribute("count")).intValue();
			n++;
			session.setAttribute("count", new Integer(n));
			response.sendRedirect("small.jsp");
		}
	%>