<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.guirui.demo01.TableBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result页面</title>
</head>
<body>
	<%
		TableBean bean=(TableBean)request.getAttribute("table");
	%>
	<%=bean.getNumber1() %>
	<%=bean.getSelect() %>
	<%=bean.getNumber2() %>
	=
	<%=bean.getSum() %>
</body>
</html>