<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List,com.guirui.demo02.TestDept" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2页面</title>
	<style type="text/css">
		#table{
			border:1px solid black;
			width:600px;
			height:200px;
			background-color:#87c4ed;
			position: absolute;
			top:50%;
			left:50%;
			transform:translate(-50%,-50%);
		}
	</style>
</head>
<body>
	<table id="table">
		<tr>
			<th>DEPTNO</th>
			<th>DNAME</th>
			<th>LOC</th>
		</tr>
		<%
			@SuppressWarnings("unchecked")
			List<TestDept> list=(List<TestDept>)request.getAttribute("list");
				for(TestDept t:list){
		%>
		<tr>
			<td><%=t.getDeptno() %></td>
			<td><%=t.getDname() %></td>
			<td><%=t.getLoc() %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>