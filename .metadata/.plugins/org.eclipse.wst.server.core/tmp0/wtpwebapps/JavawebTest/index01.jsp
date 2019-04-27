<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.text.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>我的个人主页</title>
</head>
<body>
	现在服务器的时间是：
	<font color="red">
	<%
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		out.println(format.format(new Date()));
	%>
	</font>
</body>
</html>