<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.guirui.demo01.TableBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result页面</title>
	<style type="text/css">
		#div{
			border:1px solid black;
			width:430px;
			height:80px;
			background-color:#87c4ed;
			position: absolute;
			top:50%;
			left:50%;
			transform:translate(-50%,-50%);
		}
	</style>
</head>
<body>
	<div id="div">
	<%
		TableBean bean=(TableBean)request.getAttribute("table");
	%>
	<%=bean.getNumber1() %>
	<%=bean.getSelect() %>
	<%=bean.getNumber2() %>
	=
	<%=bean.getSum() %>
	</div>
</body>
</html>