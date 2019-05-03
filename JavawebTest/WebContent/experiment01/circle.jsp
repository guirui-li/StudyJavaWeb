<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
		int r=Integer.valueOf(request.getParameter("r"));
	%>
	圆的半径是：<%= r %>
	<br>
	圆的面积是：<%= Math.PI*r*r %>
	<br>